SELECT * FROM dojos_y_ninjas.ninjas;

-- crea 3 ninjas que pertenezcan al primer dojo
INSERT INTO dojos_y_ninjas.ninjas (nombre, apellido, edad, dojos_id) VALUES ('Lily', 'Pérez', 24, 1);
INSERT INTO dojos_y_ninjas.ninjas (nombre, apellido, edad, dojos_id) VALUES ('Gabriel', 'Pizarro', 16, 1);
INSERT INTO dojos_y_ninjas.ninjas (nombre, apellido, edad, dojos_id) VALUES ('Aníbal', 'Soto', 21, 1);
SELECT * FROM dojos_y_ninjas.ninjas;

-- crea 3 ninjas que pertenezcan al segundo dojo
INSERT INTO dojos_y_ninjas.ninjas (nombre, apellido, edad, dojos_id) VALUES ('Camila', 'Herrera', 14, 2);
INSERT INTO dojos_y_ninjas.ninjas (nombre, apellido, edad, dojos_id) VALUES ('Pilar', 'Morales', 26, 2);
INSERT INTO dojos_y_ninjas.ninjas (nombre, apellido, edad, dojos_id) VALUES ('Esteban', 'Jimenez', 22, 2);
SELECT * FROM dojos_y_ninjas.ninjas;

-- crea 3 ninjas que pertenezcan al tercer dojo
INSERT INTO dojos_y_ninjas.ninjas (nombre, apellido, edad, dojos_id) VALUES ('Carla', 'Gallardo', 15, 3);
INSERT INTO dojos_y_ninjas.ninjas (nombre, apellido, edad, dojos_id) VALUES ('Juan', 'Poblete', 28, 3);
INSERT INTO dojos_y_ninjas.ninjas (nombre, apellido, edad, dojos_id) VALUES ('Eliana', 'Ramirez', 17, 3);
SELECT * FROM dojos_y_ninjas.ninjas;

-- recupera todos los ninjas del primer dojo
SELECT nombre, apellido, edad, dojos_id FROM dojos_y_ninjas.ninjas WHERE dojos_id = 1;

-- recupera todos los ninjas del último dojo
SELECT nombre, apellido, edad, dojos_id FROM dojos_y_ninjas.ninjas WHERE dojos_id = 3;

-- recupera el dojo del último ninja
SELECT nombre, apellido, edad, dojos_id FROM dojos_y_ninjas.ninjas WHERE dojos_id = 2;
