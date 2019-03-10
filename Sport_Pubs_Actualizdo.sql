create database Sport_Pub;
use Sport_Pub;
create table Usuario(
	IDU SERIAL primary key,
	Nombre VARCHAR(30) NOT NULL,
	Apellido VARCHAR(30) NOT NULL,
	Edad INTEGER NOT NULL,
	genero VARCHAR(40) NOT NULL,
	Email VARCHAR(60) NOT NULL,
	Celular VARCHAR(10) NOT NULL,
	Usuario VARCHAR(60) NOT NULL,
	Contrasena VARBINARY(60) NOT NULL
);

create table Equipo(
	IDE SERIAL primary key NOT NULL,
	Nombre VARCHAR(100)  NOT NULL,
	Fecha_Creacion INTEGER NOT NULL,
	Lider_Equipo VARCHAR(69) NOT NULL,
	tipo_futbol VARCHAR() NOT NULL,
	Cantidad_de_jugador INTEGER NOT NULL
);
create table Usuario_Equipo(
	IDUE SERIAL PRIMARY KEY,
	IDU INTEGER  REFERENCES Usuario(IDU),
	IDE INTEGER REFERENCES Equipo(IDE)
);

create table Encuentro(
	IDP SERIAL primary key ,
	Equipo1 VARCHAR(80) NOT NULL,
	Equipo2 VARCHAR(80) NOT NULL,
	IDE1 INTEGER refereNces Equipo(IDE) NOT NULL ,
	IDE2 INTEGER refereNces Equipo(IDE) NOT NULL,
	Ubicacion VARCHAR(100) NOT NULL,
	TIPO_DE_FUTBOL VARCHAR(69) NOT NULL,
	TIEMPO_ESPERA NOT NULL	
);
create table Encuentro_Usuario(
	 IDEU SERIAL NOT NULL,
	 IDU INTEGER  REFERENCES Usuario(IDU),
         IDP INTEGER REFERENCES Comentario(IDP)
);
create table Encuentro_Equipo(
	 IDEU SERIAL NOT NULL,
	 IDE INTEGER  REFERENCES Usuario(IDE),
         IDP INTEGER REFERENCES Comentario(IDP)
);
create table Comentario(
	IDC SERIAL primary key NOT NULL,
	Comentarios VARCHAR(60) NOT NULL
);

create table ValorizacionJugador(
	IDVJ SERIAL primary key,
	Valorizacion VARCHAR(5) NOT NULL,
	IDU SERIAL REFERENCES Usuario (IDU)
);

create table valorizacionEquipo(
	IDVE SERIAL primary key NOT NULL,
	Valorizacion VARCHAR(5) NOT NULL,
	IDE SERIAL REFERENCES Equipo(IDE)
);
create table valorizacionPartido(
	IDVP SERIAL primary key NOT NULL,
	Valorizacion VARCHAR(5) NOT NULL,
	IDP SERIAL REFERENCES Encuentro(IDP)
);
create table Comentario_Usuario(
	IDCU SERIAL PRIMARY KEY NOT NULL,
	IDU SERIAL  REFERENCES Usuario(IDU),
        IDC SERIAL REFERENCES Comentario(IDC)
);
create table Comentario_equipo(
        IDCE SERIAL PRIMARY KEY NOT NULL,
	IDE SERIAL  REFERENCES Equipo(IDE),
        IDC SERIAL REFERENCES Comentario(IDC)
);

create table Comentario_Encuentro(
	IDCU SERIAL PRIMARY KEY NOT NULL,
	IDP SERIAL  REFERENCES Encuentro(IDP),
        IDC SERIAL REFERENCES Comentario(IDC)
);
