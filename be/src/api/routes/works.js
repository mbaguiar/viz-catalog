const { Router } = require("express");
const { getWorks, getWork } = require("../middlewares/index");

const router = Router();

router.get("/", getWorks);

router.get("/:id", getWork);

module.exports = router;
