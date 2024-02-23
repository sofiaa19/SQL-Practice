create schema PreEntrega_1;
use PreEntrega_1;

create table Autores(
	id_autor int not null auto_increment,
    name_autor varchar(50),
    last_name_autor varchar(50),
    ori_autor varchar(50),
    primary key(id_autor)
);

create table Editoriales(
	id_editorial int not null auto_increment,
    name_editorial varchar(50),
    web_site varchar(50),
    ori_editorial varchar(50),
	primary key(id_editorial)
);

create table Generos(
	id_genre int not null auto_increment,
    genre varchar (100),
    desc_genre varchar (100),
    primary key(id_genre)
);
    
create table Usuarios(
	id_user int not null auto_increment,
    first_name varchar (50),
    last_name varchar (50),
    email varchar (50),
    passwordd varchar (50),
	primary key(id_user)
);

create table Libros(
	id_ISBN int not null auto_increment,
    title varchar(100),
    date_publication date,
    id_autor int,
    id_editorial int,
    id_genre int,
    primary key(id_ISBN),
    foreign key (id_autor) references Autores (id_autor),
    foreign key (id_editorial) references Editoriales (id_editorial),
    foreign key (id_genre) references Generos (id_genre)
);


create table Lecturas(
	id_lectura int not null auto_increment,
    statuss varchar(30),
    id_user int,  
    id_ISBN int,
    primary key(id_lectura),
    foreign key (id_user) references Usuarios (id_user),
    foreign key (id_ISBN) references Libros (id_ISBN)
    );


   INSERT INTO Autores (id_autor, name_autor, last_name_autor, ori_autor)
VALUES (1,"Agatha","Christie","edt31"),
(2,"Gabriel","Garcia Marquez","uy456h"),
(3,"Isabel","Allende","mn789ij"),
(4,"Mario","Vargas Llosa","qr012kl"),
(5,"Jorge","Luis Borges","ab345op"),
(6,"Julio","Cortazar","cx678ij"),
(7,"Ernest","Hemingway","mn901st"),
(8,"Harper","Lee","uv234yz"),
(9,"Jane","Austen","ab567cd"),
(10,"William","Shakespeare","kl890ef"),
(11,"Miguel","de Cervantes","mn123op"),
(12,"Charles","Dickens","qr456st"),
(13,"Mark","Twain","ab789cd"),
(14,"George","Orwell","kl012ef"),
(15,"J.R.R.","Tolkien","mn345op"),
(16,"Franz","Kafka","qr678ij"),
(17,"Virginia","Woolf","ab901st"),
(18,"Oscar","Wilde","kl234yz"),
(19,"George","R.R. Martin","mn567cd"),
(20,"Stephen","King","qr890ef"),
(21,"J.K.","Rowling","ab123op"),
(22,"Paulo","Coelho","kl456st"),
(23,"Dan","Brown","mn789ij"),
(24,"E.L.","James","qr012kl"),
(25,"Khaled","Hosseini","ab345op"),
(26,"Margaret","Atwood","cx678ij"),
(27,"Jojo","Moyes","mn901st"),
(28,"Nicholas","Sparks","uv234yz"),
(29,"Elena","Ferrante","ab567cd"),
(30,"Toni","Morrison","kl890ef");

