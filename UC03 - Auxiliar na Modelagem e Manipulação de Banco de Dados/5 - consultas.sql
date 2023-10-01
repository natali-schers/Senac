/*Consultar valor e dados gerais das consultas sem convênio*/
SELECT ROUND(AVG(valor), 2) AS valorMedio FROM consulta WHERE idConvenio IS NULL AND dataConsulta LIKE '%2020%';
SELECT * FROM consulta WHERE idConvenio IS NULL AND dataConsulta LIKE '%2020%';

/*Consultar valor e dados gerais das consultas com convênio*/
SELECT ROUND(AVG(valor), 2) AS valorMedio FROM consulta WHERE idConvenio IS NOT NULL AND dataConsulta LIKE '%2020%';
SELECT * FROM consulta WHERE idConvenio IS NOT NULL AND dataConsulta LIKE '%2020%';

/*Consultar internações que duraram mais que o previsto*/
SELECT * FROM internacao WHERE dataSaida > dataSaidaPrevista;

/*Consultar receita da primeira consulta com receita*/
SELECT rct.receita, cnst.idConsulta FROM receita AS rct INNER JOIN consulta AS cnst ON rct.idReceita = cnst.idReceita LIMIT 1;

/*Consultar os dados da consulta de maior e menor valor*/
SELECT * FROM consulta WHERE valor = (SELECT MAX(valor) FROM consulta) AND idConvenio IS NULL;
SELECT * FROM consulta WHERE valor = (SELECT MIN(valor) FROM consulta) AND idConvenio IS NULL;

/*Consultar os dados de cada internação e seus respectivos quartos*/
SELECT itnc.idInternacao, itnc.procedimento, itnc.idPaciente, itnc.idMedico, itnc.idQuarto,  itnc.dataEntrada, qrt.numero AS numeroQuarto, tqrt.descricao, 
tqrt.valor AS valorDiaria, (tqrt.valor * TIMESTAMPDIFF(DAY, itnc.dataEntrada, itnc.dataSaida)) AS valorTotal 
FROM internacao AS itnc INNER JOIN quarto AS qrt ON itnc.idQuarto = qrt.IdQuarto INNER JOIN tipoQuarto AS tqrt ON tqrt.idTipoQuarto = qrt.IdTipoQuarto;

/*Consultar data, procedimento e número de quarto de internações em quartos do tipo apartamento*/
SELECT itnc.dataEntrada, itnc.procedimento, qrt.numero, tqrt.descricao FROM tipoQuarto AS tqrt 
INNER JOIN quarto AS qrt ON tqrt.idTipoQuarto = qrt.idTipoQuarto INNER JOIN internacao AS itnc ON qrt.idQuarto = qrt.IdQuarto
WHERE tqrt.descricao = 'Apartamento';

/*Consultar nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta*/
SELECT pct.nome, cnst.dataConsulta, epld.especialidade FROM especialidade AS epld INNER JOIN consulta AS cnst ON cnst.idEspecialidade = epld.idEspecialidade 
INNER JOIN paciente AS pct ON pct.idPaciente = cnst.idPaciente WHERE epld.especialidade != 'Pediatria' AND TIMESTAMPDIFF(YEAR, pct.dataNascimento, dataConsulta) < 18 ORDER BY cnst.dataConsulta ASC;

/*Consultar nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”.*/
SELECT pct.nome AS paciente, mdc.nome AS medico, esp.especialidade, itnc.dataEntrada, itnc.procedimento, tqrt.descricao FROM internacao AS itnc INNER JOIN paciente AS pct ON pct.idPaciente = itnc.idPaciente 
INNER JOIN medico AS mdc ON mdc.idMedico = itnc.IdMedico INNER JOIN especialidadeMedico AS emdc ON emdc.idMedico = mdc.idMedico INNER JOIN especialidade AS esp ON esp.idEspecialidade = emdc.idEspecialidade 
INNER JOIN quarto AS qrt ON qrt.idQuarto = itnc.idQuarto INNER JOIN tipoQuarto AS tqrt ON tqrt.idTipoQuarto = qrt.idTipoQuarto WHERE esp.especialidade = 'Gastroenterologia' AND tqrt.descricao = 'Enfermaria';

/*Os nomes dos médicos, seus números de registro no CRM e a quantidade de consultas que cada um realizou*/
SELECT mdc.nome, mdc.CRM, COUNT(mdc.CRM) AS qntdConsulta FROM medico AS mdc INNER JOIN consulta AS cslt ON cslt.idMedico = mdc.idMedico GROUP BY mdc.idMedico;

/*Os nomes, os números de registro no CRE dos enfermeiros que participaram de mais de uma internação e os números de internações referentes a esses profissionais*/
SELECT e.nome, e.CRE, COUNT(inf.idEnfermeiro) AS qntInternacao FROM enfermeiro AS e INNER JOIN internacaoEnfermeiro inf ON inf.idEnfermeiro = e.idEnfermeiro INNER JOIN internacao AS itn ON itn.idInternacao = inf.idInternacao GROUP BY inf.idEnfermeiro;