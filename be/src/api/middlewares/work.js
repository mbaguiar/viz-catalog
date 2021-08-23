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

module.exports = {
    getWork,
    getWorkCharacteristics,
};
