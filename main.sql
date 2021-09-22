--SQLite snippets

CREATE TABLE IF NOT EXISTS supplier (
  SNO TEXT PRIMARY KEY,
  SNAME TEXT,
  STATUS TEXT,
  CITY TEXT
);

INSERT INTO supplier (SNO, SNAME, STATUS, CITY)
VALUES
  ("S1", "Smith", "20", "London"),
  ("S2", "Jones", "10", "Paris"),
  ("S3", "Blake", "30", "Paris"),
  ("S4", "Clark", "20", "London"),
  ("S5", "Adams", "30", "Athens");

SELECT * FROM supplier;

CREATE TABLE IF NOT EXISTS parts (
  PNO TEXT PRIMARY KEY,
  PNAME TEXT,
  COLOR TEXT,
  WEIGHT TEXT,
  CITY TEXT
);

INSERT INTO parts (PNO, PNAME, COLOR, WEIGHT, CITY)
VALUES
  ("P1", "Nut", "Red", "12.0", "London"),
  ("P2", "Bolt", "Green", "17.0", "Paris"),
  ("P3", "Screw", "Blue", "17.0", "Oslo"),
  ("P4", "Screw", "Red", "14.0", "London"),
  ("P5", "Cam", "Blue", "12.0", "Paris"),
  ("P6", "Cog", "Red", "19.0", "London");

SELECT * FROM parts;

INSERT INTO supplier (SNO, CITY, STATUS, SNAME)
VALUES
  ("S6", "Dublin", "20", "Murray");

SELECT * FROM supplier;

DELETE FROM supplier WHERE SNO = "S6";

SELECT * FROM supplier;

--DELETE FROM supplier;

SELECT * FROM supplier;

SELECT SNO,SNAME FROM supplier WHERE SNAME LIKE "%J%";

SELECT CITY FROM parts WHERE CITY LIKE "%O%";