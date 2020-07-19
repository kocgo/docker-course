import React from "react";
import { render } from "@testing-library/react";
import App from "./App";

test("renders You are a bird link", () => {
  const { getByText } = render(<App />);
  const linkElement = getByText(/You are a bird/i);
  expect(linkElement).toBeInTheDocument();
});
