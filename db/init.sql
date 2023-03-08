
/*
Here, we will create our database/schema and table.

Syntax:
Create Database Query: CREATE DATABASE dbname;

Use Database Query: USE dbname

BIGINT: data type for large numbers
UNSIGNED: Positive numbers.
*/

 
CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] patientsdb;

USE patientsdb;

 DROP TABLE IF EXISTS patients; /*the DROP TABLE statement removes one or more tables if they already exist.*/

CREATE TABLE patients (
id          BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, /*if you do not specify unsigned, then bigint will be signed. Unsigned means you cannot insert negative numbers.*/
first_name  VARCHAR(255) DEFAULT NULL,
last_name   VARCHAR(255) DEFAULT NULL,
email       VARCHAR(255) DEFAULT NULL,
phone       VARCHAR(255) DEFAULT NULL,
address     VARCHAR(255) DEFAULT NULL,
diagnosis   VARCHAR(255) DEFAULT NULL,
image_url   VARCHAR(255) DEFAULT NULL,
created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id),
CONSTRAINT UQ_Patients_Email UNIQUE (email) /*specify that the email has to be unique for every patient*/
);

