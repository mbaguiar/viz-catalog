const getWorks = require("./works");
const { getWork, createWork } = require("./work");
const useExpressValidators = require("./errorHandler");

module.exports = {
    getWorks,
    getWork,
    createWork,
    useExpressValidators,
};
