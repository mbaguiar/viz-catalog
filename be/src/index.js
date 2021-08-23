const express = require("express");
const cors = require("cors");
const router = require("./api");

const { PORT } = require("./config");

const port = PORT || 3001;
const app = express();

app.use(cors());
app.use(express.json());
app.use(router);

// Health check endpoint
app.get("/", (_, res) => res.status(200).json({ online: true }));

app.get("/test", (req, res) => res.send("Hi"));

// Default error handler
app.use((err, _req, res, _next) => {
    // eslint-disable-next-line no-console
    console.error(err);
    res.status(500).send();
});

app.listen(port, () =>
    // eslint-disable-next-line no-console
    console.log(`Started listening on port ${port}`),
);
