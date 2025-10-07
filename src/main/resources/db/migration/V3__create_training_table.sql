CREATE TABLE training
(
    id                  BIGINT IDENTITY(1,1) NOT NULL,
    date                DATE NOT NULL,
    start_time          TIME,
    duration_minutes    INTEGER,
    location            VARCHAR(255),
    description         VARCHAR(MAX),
    team_id             BIGINT NOT NULL,
    CONSTRAINT pk_training PRIMARY KEY CLUSTERED (id),
    CONSTRAINT FK_training_team FOREIGN KEY (team_id) REFERENCES team (id)
);