create database Sport_Pub;
use Sport_Pub;
create table Usuario(
	IDU INTEGER primary key,
	Nombre VARCHAR(30) NOT NULL,
	Apellido VARCHAR(30) NOT NULL,
	Edad INTEGER NOT NULL,
	genero VARCHAR(40) NOT NULL,
	Foto BLOB NOT NULL,
	Email VARCHAR(60) NOT NULL,
	Celular INTEGER NOT NULL,
	Usuario VARCHAR(60) NOT NULL,
	Contraseña VARBINARY(60) NOT NULL
);
create table Equipo(
	IDE INTEGER primary key NOT NULL,
	Nombre VARCHAR(100)  NOT NULL,
	Escudo BLOB,
	Fecha_Creacion INTEGER NOT NULL,
	Lider_Equipo VARCHAR(69) NOT NULL,
	Cantidad_de_jugador INTEGER NOT NULL
);
create table Usuario_Equipo(
	IDU INTEGER FOREIGN KEY REFERENCES Usuario (IDU),
	IDE INTEGER FOREIGN KEY REFERENCES Equipo(IDE)
);
create table Encuentro(
	IDP int primary key ,
	Equipo1 VARCHAR(80) NOT NULL,
	Equipo2 VARCHAR(80) NOT NULL,
	Fecha DATETIME NOT NULL,
	IDE1 INTEGER FOREING KEY refereces Equipos( IDE) NOT NULL ,
	IDE2 INTERGER FOREING KEY refereces Equipos(IDE) NOT NULL	
);
create table Comentario(
	IDC INTEGER primary key NOT NULL,
	Comentarios VARCHAR(60) NOT NULL,
	IDC INTEGER FOREIGN KEY REFERENCES ComentariosUsuario (IDC)
);
create table Comentario_Usuario(
	IDU INTEGER FOREIGN KEY REFERENCES Usuario (IDU),
	IDC INTEGER FOREIGN KEY REFERENCES Comentario(IDC)
);

create table Comentario_equipo(
        IDE INTEGER FOREIGN KEY REFERENCES Equipo (IDE),
	IDC INTEGER FOREIGN KEY REFERENCES Comentario(IDC)


);
create table Comentario_Encuentro(
      IDP INTEGER FOREIGN KEY REFERENCES Partidos (IDP),
      IDC INTEGER FOREIGN KEY REFERENCES Comentario(IDC)
);

create table ValorizacionJugador(
	IDVJ INTEGER primary key,
	Valorizacion VARCHAR(5) NOT NULL,
	IDU INTEGER FOREIGN KEY REFERENCES Usuario (IDU)
);

create table valorizacionEquipo(
	IDVE INTEGER primary key NOT NULL,
	Valorizacion VARCHAR(5) NOT NULL
	IDE INTEGER FOREIGN KEY REFERENCES Equipo(IDE)
);

create table valorizacionEquipo(
	IDVP INTEGER primary key NOT NULL,
	Valorizacion VARCHAR(5) NOT NULL
	IDP INTEGER FOREIGN KEY REFERENCES Partido(IDP)
);