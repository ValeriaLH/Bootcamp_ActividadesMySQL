SELECT * FROM esquema_libros.libros;

-- crea 5 libros con los siguientes nombres: C Sharp, Java, Python, PHP, Ruby
INSERT INTO esquema_libros.libros (titulo, num_paginas) VALUES ('C Sharp', '256');
INSERT INTO esquema_libros.libros (titulo, num_paginas) VALUES ('Java', '312');
INSERT INTO esquema_libros.libros (titulo, num_paginas) VALUES ('Python', '405');
INSERT INTO esquema_libros.libros (titulo, num_paginas) VALUES ('PHP', '132');
INSERT INTO esquema_libros.libros (titulo, num_paginas) VALUES ('Ruby', '224');
SELECT * FROM esquema_libros.libros;

-- cambia el nombre del libro de C Sharp a C#
UPDATE libros SET titulo = "C#" WHERE title = "C Sharp";




