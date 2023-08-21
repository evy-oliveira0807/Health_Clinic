--DDL 

CREATE DATABASE [Projeto Health Clinic]
USE [Projeto Health Clinic]


CREATE TABLE Clinica
(
	IdClinica  INT PRIMARY KEY IDENTITY,
	NomeFantasia VARCHAR (50) NOT NULL,
	Endereco VARCHAR (100) NOT NULL, 
	CNPJ VARCHAR (20) NOT NULL,
	HorarioFuncionamento TIME NOT NULL,
	RazaoSocial VARCHAR (100) NOT NULL
)

CREATE TABLE TiposDeUsuario
(
	IdTiposDeUsuario INT PRIMARY KEY IDENTITY,
	TituloTiposUsuario VARCHAR (20) NOT NULL UNIQUE
)

CREATE TABLE Usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTiposDeUsuario INT FOREIGN KEY REFERENCES TiposDeUsuario(IdTiposDeUsuario) NOT NULL,
	Email VARCHAR (50) NOT NULL,
	Senha VARCHAR (50) NOT NULL	
)

CREATE TABLE Paciente
(
	IdPaciente INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	NomePaciente VARCHAR (100) NOT NULL,
	RG VARCHAR (100) NOT NULL,
	CPF VARCHAR (120) NOT NULL,
	DataNascimento VARCHAR (20) NOT NULL,
	Telefone VARCHAR (20) NOT NULL,
	Endereco VARCHAR (100) NOT NULL
)

CREATE TABLE Especialidade
(
	IdEspecialidade INT PRIMARY KEY IDENTITY,
	DescricaoEspecialidade VARCHAR (100) NOT NULL
)

CREATE TABLE Medico
(
	IdMedico INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),
	IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade(IdEspecialidade),
	NomeMedico VARCHAR (50) NOT NULL,
	CRM VARCHAR (50) NOT NULL
)

CREATE TABLE Comentario
(
	IdComentario INT PRIMARY KEY IDENTITY,
	DescricaoComentario VARCHAR (100) NOT NULL,
	Exibe BIT DEFAULT (0)
)

CREATE TABLE Consulta
(
	IdConsulta INT PRIMARY KEY IDENTITY,
	IdPaciente INT FOREIGN KEY REFERENCES Paciente(IdPaciente),
	IdMedico INT FOREIGN KEY REFERENCES Medico(IdMedico),
	DataConsulta DATE NOT NULL,
	HorarioConsulta TIME NOT NULL,
	DescricaoConsulta VARCHAR (100),
	IdComentario INT FOREIGN KEY REFERENCES Comentario(IdComentario)
)








