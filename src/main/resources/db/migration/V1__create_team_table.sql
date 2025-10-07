CREATE TABLE team
(
    id                  BIGINT IDENTITY(1,1) NOT NULL,
    name                VARCHAR(50) NOT NULL,
    logo_url            VARCHAR(255),
    creation_date       DATE NOT NULL,
    training_day        VARCHAR(10),
    training_time       VARCHAR(15),
    training_location   VARCHAR(255),
    category            VARCHAR(10) NOT NULL,
    primary_color       VARCHAR(7)  NOT NULL,
    secondary_color     VARCHAR(7),
    CONSTRAINT pk_team  PRIMARY KEY CLUSTERED (id)
);

INSERT INTO team (name, logo_url, creation_date, training_day, training_time, training_location, category, primary_color, secondary_color)
VALUES ('Teen Spirit', 'https://img.daisyui.com/images/profile/demo/batperson@192.webp', '2018-03-16', 'Sábado', '13:45 - 16:00', 'Caquizal', 'MIXED', '#f1af09', '#000000');