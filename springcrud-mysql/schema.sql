-- OPTIONAL: the app creates this automatically (ddl-auto=update).
-- Run manually only if you prefer to create the table yourself.
CREATE DATABASE IF NOT EXISTS cruddb;
USE cruddb;

CREATE TABLE IF NOT EXISTS employees (
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    email      VARCHAR(255) NOT NULL UNIQUE,
    department VARCHAR(255) NOT NULL,
    salary     DOUBLE NOT NULL
);
