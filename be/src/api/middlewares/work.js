const db = require("../../db/db.js");

const getWorkCharacteristics = async (work, id) => {
    work.singleVisualisations = await db.getSingleVisualisations(id);
    work.setVisualisations = await db.getSetVisualisations(id);
    work.interactiveFeatures = await db.getInteractiveFeature(id);
    work.searchSolutions = await db.getSearchSolutions(id);
    work.evaluations = await db.getEvaluations(id);
    return work;
};

const getWork = async (req, res) => {
    let row = await db.getWork(req.params.id);
    if (row) {
        row = await getWorkCharacteristics(row, req.params.id);
        res.send(row);
    } else {
        res.status(404).send({ message: "Work not found." });
    }
};

const createWork = async (req, res) => {
    const { name, year, description, domain, type } = req.body;
    const newId = await db.insertWork(name, year, description, domain, type);
    if (newId) {
        res.status(201).send({ newId: newId });
    } else {
        res.status(400).send();
    }
};

module.exports = {
    getWork,
    getWorkCharacteristics,
    createWork,
};
