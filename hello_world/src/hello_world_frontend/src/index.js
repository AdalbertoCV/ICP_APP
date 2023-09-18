import { hello_world_backend } from "../../declarations/hello_world_backend";

document.querySelector("form").addEventListener("submit", async (e) => {
  e.preventDefault();
  const button = e.target.querySelector("button");

  const a = parseFloat(document.getElementById("a").value);
  const b = parseFloat(document.getElementById("b").value);
  const c = parseFloat(document.getElementById("c").value);

  button.setAttribute("disabled", true);

  const result = await hello_world_backend.solveQuadratic(a, b, c);

  button.removeAttribute("disabled");

  document.getElementById("solutions").innerText = result;

  return false;
});