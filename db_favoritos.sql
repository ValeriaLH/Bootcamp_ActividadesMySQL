SELECT * FROM esquema_libros.favoritos;

-- haz que el primer usuario marque como favorito los 2 primeros libros
-- haz que el segundo usuario marque como favorito los primeros 3 libros
-- haz que el tercer usuario marque como favorito los 4 primeros libros
-- haz que el cuarto usuario marque como favorito todos los libros

INSERT INTO esquema_libros.favoritos (usuario_id, libro_id)
VALUES (1,1),(1,2),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(3,4),(4,1),(4,2),(4,3),(4,4),(4,5);
SELECT * FROM esquema_libros.favoritos;

--  recupera todos los usuarios que marcaron como favorito el tercer libro
SELECT usuario_id, libro_id FROM esquema_libros.favoritos WHERE libro_id = 3;

-- elimina el primer usuario de los favoritos del tercer libro
SELECT * FROM esquema_libros.libros
JOIN esquema_libros.favoritos ON libros.id = favoritos.libro_id
JOIN esquema_libros.usuarios ON usuarios.id = favoritos.usuario_id WHERE libros.id = 3;

DELETE FROM esquema_libros.favoritos WHERE libro_id = 3 AND usuario_id = 2;
SELECT * FROM esquema_libros.favoritos;

-- Haz que el quinto usuario marque como favorito el segundo libro
INSERT INTO esquema_libros.favoritos (usuario_id, libro_id) VALUES (5,2);
SELECT * FROM esquema_libros.favoritos;

-- todos los libros que el tercer usuario marcó como favoritos
SELECT * FROM esquema_libros.favoritos WHERE libro_id = 3 ORDER BY usuario_id LIMIT 1;

-- encuentra todos los usuarios que marcaron como favorito el quinto libro
SELECT * FROM esquema_libros.libros
JOIN esquema_libros.favoritos ON libros.id = favoritos.libro_id
JOIN esquema_libros.usuarios ON usuarios.id = favoritos.usuario_id WHERE libros.id = 5;