insert into Editoriales (id_editorial, name_editorial, web_site, ori_editorial)
values (1,"Penguin Random House","www.penguinrandomhouse.com","ab12cd"),
(2,"Grupo Editorial Planeta","www.planetadelibros.com","cx678ij"),
(3,"Editorial Anagrama","www.anagrama-ed.es","mn345op"),
(4,"Alfaguara","www.alfaguara.com","qr901st"),
(5,"Siglo XXI Editores","www.sigloxxieditores.com.mx","uv456yz"),
(6,"Taurus","www.tauruslibros.com","ab789cd"),
(7,"Tusquets Editores","www.tusquetseditores.com","kl012ef"),
(8,"Siruela","www.siruela.com","mn345op"),
(9,"Galaxia Gutenberg","www.galaxiagutenberg.com","qr901st"),
(10,"Eterna Cadencia Editora","www.eternacadencia.com.ar","uv456yz"),
(11,"Fondo de Cultura Económica","www.fondodeculturaeconomica.com","ab789cd"),
(12,"Editorial Sudamericana","www.sudamericana.com","kl012ef"),
(13,"Paidos","www.paidos.com","mn345op"),
(14,"Debate","www.debate.com.mx","qr901st"),
(15,"Crítica","www.critica.com.ar","uv456yz"),
(16,"Marea Editorial","www.mareaeditorial.com","ab789cd"),
(17,"Libros del Zorzal","www.librosdelzorzal.com.ar","kl012ef"),
(18,"Katz Editores","www.katzeditores.com","mn345op"),
(19,"Edhasa","www.edhasa.com","qr901st"),
(20,"Adriana Hidalgo Editora","www.adrianahidalgo.com","uv456yz"),
(21,"Eterna Cadencia Editora","www.eternacadencia.com.ar","ab789cd"),
(22,"Penguin Random House Grupo Editorial","www.penguinrandomhouse.com","kl012ef"),
(23,"Editorial Norma","www.editorialnorma.com","mn345op"),
(24,"Montena","www.montena.com","qr901st"),
(25,"SM Ediciones","www.smeditores.com","uv456yz"),
(26,"Océano","www.oceano.com","ab789cd"),
(27,"Editorial Destino","www.editorialdestino.com","kl012ef"),
(28,"RBA Libros","www.rbalibros.com","mn345op"),
(29,"Grijalbo","www.grijalbo.com","qr901st"),
(30,"HarperCollins Ibérica","www.harpercollinsibérica.com","uv456yz");

insert into Generos (id_genre, genre, desc_genre)
values (1, "Terror", "género literario que se define por la sensación que causa: miedo"),
(2, "Ciencia ficción", "género literario que explora mundos imaginarios basados en la ciencia y la tecnología"),
(3, "Fantasía", "género literario que se basa en elementos mágicos y sobrenaturales"),
(4, "Romance", "género literario que se centra en historias de amor y relaciones sentimentales"),
(5, "Misterio", "género literario que se basa en la resolución de un enigma o crimen"),
(6, "Aventura", "género literario que narra historias de acción, viajes y exploración"),
(7, "Comedia", "género literario que busca provocar risa y humor en el lector"),
(8, "Drama", "género literario que explora temas serios y conflictivos"),
(9, "Poesía", "género literario que se caracteriza por la expresión estética del lenguaje"),
(10, "No ficción", "género literario que se basa en hechos reales y no en la imaginación del autor");

