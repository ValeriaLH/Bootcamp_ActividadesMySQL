SELECT * FROM dojos_y_ninjas.dojos;

-- crea tres dojos nuevos
INSERT INTO dojos_y_ninjas.dojos (nombre) VALUES ('Dojo Kun');
INSERT INTO dojos_y_ninjas.dojos (nombre) VALUES ('Casa Kime');
INSERT INTO dojos_y_ninjas.dojos (nombre) VALUES ('Karate Soul');

-- elimina tres dojos que acabas de crear
DELETE FROM dojos_y_ninjas.dojos WHERE id = 1;
DELETE FROM dojos_y_ninjas.dojos WHERE id = 2;
DELETE FROM dojos_y_ninjas.dojos WHERE id = 3;
SELECT * FROM dojos_y_ninjas.dojos;

-- crea tres dojos nuevos
INSERT INTO dojos_y_ninjas.dojos (nombre) VALUES ('Dojo KK');
INSERT INTO dojos_y_ninjas.dojos (nombre) VALUES ('Casa Krum');
INSERT INTO dojos_y_ninjas.dojos (nombre) VALUES ('Karate Griff');
SELECT * FROM dojos_y_ninjas.dojos;

UPDATE dojos_y_ninjas.dojos SET id = 1 WHERE dojos_y_ninjas.dojos.id = 4;
UPDATE dojos_y_ninjas.dojos SET id = 2 WHERE dojos_y_ninjas.dojos.id = 5;
UPDATE dojos_y_ninjas.dojos SET id = 3 WHERE dojos_y_ninjas.dojos.id = 6;
SELECT * FROM dojos_y_ninjas.dojos;


