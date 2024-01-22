create schema PreEntrega_1;
use PreEntrega_1;

create table Autor(
	id_aut int not null auto_increment,
    name_aut varchar(50),
    last_name_aut varchar(50),
    ori_aut varchar(50),
    primary key(id_aut)
);

create table Editorial(
	id_ed int not null auto_increment,
    name_ed varchar(50),
    web_site varchar(50),
    ori_ed varchar(50),
	primary key(id_ed)
);

create table Genero(
	id_gen int not null auto_increment,
    genre varchar (50),
    desc_genre varchar (50),
    primary key(id_gen)
);
    
create table Usuario(
	id_user int not null auto_increment,
    first_name varchar (50),
    last_name varchar (50),
    email varchar (50),
    passwordd varchar (50),
	primary key(id_user)
);

create table Libro(
	id_ISBN int not null auto_increment,
    title varchar(50),
    date_pub date,
    id_aut int,
    id_ed int,
    id_gen int,
    primary key(id_ISBN),
    foreign key (id_aut) references Autor (id_aut),
    foreign key (id_ed) references Editorial (id_ed),
    foreign key (id_gen) references Genero (id_gen)
);

create table Lectura(
	id_lec int not null auto_increment,
    statuss varchar(30),
    id_user int,  
    id_ISBN int,
    primary key(id_lec),
    foreign key (id_user) references Usuario (id_user),
    foreign key (id_ISBN) references Libro (id_ISBN)
    );

    