insert into Usuarios (id_user, first_name, last_name,  email,  passwordd)
values (1, "Lucia", "Perez", "luci_perez@hotmail.com", "lu234"),
    (2, "Juan", "Gomez", "juan_gomez@hotmail.com", "jg456"),
    (3, "Maria", "Martinez", "maria_martinez@hotmail.com", "mm789"),
    (4, "Carlos", "Rodriguez", "carlos_rodriguez@hotmail.com", "cr123"),
    (5, "Ana", "Lopez", "ana_lopez@hotmail.com", "al567"),
    (6, "Pedro", "Sanchez", "pedro_sanchez@hotmail.com", "ps890"),
    (7, "Laura", "Garcia", "laura_garcia@hotmail.com", "lg234"),
    (8, "Diego", "Fernandez", "diego_fernandez@hotmail.com", "df567"),
    (9, "Sofia", "Diaz", "sofia_diaz@hotmail.com", "sd890"),
    (10, "Alejandro", "Perez", "alejandro_perez@hotmail.com", "ap123"),
    (11, "Valeria", "Rodriguez", "valeria_rodriguez@hotmail.com", "vr456"),
    (12, "Lucas", "Gonzalez", "lucas_gonzalez@hotmail.com", "lg789"),
    (13, "Elena", "Lopez", "elena_lopez@hotmail.com", "el123"),
    (14, "Manuel", "Torres", "manuel_torres@hotmail.com", "mt456"),
    (15, "Marta", "Sanchez", "marta_sanchez@hotmail.com", "ms789"),
    (16, "Pablo", "Fernandez", "pablo_fernandez@hotmail.com", "pf234"),
    (17, "Carmen", "Ruiz", "carmen_ruiz@hotmail.com", "cr567"),
    (18, "Javier", "Martinez", "javier_martinez@hotmail.com", "jm890"),
    (19, "Luisa", "Alvarez", "luisa_alvarez@hotmail.com", "la123"),
    (20, "Raul", "Diaz", "raul_diaz@hotmail.com", "rd456"),
    (21, "Natalia", "Garcia", "natalia_garcia@hotmail.com", "ng789"),
    (22, "Alberto", "Santos", "alberto_santos@hotmail.com", "as234"),
    (23, "Olivia", "Perez", "olivia_perez@hotmail.com", "op567"),
    (24, "Gabriel", "Lopez", "gabriel_lopez@hotmail.com", "gl890"),
    (25, "Isabel", "Gonzalez", "isabel_gonzalez@hotmail.com", "ig123"),
    (26, "Antonio", "Martin", "antonio_martin@hotmail.com", "am456"),
    (27, "Silvia", "Sanchez", "silvia_sanchez@hotmail.com", "ss789"),
    (28, "Ruben", "Jimenez", "ruben_jimenez@hotmail.com", "rj234"),
    (29, "Adriana", "Ramos", "adriana_ramos@hotmail.com", "ar567"),
    (30, "Fernando", "Hernandez", "fernando_hernandez@hotmail.com", "fh890"),
    (31, "Raquel", "Morales", "raquel_morales@hotmail.com", "rm123"),
    (32, "Hugo", "Iglesias", "hugo_iglesias@hotmail.com", "hi456"),
    (33, "Daniela", "Cruz", "daniela_cruz@hotmail.com", "dc789"),
    (34, "Marcos", "Ortega", "marcos_ortega@hotmail.com", "mo234"),
    (35, "Eva", "Romero", "eva_romero@hotmail.com", "er567"),
    (36, "Gonzalo", "Vazquez", "gonzalo_vazquez@hotmail.com", "gv890"),
    (37, "Miriam", "Blanco", "miriam_blanco@hotmail.com", "mb123"),
    (38, "Julio", "Navarro", "julio_navarro@hotmail.com", "jn456"),
    (39, "Irene", "Serrano", "irene_serrano@hotmail.com", "is789"),
    (40, "Roberto", "Molina", "roberto_molina@hotmail.com", "rm234");
    
  insert into Libros (id_ISBN, title, date_publication, id_autor, id_editorial, id_genre)
  values (1, "Los pajaros del parque", "1980-11-21", 5, 12, 7),
(2, "La sombra en la ventana", "1995-06-10", 8, 19, 3),
(3, "El jardín secreto", "1987-09-03", 14, 9, 2),
(4, "El misterio del faro", "1976-04-28", 18, 23, 10),
(5, "La casa en la colina", "1998-12-15", 1, 25, 6),
(6, "El secreto de la isla", "1990-10-17", 28, 3, 4),
(7, "La noche de los susurros", "1972-08-20", 21, 2, 5),
(8, "El tesoro oculto", "1985-11-29", 7, 17, 1),
(9, "El misterio de la torre", "1983-07-12", 11, 14, 3),
(10, "El enigma del viejo reloj", "1978-02-06", 6, 8, 8),
(11, "La puerta al otro lado", "1997-03-30", 29, 1, 2),
(12, "El laberinto de los sueños", "1982-05-24", 3, 5, 6),
(13, "El secreto de la montaña", "1974-09-08", 15, 27, 4),
(14, "La ciudad de los misterios", "1993-11-11", 17, 20, 9),
(15, "El bosque encantado", "1988-07-04", 24, 13, 3),
(16, "La senda de las estrellas", "1970-01-05", 30, 11, 7),
(17, "La cueva de los tesoros", "1979-06-18", 2, 29, 2),
(18, "El río de los susurros", "1996-03-22", 9, 6, 5),
(19, "El castillo en la colina", "1981-12-07", 22, 28, 1),
(20, "El misterio de la mansión", "1971-04-19", 27, 24, 8),
(21, "La sombra del pasado", "1994-08-23", 5, 4, 3),
(22, "El jardín de los enigmas", "1977-10-02", 10, 26, 6),
(23, "La senda del arco iris", "1989-02-14", 13, 15, 10),
(24, "La torre de los secretos", "1986-01-27", 16, 10, 4),
(25, "El susurro del viento", "1973-05-09", 20, 7, 9),
(26, "La isla de los misterios", "1999-07-31", 4, 18, 2),
(27, "El secreto del viejo molino", "1984-09-26", 26, 16, 5),
(28, "El castillo del halcón", "1975-03-13", 12, 21, 1),
(29, "La senda de los sueños", "1992-10-08", 25, 22, 7),
(30, "El misterio del bosque oscuro", "1970-07-03", 19, 30, 8);


 insert into Lecturas (id_lectura, statuss, id_user, id_ISBN)
  values (1, "Leido", 15, 22),
