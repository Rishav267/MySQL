SELECT firstName FROM employees;
SELECT lastName, firstName , jobTitle FROM employees;
SELECT * FROM employees;
CREATE TABLE TableName (TableID INT);
DROP TABLE tablename;
INSERT INTO tablename VALUES (1);
SELECT * FROM tablename;
TRUNCATE tablename;


-- Altering the table --
CREATE TABLE vehicles (
    vehicleId INT,
    year INT NOT NULL,
    make VARCHAR(100) NOT NULL,
    PRIMARY KEY(vehicleId)
);
ALTER TABLE vehicles
ADD model VARCHAR(100) NOT NULL;

DESCRIBE vehicles;
