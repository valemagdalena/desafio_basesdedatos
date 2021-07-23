-- Borrar la base de datos
DROP DATABASE posts;

--Crear una base de datos con nombre “Posts”.
CREATE DATABASE posts;

-- Entrar a la base de datos Posts
\c posts;

-- Crear una tabla “post”, con los atributos id, nombre de usuario, fecha de creación, contenido y descripción.
CREATE TABLE posts(
    id INT,
    username  VARCHAR(30),
    created_at DATE,
    contenido VARCHAR(80),
    descripcion VARCHAR,
    PRIMARY KEY (id)
);

-- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos".
INSERT INTO posts(id, username, created_at, contenido, descripcion) VALUES (1,'Pamela', '19-07-2021', 'hola mundo', 'soy un post de Pamela');
INSERT INTO posts(id, username, created_at, contenido, descripcion) VALUES (2,'Pamela', '19-07-2021', 'hola mundo2', 'soy un post de Pamela2');
INSERT INTO posts(id, username, created_at, contenido, descripcion) VALUES (3,'Carlos', '19-07-2021', 'hola mundo de carlos', 'soy un post de Carlos');

--Modificar la tabla post, agregando la columna título.
ALTER TABLE posts
ADD titulo VARCHAR(15);

--Agregar título a las publicaciones ya ingresadas.
UPDATE Posts SET titulo='soy un titulo1' WHERE id=1;
UPDATE Posts SET titulo='soy un titulo2' WHERE id=2;
UPDATE Posts SET titulo='soy un titulo3' WHERE id=3;

--Insertar 2 post para el usuario "Pedro"
INSERT INTO posts(id, username, created_at, contenido, descripcion, titulo) VALUES (4,'Pedro', '19-07-2021', 'hola mundo de Pedro', 'soy un post de Pedro', 'titulo1-P');
INSERT INTO posts(id, username, created_at, contenido, descripcion, titulo) VALUES (5,'Pedro', '19-07-2021', 'hola mundo de Pedro2', 'soy un post2 de Pedro', 'titulo2-P');

-- Eliminar el post de Carlos.
DELETE FROM Posts WHERE username='Carlos';

-- Ingresar un nuevo post para el usuario "Carlos".
INSERT INTO posts(id, username, created_at, contenido, descripcion, titulo) VALUES (3,'Carlos', '19-07-2021', 'hola mundo de carlos', 'soy un post de Carlos', 'Titulo carlos');

--FIN PARTE 1--


--PARTE 2--
-- Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios(
    id INT,
    fecha DATE,
    hora TIME,
    contenido VARCHAR(100),
    FOREIGN KEY (id) REFERENCES posts(id)
);
-- Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos".
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (1, '19-07-2021', '19:30', 'Contenido de Pamela');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (1, '19-07-2021', '19:30', 'Contenido de Pamela2');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (3, '19-07-2021', '19:30', 'Contenido de Carlos');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (3, '19-07-2021', '19:30', 'Contenido de Carlos2');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (3, '19-07-2021', '19:30', 'Contenido de Carlos3');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (3, '19-07-2021', '19:30', 'Contenido de Carlos4');

-- Crear un nuevo post para "Margarita".
INSERT INTO posts(id, username, created_at, contenido, descripcion, titulo) VALUES (6,'Margarita', '19-07-2021', 'hola mundo de Margarita', 'soy un post de Margarita', 'Titulo-M');

-- Ingresar 5 comentarios para el post de Margarita.
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (6, '19-07-2021', '19:30', 'Contenido de Margarita');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (6, '19-07-2021', '19:31', 'Contenido de Margarita2');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (6, '19-07-2021', '19:32', 'Contenido de Margarita3');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (6, '19-07-2021', '19:33', 'Contenido de Margarita4');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (6, '19-07-2021', '19:34', 'Contenido de Margarita5');

--FIN DESAFIO--

SELECT * FROM posts;
SELECT * FROM comentarios;
