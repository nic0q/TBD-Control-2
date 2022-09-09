-------------------------------------------------------
-- Crear VoluntariadoDB
-- Database: VoluntariadoDB

DROP DATABASE IF EXISTS "VoluntariadoDB";

CREATE DATABASE "VoluntariadoDB"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Chile.1252'
    LC_CTYPE = 'Spanish_Chile.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
-------------------------------------------------------
--Table "Voluntary"
-------------------------------------------------------
CREATE TABLE IF NOT EXISTS "Voluntary" (
  "id_voluntary" SERIAL,
  "name" VARCHAR(45) NOT NULL,
  "inventory" VARCHAR(45) NOT NULL,
  "health" INT NOT NULL, 
  "avalaible" boolean NOT NULL,
  PRIMARY KEY ("id_voluntary"));