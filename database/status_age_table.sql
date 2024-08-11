PRAGMA foreign_keys = OFF;
drop table if exists LGA21;
drop table if exists PopulationStatistics_2021;
PRAGMA foreign_keys = ON;

CREATE TABLE LGA21 (
    lga_code21        INTEGER NOT NULL,
    lga_name21        TEXT NOT NULL,
    lga_type21        CHAR (2),
    area_sqkm         DOUBLE,
    latitude          DOUBLE,
    longitude         DOUBLE,
    PRIMARY KEY (lga_code21)
);

CREATE TABLE PopulationStatistics_2021 (
    lga_code21        INTEGER NOT NULL,
    indigenous_status TEXT NOT NULL,
    sex               CHAR (1) NOT NULL,
    age               TEXT NOT NULL,
    count             INTEGER NOT NULL,
    PRIMARY KEY (lga_code21, indigenous_status, sex, age)
    FOREIGN KEY (lga_code21) REFERENCES LGA21(lga_code21)
);

