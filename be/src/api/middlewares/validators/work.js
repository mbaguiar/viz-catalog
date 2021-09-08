const { body, param } = require("express-validator");
const { useExpressValidators } = require("../errorHandler");

const create = useExpressValidators([
    body("name")
        .exists().withMessage("Work name must be provided").bail()
        .isString().withMessage("Work name must be a string"),
    body("year")
        .exists().withMessage("Work year must be provided").bail()
        .isInt().withMessage("Work year must be an int"),
    body("description")
        .exists().withMessage("Work description must be provided").bail()
        .isString().withMessage("Work description must be a string"),
    body("domain")
        .isString().optional({ nullable: true }).withMessage("Work domain must be a string"),
    body("type")
        .exists().withMessage("Work type must be provided").bail()
        .isString().withMessage("Work type must be a string"),
    body("singleVisualisations")
        .isArray().optional({ nullable: true }).withMessage("Work single visualisations must be an array"),
    body("setVisualisations")
        .isArray().optional({ nullable: true }).withMessage("Work set visualisations must be an array"),
    body("interactiveFeatures")
        .isArray().optional({ nullable: true }).withMessage("Work interactive features must be an array"),
    body("evaluations")
        .exists().withMessage("Work evaluations must be provided").bail()
        .isArray({
            min: 1,
        }).withMessage("Work evaluations must be an array"),
]);

const get = useExpressValidators([
    param("id")
        .exists().withMessage("Work id must be provided").bail()
        .isInt().withMessage("Work id must ve an int")
        .toInt(),
]);

module.exports = {
    create,
    get,
};
