const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from Node App on ECS!");
});

app.listen(3000, () => console.log("Server running on port 3000"));
