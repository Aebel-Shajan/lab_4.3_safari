DROP TABLE IF EXISTS assigniment ;

DROP TABLE IF EXISTS animal ;

DROP TABLE IF EXISTS enclosure ;

DROP TABLE IF EXISTS staff ;

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE enclosure (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintainance BOOLEAN
);

CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    enclosureId INT REFERENCES enclosure(id),
    name VARCHAR(255),
    type VARCHAR(255),
    age INT
);

CREATE TABLE assigniment (
    id SERIAL PRIMARY KEY,
    enclosureId INT REFERENCES enclosure(id),
    employeeId INT REFERENCES staff(id),
    day VARCHAR(255)
);

-- Staff
INSERT INTO
    staff (name, employeeNumber)
VALUES
    ('Colin', 1001);

INSERT INTO
    staff (name, employeeNumber)
VALUES
    ('Zsolts', 1002);

INSERT INTO
    staff (name, employeeNumber)
VALUES
    ('Anna', 1003);

INSERT INTO
    staff (name, employeeNumber)
VALUES
    ('Phil', 1004);