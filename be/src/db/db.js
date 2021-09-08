const sqlite3 = require("sqlite3");
const { open } = require("sqlite");

let db;

(async () => {
    // open the database
    db = await open({
        filename: "./src/db/database.db",
        driver: sqlite3.Database,
    });
})();

const getWorks = async () => {
    const result = await db.all("SELECT * FROM Work");
    // console.log(result);
    return result;
};

const getWork = async (id) => {
    const result = await db.get("SELECT * FROM Work WHERE id = $id", {
        $id: id,
    });
    return result;
};

const getSingleVisualisations = async (id) => {
    const result = await db.all(
        // eslint-disable-next-line max-len
        "SELECT type FROM Visualisation, SingleVisualisation WHERE SingleVisualisation.idWork = $id AND SingleVisualisation.idVisualisation = Visualisation.id",
        {
            $id: id,
        });
    return result;
};

const getSetVisualisations = async (id) => {
    const result = await db.all(
        `SELECT type 
        FROM Visualisation, SetVisualisation 
        WHERE SetVisualisation.idWork = $id AND SetVisualisation.idVisualisation = Visualisation.id`,
        {
            $id: id,
        });
    return result;
};

const getInteractiveFeature = async (id) => {
    const result = await db.all(
        `SELECT type 
        FROM InteractiveFeature, InteractiveFeatureWork 
        WHERE InteractiveFeatureWork.idWork = $id 
        AND InteractiveFeatureWork.idFeature = InteractiveFeature.id`,
        {
            $id: id,
        });
    return result;
};

const getSearchSolutions = async (id) => {
    const result = await db.all(
        `SELECT type
        FROM SearchSolution, SearchSolutionWork
        WHERE SearchSolutionWork.idWork = $id
        AND SearchSolutionWork.idSearchSolution = SearchSolution.id`,
        {
            $id: id,
        });
    return result;
};

const getEvaluations = async (id) => {
    const result = await db.all(
        `SELECT Evaluation.type AS kind, EvaluationWork.type, EvaluationWork.numberParticipants
        FROM Evaluation, EvaluationWork
        WHERE EvaluationWork.idWork = $id
        AND EvaluationWork.idEvaluation = Evaluation.id`,
        {
            $id: id,
        });
    return result;
};

const insertWork = async (name, year, description, domain, type) => {
    let newId = null;
    let result = await db.run("INSERT INTO Work (name, year, description, domain, type) VALUES ($name, $year, $description, $domain, $type)", {
        $name: name,
        $year: year,
        $description: description,
        $domain: domain,
        $type: type,
    }, function(error) {
        if (error) {
            console.log(error);
            return;
        } else {
            console.log(this.lastID);
            return;
        }
    });
    return result.lastID;
};

module.exports = {
    db,
    getWorks,
    getWork,
    getSingleVisualisations,
    getSetVisualisations,
    getInteractiveFeature,
    getSearchSolutions,
    getEvaluations,
    insertWork,
};
