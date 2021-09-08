const { validationResult } = require("express-validator");

// Automatically run validators in order to have a standardized error response
const useExpressValidators = (validators) => async (req, res, next) => {
    await Promise.all(validators.map((validator) => validator.run(req)));

    const errors = validationResult(req);
    if (errors.isEmpty()) {
        return next();
    }

    return res
        .status(422)
        .json(errors.array());
};

module.exports = {
    useExpressValidators,
};
