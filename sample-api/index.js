const express = require("express");
const https = require('https');

const app = express();

app.get("/", function (req, res) {
  res.send("hello world!");
});

app.get("/pt", function (req, res) {
  res.send("olá mundo!");
});

app.listen(3000, () => console.log("is server up on port 3000"));