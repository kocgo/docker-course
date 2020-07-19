# Phase 1 - Build
FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Phase 2 - Serve with nginx
FROM nginx
# Copy build folder from the previous phase into this new container 
# nginx default static serving
COPY --from=builder /app/build /usr/share/nginx/html