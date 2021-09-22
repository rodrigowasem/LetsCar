CREATE DATABASE LetsCar;

USE LetsCar;

CREATE TABLE Cliente(
	Id INT IDENTITY NOT NULL,
	Email VARCHAR (256) NOT NULL UNIQUE,
	Nome VARCHAR (50) NOT NULL,
	Sobrenome VARCHAR (100) NOT NULL,
	CONSTRAINT PK_Cliente PRIMARY KEY(Id)
);

CREATE TABLE Usuario(
	Id INT IDENTITY NOT NULL,
	ClienteId INT NOT NULL UNIQUE,
	Senha VARCHAR (8) NOT NULL,
	DataNasc DATETIME NOT NULL,
	CONSTRAINT PK_Usuario PRIMARY KEY(Id),
	CONSTRAINT FK_Usuario_Cliente
		FOREIGN KEY (ClienteId)
		REFERENCES Cliente(Id)
);

CREATE TABLE Adicional(
	Id INT IDENTITY NOT NULL,
	Descricao VARCHAR (30) NOT NULL UNIQUE,
	CONSTRAINT PK_Adicional PRIMARY KEY(Id)
);

CREATE TABLE Cor(
	Id INT IDENTITY NOT NULL,
	Nome VARCHAR (30) NOT NULL UNIQUE,
	CONSTRAINT PK_Cor PRIMARY KEY(Id)
);

CREATE TABLE Marca(
	Id INT IDENTITY NOT NULL,
	Nome VARCHAR (30) NOT NULL UNIQUE,
	CONSTRAINT PK_Marca PRIMARY KEY(Id)
);

CREATE TABLE Modelo(
	Id INT IDENTITY NOT NULL,
	Nome VARCHAR (30) NOT NULL,
	MarcaId INT NOT NULL,
	CONSTRAINT PK_Modelo PRIMARY KEY(Id),
	CONSTRAINT FK_Modelo_Marca
		FOREIGN KEY (MarcaId)
		REFERENCES Marca(Id),
	CONSTRAINT UC_Modelo UNIQUE (Nome,MarcaId)
);

CREATE TABLE Carro(
	Id INT IDENTITY NOT NULL,
	ModeloId INT NOT NULL,
	CorId INT NOT NULL,
	Ano INT NOT NULL,
	Valor DECIMAL(16,2) NOT NULL,
	CONSTRAINT PK_Carro PRIMARY KEY(Id),
	CONSTRAINT FK_Carro_Modelo
		FOREIGN KEY (ModeloId)
		REFERENCES Modelo(Id),
	CONSTRAINT FK_Carro_Cor
		FOREIGN KEY (CorId)
		REFERENCES Cor(Id)
);

CREATE TABLE Adicional_Carro(
	Id INT IDENTITY NOT NULL,
	AdicionalId INT NOT NULL,
	CarroId INT NOT NULL,
	CONSTRAINT PK_Adicional_Carro PRIMARY KEY(Id),
	CONSTRAINT FK_Adicional_Carro_Adicional
		FOREIGN KEY (AdicionalId)
		REFERENCES Adicional(Id),
	CONSTRAINT FK_Adicional_Carro_Carro
		FOREIGN KEY (CarroId)
		REFERENCES Carro(Id),
	CONSTRAINT UC_Adicional_Carro UNIQUE (AdicionalId,CarroId)
);


CREATE TABLE Favorito(
	Id INT IDENTITY NOT NULL,
	UsuarioId INT NOT NULL,
	CarroId INT NOT NULL,
	CONSTRAINT PK_Favorito PRIMARY KEY(Id),
	CONSTRAINT FK_Favorito_Usuario
		FOREIGN KEY (UsuarioId)
		REFERENCES Usuario(Id),
	CONSTRAINT FK_Favorito_Carro
		FOREIGN KEY (CarroId)
		REFERENCES Carro(Id),
	CONSTRAINT UC_Favorito UNIQUE (UsuarioId,CarroId)
);

CREATE TABLE Modalidade_Pag(
	Id INT IDENTITY NOT NULL,
	Nome VARCHAR (30) NOT NULL UNIQUE,
	CONSTRAINT PK_Modalidade_Pag PRIMARY KEY(Id)
);

CREATE TABLE Modalidade_Pag_Carro(
	Id INT IDENTITY NOT NULL,
	CarroId INT NOT NULL,
	ModalidadePagId INT NOT NULL,
	CONSTRAINT PK_Modalidade_Pag_Carro PRIMARY KEY(Id),
	CONSTRAINT FK_Modalidade_Pag_Carro_Carro
		FOREIGN KEY (CarroId)
		REFERENCES Carro(Id),
	CONSTRAINT FK_Modalidade_Pag_Carro_Modalidade_Pag
		FOREIGN KEY (ModalidadePagId)
		REFERENCES Modalidade_Pag(Id),
	CONSTRAINT UC_Modalidade_Pag_Carro UNIQUE (CarroId,ModalidadePagId)
);

CREATE TABLE Contato(
	Id INT IDENTITY NOT NULL,
	CarroId INT NOT NULL,
	ClienteId INT NOT NULL,
	Mensagem VARCHAR(500),
	CONSTRAINT PK_Contato PRIMARY KEY(Id),
	CONSTRAINT FK_Contato_Carro
		FOREIGN KEY (CarroId)
		REFERENCES Carro(Id),
	CONSTRAINT FK_Contato_Cliente
		FOREIGN KEY (ClienteId)
		REFERENCES Cliente(Id)
);



drop table Marca;
drop table Adicional;
drop table Adicional_Carro;
drop table Carro;
drop table Cliente;
drop table Cor;
drop table Modelo;
drop table Usuario;
drop table Favorito;
drop table Modalidade_Pag;
drop table Modalidade_Pag_Carro;
drop table Contato;
