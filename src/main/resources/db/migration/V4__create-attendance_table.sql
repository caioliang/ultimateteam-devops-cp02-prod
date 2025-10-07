CREATE TABLE attendance
(
    id                  BIGINT IDENTITY(1,1) NOT NULL,
    player_id           BIGINT NOT NULL,
    training_id         BIGINT NOT NULL,
    status              VARCHAR(20) NOT NULL,
    registration_date   DATETIME2,
    justification       VARCHAR(MAX),
    CONSTRAINT pk_attendance PRIMARY KEY CLUSTERED (id),
    CONSTRAINT FK_attendance_player FOREIGN KEY (player_id) REFERENCES player (id),
    CONSTRAINT FK_attendance_training FOREIGN KEY (training_id) REFERENCES training (id),
    CONSTRAINT UK_attendance_player_training UNIQUE (player_id, training_id)
);