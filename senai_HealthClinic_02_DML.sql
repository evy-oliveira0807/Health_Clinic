--DML

USE [Projeto Health Clinic]


INSERT INTO Clinica (NomeFantasia,Endereco,CNPJ,HorarioFuncionamento,RazaoSocial)
VALUES ('Vida Bela','Rua Rafaela Rebelo', '12345678912678','08:30:00','Clínica Médica Nossa Clinica SP')


INSERT INTO TiposDeUsuario (TituloTiposUsuario)
VALUES ('Administrador'),
       ('Medico'),
       ('Pacinte')
      	  
INSERT INTO Usuario ( IdTiposDeUsuario,Email,Senha)
VALUES (1,'Maria@maria.com','maria1567'),
	   (2,'Carlos@carlos.com','carlos598'),
	   (3,'Edu@edu.com','edu482')
	  

INSERT INTO Paciente (IdUsuario,NomePaciente,RG,CPF,DataNascimento,Telefone,Endereco)
VALUES (3,'Eduardo da silva', '12.345.678-9','098.765.432-1','06/02/1987','(11)912346789','Rua Carminha 287')

INSERT INTO  Especialidade (DescricaoEspecialidade)
VALUES ('Clinico Geral'), 
        ('Neurologia'),
		('Pediatria'),
		('Oftamologista'),
		('Dermatologista') 

INSERT INTO Medico (IdUsuario,IdClinica,IdEspecialidade,NomeMedico,CRM)
VALUES (2,1,1,'Carlos Souza','SP 363748379')
     

INSERT INTO Comentario (DescricaoComentario,Exibe)
VALUES ('Otimo Atendimento',1)    

INSERT INTO Consulta (IdPaciente,IdMedico,DataConsulta,HorarioConsulta,DescricaoConsulta,IdComentario)
VALUES (1,1,'25/08/2023','12:30:00','Paciente com dor de cabeça',1)








SELECT * FROM TiposDeUsuario
SELECT * FROM Usuario
SELECT * FROM Clinica
SELECT * FROM Medico
SELECT * FROM Especialidade
SELECT * FROM Consulta
SELECT * FROM Comentario