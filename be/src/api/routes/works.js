const { Router } = require("express");
const { getWorks, getWork } = require("../middlewares/index");
const validators = require("../middlewares/validators/work");

const router = Router();

router.get("/", getWorks);

router.get("/:id", validators.get, getWork);

// router.post("/", validators.create, createWork);

module.exports = router;
