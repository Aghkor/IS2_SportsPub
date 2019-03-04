create database Sport_Pub;
use Sport_Pub;
create table Usuario(
	IDU INTEGER primary key,
	Nombre VARCHAR(30) NOT NULL,
	Apellido VARCHAR(30) NOT NULL,
	Edad INTEGER NOT NULL,
	genero VARCHAR(40) NOT NULL,
	Email VARCHAR(60) NOT NULL,
	Celular INTEGER NOT NULL,
	Usuario VARCHAR(60) NOT NULL,
	Contraseña VARBINARY(60) NOT NULL
);
create table Usuario(
	IDU INTEGER primary key,
	Nombre VARCHAR(30) NOT NULL,
	Apellido VARCHAR(30) NOT NULL,
	Edad INTEGER NOT NULL,
	genero VARCHAR(40) NOT NULL,
	Fecha DATE,
	Email VARCHAR(60) NOT NULL,
	Celular INTEGER NOT NULL,
	Usuario VARCHAR(60) NOT NULL,
	Contraseña VARCHAR(60) NOT NULL
);
create table Equipo(
	IDE INTEGER primary key NOT NULL,
	Nombre VARCHAR(100)  NOT NULL,
	Fecha_Creacion INTEGER NOT NULL,
	Lider_Equipo VARCHAR(69) NOT NULL,
	Cantidad_de_jugador INTEGER NOT NULL
);
create table Usuario_Equipo(
	IDUE INTEGER PRIMARY KEY,
	IDU INTEGER  REFERENCES Usuario(IDU),
	IDE INTEGER REFERENCES Equipo(IDE)
);

create table Encuentro(
	IDP int primary key ,
	Equipo1 VARCHAR(80) NOT NULL,
	Equipo2 VARCHAR(80) NOT NULL,
	IDE1 INTEGER refereNces Equipo(IDE) NOT NULL ,
	IDE2 INTEGER refereNces Equipo(IDE) NOT NULL	
);
create table Comentario(
	IDC INTEGER primary key NOT NULL,
	Comentarios VARCHAR(60) NOT NULL
);

create table ValorizacionJugador(
	IDVJ INTEGER primary key,
	Valorizacion VARCHAR(5) NOT NULL,
	IDU INTEGER REFERENCES Usuario (IDU)
);

create table valorizacionEquipo(
	IDVE INTEGER primary key NOT NULL,
	Valorizacion VARCHAR(5) NOT NULL,
	IDE INTEGER REFERENCES Equipo(IDE)
);
create table valorizacionPartido(
	IDVP INTEGER primary key NOT NULL,
	Valorizacion VARCHAR(5) NOT NULL,
	IDP INTEGER REFERENCES Encuentro(IDP)
);
create table Comentario_Usuario(
	IDCU INTEGER PRIMARY KEY NOT NULL,
	IDU INTEGER  REFERENCES Usuario(IDU),
        IDC INTEGER REFERENCES Comentario(IDC)
);
create table Comentario_equipo(
        IDCE INTEGER PRIMARY KEY NOT NULL,
	IDE INTEGER  REFERENCES Equipo(IDE),
        IDC INTEGER REFERENCES Comentario(IDC)
);

create table Comentario_Encuentro(
	IDCU INTEGER PRIMARY KEY NOT NULL,
	IDP INTEGER  REFERENCES Encuentro(IDP),
        IDC INTEGER REFERENCES Comentario(IDC)
);