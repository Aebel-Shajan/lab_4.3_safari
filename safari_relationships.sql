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
    closedForMaintenance BOOLEAN
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


-- Enclosure
INSERT INTO
    enclosure (name, capacity, closedForMaintenance)
VALUES
    ('Enclosure 1', 23, true);

INSERT INTO
    enclosure (name, capacity, closedForMaintenance)
VALUES
    ('Enclosure 2', 46, false);

-- Animal
INSERT INTO
    animal (enclosureId, name, type, age)
VALUES
    (1, 'Tony', 'Tiger', 12);

INSERT INTO
    animal (enclosureId, name, type, age)
VALUES
    (1, 'Toby', 'Turtle', 300);

INSERT INTO
    animal (enclosureId, name, type, age)
VALUES
    (2, 'Simon', 'Shark', 100);

INSERT INTO
    animal (enclosureId, name, type, age)
VALUES
    (2, 'Whitney', 'Whale', 10);