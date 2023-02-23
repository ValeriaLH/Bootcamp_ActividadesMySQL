SELECT * FROM esquema_amistades.usuarios;
INSERT INTO esquema_amistades.usuarios (nombre, apellido) VALUES ('Amy', 'Giver');
INSERT INTO esquema_amistades.usuarios (nombre, apellido) VALUES ('Eli', 'Byers');
INSERT INTO esquema_amistades.usuarios (nombre, apellido) VALUES ('Marky', 'Mark');
INSERT INTO esquema_amistades.usuarios (nombre, apellido) VALUES ('Big', 'Bird');
INSERT INTO esquema_amistades.usuarios (nombre, apellido) VALUES ('La rana', 'René');
INSERT INTO esquema_amistades.usuarios (nombre, apellido) VALUES ('Will', 'Byers');

-- muestra las relaciones creadas como se muestra en la imagen de arriba
SELECT * FROM esquema_amistades
JOIN esquema_amistades.amistades ON usuarios2.id = amistades.amigo_id;

-- Devuelve todos los usuarios que son amigos del primer usuario, asegúrate de que sus nombres 
-- se muestren en los resultados.
