PRAGMA foreign_keys = on;

DROP TABLE IF EXISTS Work;

CREATE TABLE Work (
    id                  INTEGER PRIMARY KEY,
    name                TEXT,
    year                INTEGER,
    description         TEXT,
    domain              TEXT,
    type                TEXT,
    shortDescription    TEXT,
    authors             TEXT,
    link                TEXT,
    paper               TEXT
);

DROP TABLE IF EXISTS Visualisation;

CREATE TABLE Visualisation (
    id              INTEGER PRIMARY KEY,
    type            TEXT
);

DROP TABLE IF EXISTS InteractiveFeature;

CREATE TABLE InteractiveFeature (
    id              INTEGER PRIMARY KEY,
    type            TEXT
);

DROP TABLE IF EXISTS SearchSolution;

CREATE TABLE SearchSolution (
    id              INTEGER PRIMARY KEY,
    type            TEXT
);

DROP TABLE IF EXISTS Evaluation;

CREATE TABLE Evaluation (
    id              INTEGER PRIMARY KEY,
    type            TEXT
);

DROP TABLE IF EXISTS SingleVisualisation;

CREATE TABLE SingleVisualisation (
    idWork             INTEGER REFERENCES Work,
    idVisualisation    INTEGER REFERENCES Visualisation,
    UNIQUE (idWork, idVisualisation)
);

DROP TABLE IF EXISTS SetVisualisation;

CREATE TABLE SetVisualisation (
    idWork             INTEGER REFERENCES Work,
    idVisualisation    INTEGER REFERENCES Visualisation,
    UNIQUE (idWork, idVisualisation)
);

DROP TABLE IF EXISTS InteractiveFeatureWork;

CREATE TABLE InteractiveFeatureWork (
    idWork             INTEGER REFERENCES Work,
    idFeature          INTEGER REFERENCES InteractiveFeature,
    UNIQUE (idWork, idFeature)
);

DROP TABLE IF EXISTS SearchSolutionWork;

CREATE TABLE SearchSolutionWork (
    idWork              INTEGER REFERENCES Work,
    idSearchSolution    INTEGER REFERENCES SearchSolution,
    UNIQUE (idWork, idSearchSolution)
);

DROP TABLE IF EXISTS EvaluationWork;

CREATE TABLE EvaluationWork (
    idWork              INTEGER REFERENCES Work,
    idEvaluation        INTEGER REFERENCES Evaluation,
    type                TEXT,
    numberParticipants  INTEGER,
    UNIQUE (idWork, idEvaluation)
);

