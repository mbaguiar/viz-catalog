const { Router } = require("express");
const searchRouter = require("./routes/search");
const worksRouter = require("./routes/works");

const app = Router();

app.use("/works", worksRouter);
app.use("/search", searchRouter);

module.exports = app;
