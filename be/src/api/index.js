const { Router } = require("express");
const worksRouter = require("./routes/works");

const app = Router();

app.use("/works", worksRouter);

module.exports = app;
