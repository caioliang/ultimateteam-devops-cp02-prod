CREATE TABLE player
(
    id                  BIGINT IDENTITY(1,1) NOT NULL,
    name                VARCHAR(50),
    birth_date          DATE,
    offensive_function  VARCHAR(11),
    zone_function       VARCHAR(11),
    uniform_number      INTEGER,
    nicknames           VARCHAR(255),
    gender              VARCHAR(10),
    join_date           DATE,
    CONSTRAINT pk_player PRIMARY KEY CLUSTERED (id)
);

CREATE TABLE team_player
(
    team_id    BIGINT NOT NULL,
    player_id  BIGINT NOT NULL,
    CONSTRAINT pk_team_player PRIMARY KEY CLUSTERED (team_id, player_id)
);

ALTER TABLE team_player
    ADD CONSTRAINT FK_teamplayer_player
        FOREIGN KEY (player_id)
            REFERENCES player (id);

ALTER TABLE team_player
    ADD CONSTRAINT FK_teamplayer_team
        FOREIGN KEY (team_id)
            REFERENCES team (id);