(2, "Quiero leer", 32, 8),
(3, "Leido", 7, 14),
(4, "Leyendo", 24, 6),
(5, "Leido", 19, 29),
(6, "Leyendo", 11, 3),
(7, "Quiero leer", 5, 27),
(8, "Leido", 35, 11),
(9, "Quiero leer", 10, 1),
(10, "Leido", 28, 19),
(11, "Leyendo", 20, 25),
(12, "Quiero leer", 4, 16),
(13, "Leido", 38, 13),
(14, "Leyendo", 2, 23),
(15, "Leido", 16, 7),
(16, "Quiero leer", 31, 5),
(17, "Leido", 9, 18),
(18, "Leyendo", 27, 12),
(19, "Leido", 12, 21),
(20, "Quiero leer", 23, 10);

CREATE VIEW vw_libro_por_gener AS
SELECT
    g.genre,
    COUNT(l.id_ISBN) AS total_libros
FROM libros AS l
INNER JOIN generos AS g ON l.id_genre = g.id_genre
GROUP BY g.genre;

select*from vw_libro_por_gener


CREATE VIEW vw_estado_lectura_libros AS
SELECT 
    l.title,
    COUNT(CASE WHEN lr.statuss = 'Leido' THEN 1 END) AS total_leidos,
    COUNT(CASE WHEN lr.statuss = 'Quiero leer' THEN 1 END) AS total_pendientes,
    COUNT(CASE WHEN lr.statuss = 'Leyendo' THEN 1 END) AS total_leyendo
FROM libros AS l
LEFT JOIN lecturas AS lr ON l.id_ISBN = lr.id_ISBN
GROUP BY l.title;

select*from vw_estado_lectura_libros

CREATE VIEW vw_libro_por_ed AS
SELECT 
    e.name_editorial,
    COUNT(l.id_ISBN) AS total_libros
FROM libros AS l
INNER JOIN editoriales AS e ON l.id_editorial = e.id_editorial
GROUP BY e.name_editorial;

select*from vw_libro_por_ed


CREATE VIEW vw_libros_por_año AS
SELECT title, date_publication
from Libros
where date_publication >= 1990-01-01

CREATE VIEW vw_usuarios_libro_leido AS
SELECT 
    u.first_name,
    u.last_name,
    l.title
FROM usuarios AS u
INNER JOIN lecturas AS lr ON u.id_user = lr.id_user
INNER JOIN libros AS l ON lr.id_ISBN = l.id_ISBN
WHERE lr.statuss = 'Leído';

select*from vw_usuarios_libro_leido

CREATE FUNCTION porcentaje_libros_leidos(id_user INT)
RETURNS FLOAT
AS
BEGIN
  DECLARE total_libros INT;
  DECLARE libros_leidos INT;

  SELECT total_libros = COUNT(*)
  FROM libros;

  SELECT libros_leidos = COUNT(*)
  FROM lecturas
  WHERE id_user = id_user
  AND statuss = 'Leido';

  RETURN CAST(libros_leidos AS FLOAT) / CAST(total_libros AS FLOAT) * 100;
END;

delimiter $$
CREATE FUNCTION total_usuarios(id_user INT) RETURNS INT
no sql
BEGIN
  DECLARE total_usuarios INT;

  SELECT COUNT(*) INTO total_usuarios
  FROM usuarios
  WHERE id_user = id_user;

  RETURN total_usuarios;
END
$$
 
CREATE PROCEDURE sp_ordenar_libros_alfabeticamente
BEGIN
  SELECT title
  FROM libros
  ORDER BY title ASC;
END;