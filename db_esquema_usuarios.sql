SELECT * FROM esquema_usuarios.usuarios;

-- Crea tres nuevos usuarios
INSERT INTO `esquema_usuarios`.`usuarios` (`nombre`, `apellido`, `correo electronico`) VALUES ('Elena', 'De Troya', 'elena@codingdojo.com');
INSERT INTO `esquema_usuarios`.`usuarios` (`nombre`, `apellido`, `correo electronico`) VALUES ('Juana', 'De Arco', 'juana@codingdojo.com');
INSERT INTO `esquema_usuarios`.`usuarios` (`nombre`, `apellido`, `correo electronico`) VALUES ('Harry', 'Styles', 'harry@codingdojo.com');

-- Recupera todos los usuarios
SELECT * FROM esquema_usuarios.usuarios;

-- Recupera el primer usuario usando su dirección de correo electrónico
SELECT * FROM esquema_usuarios.usuarios WHERE `esquema_usuarios`.`usuarios`.`correo electronico`= 'elena@codingdojo.com';

-- Recupera el último usuario usando su id
SELECT * FROM esquema_usuarios.usuarios WHERE `esquema_usuarios`.`usuarios`.`id`= 3;

-- cambia el usuario con id=3 para que su apellido sea Panqueques
UPDATE esquema_usuarios.usuarios SET `esquema_usuarios`.`usuarios`.`apellido` = "Panqueques" WHERE `esquema_usuarios`.`usuarios`.`id` = 3;
SELECT * FROM esquema_usuarios.usuarios;

-- Elimina el usuario con id=2 de la base de datos
DELETE FROM esquema_usuarios.usuarios WHERE `esquema_usuarios`.`usuarios`.`id` = 2;
SELECT * FROM esquema_usuarios.usuarios;

-- Obtén todos los usuarios, ordenados por su nombre en orden descendente
SELECT * FROM esquema_usuarios.usuarios ORDER BY nombre DESC;