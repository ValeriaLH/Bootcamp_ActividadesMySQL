SELECT * FROM esquema_amistades.amistades;

-- haz que el usuario 1 sea amigo del usuario 2, 4 y 6 `
INSERT INTO esquema_amistades.amistades (usuario_id, amigo_id) VALUES (1,2),(1,4),(1,6);

-- haz que el usuario 2 sea amigo del usuario 1, 3 y 5
INSERT INTO esquema_amistades.amistades (usuario_id, amigo_id) VALUES (2,1),(2,3),(2,5);

-- haz que el usuario 3 sea amigo del usuario 2 y 5
INSERT INTO esquema_amistades.amistades (usuario_id, amigo_id) VALUES (3,2),(3,5);

-- haz que el usuario 4 sea amigo del usuario 3
INSERT INTO esquema_amistades.amistades (usuario_id, amigo_id) VALUES (4,3);

-- haz que el usuario 5 sea amigo del usuario 1 y 6
INSERT INTO esquema_amistades.amistades (usuario_id, amigo_id) VALUES (5,1),(5,6);

-- haz que el usuario 6 sea amigo del usuario 2 y 3
INSERT INTO esquema_amistades.amistades (usuario_id, amigo_id) VALUES (6,2),(6,3);

-- muestra las relaciones creadas como se muestra en la imagen de arriba
SELECT usuarios.nombre AS nombre, usuarios.apellido AS apellido, usuarios2.nombre AS nombre_amigo, usuarios2.apellido AS apellido_amigo FROM esquema_amistades.usuarios
JOIN esquema_amistades.amistades ON usuarios.id = amistades.usuario_id
LEFT JOIN esquema_amistades.usuarios AS usuarios2 ON usuarios2.id = amistades.amigo_id;

-- Devuelve todos los usuarios que son amigos del primer usuario, asegúrate de que sus nombres se muestren en los resultados.
SELECT usuarios2.nombre AS nombre, usuarios2.apellido AS apellido, usuarios.nombre AS amigo_de FROM esquema_amistades.usuarios
JOIN esquema_amistades.amistades ON usuarios.id = amistades.usuario_id
LEFT JOIN esquema_amistades.usuarios AS usuarios2 ON usuarios2.id = amistades.amigo_id
WHERE usuarios.id = 1;

-- Devuelve el recuento de todas las amistades
SELECT COUNT(*) AS num_de_amistades from esquema_amistades.amistades;

-- averigua quién tiene más amigos y devuelve la cuenta de sus amigos.
SELECT usuario_id, usuarios.nombre, usuarios.apellido, count(usuario_id) AS num_de_amigos FROM esquema_amistades.amistades
JOIN esquema_amistades.usuarios ON usuarios.id = amistades.usuario_id
GROUP BY usuario_id ORDER BY num_de_amigos DESC LIMIT 3;

-- Devuelve los amigos del tercer usuario en orden alfabético
SELECT usuarios2.nombre AS nombre, usuarios2.apellido AS apellido, usuarios.nombre AS amigo_de FROM esquema_amistades.usuarios
JOIN esquema_amistades.amistades ON usuarios.id = amistades.usuario_id
LEFT JOIN esquema_amistades.usuarios AS usuarios2 ON usuarios2.id = amistades.amigo_id
WHERE usuarios.id = 3
ORDER BY nombre;





