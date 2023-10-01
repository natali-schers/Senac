ALTER TABLE medico ADD ativo bit;

UPDATE medico SET ativo = 1 WHERE idMedico <= 2;

UPDATE medico SET ativo = 0 WHERE idMedico > 2;

UPDATE internacao SET dataSaida = DATE_ADD(dataSaida, INTERVAL 3 DAY) WHERE idQuarto = 1;

DELETE FROM consulta WHERE idConvenio = 4;

UPDATE paciente SET idConvenio = NULL, carteiraConvenio = NULL WHERE idConvenio = 4;

DELETE FROM convenio WHERE idConvenio = 4;

INSERT INTO consulta(dataConsulta, valor, idPaciente, idConvenio, idMedico, idReceita, idEspecialidade) VALUES
('2020-02-27', 350.00, 7, 1, 1, 1, 1),
('2020-03-10', 450.00, 8, 2, 1, 1, 4),
('2020-04-08', 500.00, 7, 3, 10, 5, 10),
('2020-06-08', 450.00, 9, 3, 6, 3, 6),
('2020-08-08', 450.00, 10, 2, 2, 4, 2),
('2020-05-30', 200.00, 4, NULL, 4, NULL, 4),
('2020-05-30', 200.00, 5, NULL, 5, NULL, 5),
('2020-08-30', 350.00, 6, NULL, 6, NULL, 4),
('2020-08-01', 175.00, 7, NULL, 7, NULL, 7),
('2020-11-30', 350.00, 6, NULL, 6, NULL, 6);

INSERT INTO internacao(dataEntrada, dataSaidaPrevista, dataSaida, procedimento, idPaciente, idMedico, idQuarto) VALUES
('2018-09-30', '2018-10-30', '2018-10-30', 'Enteroscopia', 2 , 2, 02);

INSERT INTO internacaoEnfermeiro(idEnfermeiro, idInternacao) VALUES
(1, 8);

ALTER TABLE medico ADD CRM VARCHAR(7) NOT NULL;

UPDATE medico SET CRM = '0965342' WHERE idMedico = 1;
UPDATE medico SET CRM = '7568675' WHERE idMedico = 2;
UPDATE medico SET CRM = '6234680' WHERE idMedico = 3;
UPDATE medico SET CRM = '7895652' WHERE idMedico = 4;
UPDATE medico SET CRM = '4621833' WHERE idMedico = 5;
UPDATE medico SET CRM = '5219439' WHERE idMedico = 6;
UPDATE medico SET CRM = '4562198' WHERE idMedico = 7;
UPDATE medico SET CRM = '8934624' WHERE idMedico = 8;
UPDATE medico SET CRM = '3254823' WHERE idMedico = 9;
UPDATE medico SET CRM = '0937651' WHERE idMedico = 10;