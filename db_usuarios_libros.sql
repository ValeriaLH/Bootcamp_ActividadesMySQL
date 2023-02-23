SELECT * FROM esquema_libros.usuarios;

-- crea 5 usuarios diferentes: Jane Austen, Emily Dickinson, Fyodor Dostoevsky, William Shakespeare, Lau Tzu
INSERT INTO esquema_libros.usuarios (nombre, apellido) VALUES ('Jane', 'Austen');
INSERT INTO esquema_libros.usuarios (nombre, apellido) VALUES ('Emily', 'Dickinson');
INSERT INTO esquema_libros.usuarios (nombre, apellido) VALUES ('Fyodor', 'Dostoevsky');
INSERT INTO esquema_libros.usuarios (nombre, apellido) VALUES ('William', 'Shakespeare');
INSERT INTO esquema_libros.usuarios (nombre, apellido) VALUES ('Lau', 'Tzu');
SELECT * FROM esquema_libros.usuarios;

-- cambia el nombre del cuarto usuario a Bill
UPDATE usuarios SET nombre = "Bill" WHERE id = 4;
