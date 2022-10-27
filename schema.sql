-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE IF EXISTS vaccinations;
DROP TABLE IF EXISTS vaccinations_per_hundred;
DROP TABLE IF EXISTS region_metadata;
DROP TABLE IF EXISTS region_date_metadata;
DROP TABLE IF EXISTS countries;



CREATE TABLE vaccinations (
    location VARCHAR   NOT NULL,
    iso_code VARCHAR   NOT NULL,
    date VARCHAR   NOT NULL,
    people_vaccinated BIGINT   NOT NULL,
    people_fully_vaccinated BIGINT   NOT NULL,
    total_boosters BIGINT   NOT NULL,
    daily_vaccinations_raw BIGINT NOT NULL
);

CREATE TABLE vaccinations_per_hundred (
    location VARCHAR   NOT NULL,
    iso_code VARCHAR   NOT NULL,
    date VARCHAR NOT NULL,
    people_vaccinated_per_hundred BIGINT   NOT NULL,
    people_fully_vaccinated_per_hundred BIGINT   NOT NULL,
    total_boosters_per_hundred BIGINT   NOT NULL,
    daily_vaccinations_per_million BIGINT   NOT NULL
);

CREATE TABLE region_metadata (
    Country_Region VARCHAR   NOT NULL,
    lat FLOAT   NOT NULL,
    lon FLOAT   NOT NULL,
    continent VARCHAR   NOT NULL,
    population FLOAT   NOT NULL,
    area FLOAT   NOT NULL,
    density FLOAT   NOT NULL
);

CREATE TABLE region_date_metadata (
    Country_Region VARCHAR   NOT NULL,
    date VARCHAR   NOT NULL,
    Recoveries BIGINT   NOT NULL
);

CREATE TABLE countries (
    location VARCHAR  UNIQUE NOT NULL,
    iso_code VARCHAR   UNIQUE NOT NULL,
    CONSTRAINT pk_countries PRIMARY KEY (
        location,iso_code
     )
);

ALTER TABLE vaccinations ADD CONSTRAINT fk_vaccinations_location_iso_code FOREIGN KEY(location, iso_code)
REFERENCES countries (location, iso_code);

ALTER TABLE vaccinations_per_hundred ADD CONSTRAINT fk_vaccinations_per_hundred_location_iso_code FOREIGN KEY(location, iso_code)
REFERENCES countries (location, iso_code);

ALTER TABLE region_metadata ADD CONSTRAINT fk_region_metadata_Country_Region FOREIGN KEY(Country_Region)
REFERENCES countries (location);

ALTER TABLE region_date_metadata ADD CONSTRAINT fk_region_date_metadata_Country_Region FOREIGN KEY(Country_Region)
REFERENCES countries (location);

