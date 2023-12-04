CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends (id, name, birthday)
VALUES (1, "Ororo Munroe",'1940-05-30');

SELECT * FROM friends;

INSERT INTO friends (id, name, birthday)
VALUES(2, "Oliver Beckett", '2001-03-08');

INSERT INTO friends (id, name, birthday)
VALUES (3, "Cole Salmon", "2001-03-27");

UPDATE friends
SET name = "Storm"
WHERE id = 1;

SELECT * FROM friends;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = "storm@codecademy.com"
WHERE id = 1;

UPDATE friends
SET email = "myfriendcolesalmon@gmail.com"
WHERE id = 2;

UPDATE friends
SET email = "myfriendoliverbeckett@gmail.com"
WHERE id = 3;

SELECT * FROM friends;

DELETE FROM friends
WHERE id = 1;

SELECT * FROM friends;