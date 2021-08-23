const db = require("../../db/db.js");
const { getWorkCharacteristics } = require("./work");

const getWorks = async (req, res) => {
    const rows = await db.getWorks();
    const promises = rows.map(async (row, index) => {
        rows[index] = await getWorkCharacteristics(row, row.id);
    });
    await Promise.all(promises);
    res.send(rows);
};

module.exports = getWorks;
