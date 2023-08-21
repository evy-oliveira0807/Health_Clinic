--DQL

USE [Projeto Health Clinic]

SELECT 
Consulta.DataConsulta AS [Data da Consulta],
Consulta.HorarioConsulta AS [Horario da Consulta],
Clinica.NomeFantasia As [Nome da Clinica],
Paciente.NomePaciente AS [Nome do Paciente],
Medico.NomeMedico AS [Nome do Medico],
Especialidade.DescricaoEspecialidade [Especialidade do Medico],
Comentario.DescricaoComentario AS [Comentario do Paciente]

FROM Clinica

 INNER JOIN TiposDeUsuario
  ON TiposDeUsuario.IdTiposDeUsuario = TiposDeUsuario.IdTiposDeUsuario

  INNER JOIN Usuario
  ON Usuario.IdUsuario = Usuario.IdUsuario

  INNER JOIN Paciente
  ON Paciente.IdPaciente = Paciente.IdPaciente

   INNER JOIN Consulta
	ON Consulta.IdConsulta = Consulta.IdConsulta


 INNER JOIN Medico
 ON Medico.IdMedico = Medico.IdMedico

 INNER JOIN Especialidade
 ON Especialidade.IdEspecialidade = Especialidade.IdEspecialidade

 INNER JOIN Comentario
 ON Comentario.IdComentario = Comentario.IdComentario



