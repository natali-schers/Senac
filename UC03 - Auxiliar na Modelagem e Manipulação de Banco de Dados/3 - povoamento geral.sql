USE hospital;

INSERT INTO medico(nome, CPF) VALUES
('Priscila Gonçalves Martins', '57843256790'),
('Rosa Gomes Argene', '32547896541'),
('Leonardo Sebastiano', '65478936925'),
('Carlos Leandro Vicente',  '35715985615'),
('Wagner Amarante Garões',  '35715985615'),
('Darah Chico Bessa', '58736925412'),
('Jaqueline dos Santos', '56314885203'),
('Lucas Pedro Davini', '66598214038'),
('Diogo Eunício Ferdinando', '58736925412'),
('Pamella Luíza Hórion', '69885412390');

INSERT INTO especialidadeMedico(idEspecialidade, idMedico) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7), 
(8, 8),
(9, 9),
(10, 10);

INSERT INTO paciente(nome, dataNascimento, endereco, telefone, email, carteiraConvenio, CPF, RG, idConvenio) VALUES 
('Roberto Fentes Parises', '1987-08-16', 'R. Carlos de Campos, 66-144 - Parque Sao Vicente, Mauá - SP, 09371-310', '11965874456', 'robertoparises@gmail.com', NULL, '25463200198', '879651214', NULL),
('Angela Sanchez Guardinez', '1996-04-10', 'Rua Angelina Góz, 240-336 - Jardim Araguaia, Mauá - SP, 09371-165', '11952143287', 'angelaguardinez@gmail.com', NULL, '32541269658', '401235478', NULL),
('Mateus Alexandro Sulises', '1999-07-02', 'R. Rio Grande do Sul, 59 - Cidade São Jorge, Santo André - SP, 09111-780', '11965478210', 'mateussulies@gmail.com', NULL, '66589742156', '320154213', NULL),
('Sabrina Justino Eliane', '1976-11-27', 'R. Sd. Dorival de Brito - Cidade São Jorge, Santo André - SP, 09111-590', '11984285593', 'sabrinaeliane@gmail.com', NULL, '96547822148', '246521498', NULL),
('Gabriel Marquez Lorez', '2001-12-23', 'R. Espirito Santo, 109 - Cidade São Jorge, Santo André - SP, 09111-660', '11966547821', 'gabriellorez@gmail.com', NULL, '45201236985', '103692458', NULL),
('Breno Marujo Barbosa', '2006-01-31', 'Av. Marginal Itrapoã, 666 - Cidade São Jorge, Santo André - SP, 09111-790', '11924368879', 'brenobarbosa@gmail.com', NULL, '32478965412', '507822465', NULL),
('Ariel Sabrine', '1998-07-28', 'Av. Queiróz Pedroso, 738-808 - Jardim Pedroso, Mauá - SP, 09370-360', '11901548879', 'arielsabrine@gmail.com', NULL, '58978965412', '875463214', NULL),
('Heloísa Mariano Astrone', '1992-04-17', 'Rua Valdemar Costa Filho, 57 - Jardim Isabella, Mauá - SP, 09371-600', '11936988879', 'heloisaastrone@gmail.com', NULL, '17368265462', '965412357', NULL),
('Igor Mantes Morrine', '1990-08-16', 'Av. Armando Salles de Oliveira, 110 - Parque Sao Vicente, Mauá - SP, 09371-320', '11932345821', 'igormorrine@gmail.com', NULL, '84569712563', '986541048', NULL),
('Natasha Berlamino Cruz', '2004-05-04', 'R. Gen. Castilho de Lima, 29 - Parque Sao Vicente, Mauá - SP, 09371-345', '11910329321', 'natashacruz@gmail.com', NULL, '56933104569', '524569632', NULL);

INSERT INTO consulta(dataConsulta, valor, idPaciente, idConvenio, idMedico, idReceita, idEspecialidade) VALUES
('2017-02-27', 350.00, 1, NULL, 1, NULL, 1),
('2017-03-10', 450.00, 2, NULL, 2, NULL, 2),
('2017-04-08', 500.00, 3, NULL, 3, NULL, 3),
('2017-06-08', 450.00, 3, NULL, 3, NULL, 3),
('2017-08-08', 450.00, 3, NULL, 3, NULL, 3),
('2018-05-30', 200.00, 4, NULL, 4, NULL, 4),
('2019-05-30', 200.00, 5, NULL, 5, NULL, 5),
('2019-08-30', 350.00, 6, NULL, 6, NULL, 6),
('2019-08-01', 175.00, 7, NULL, 7, NULL, 7),
('2019-11-30', 350.00, 6, NULL, 6, NULL, 6);

INSERT INTO receita(receita) VALUES
('0,5mg de Roacutan 1x no dia por 8 semanas'),
('Ácido azeláico 2x no dia (de manhã e à noite) sobre as regiões afetadas'), 
('20mg de Citalopram (dose única pela manhã ou ao anoitecer)'), 
('1 comprimido de Motilium 3x ao dia (15 a 30 minutos antes das refeições) e 1x antes de dormir'), 
('1 comprimido de Monocordil a cada 3 horas'); 

INSERT INTO receita(receita) VALUES
('Roacutan'), /*pele*/
('Ácido azeláico'), /*pele*/
('Citalopram'), /*psiquiatria*/
('Motilium'), /*Gastroenterologia*/
('Monocordil'); /*coração*/

INSERT INTO consulta(dataConsulta, valor, idPaciente, idConvenio, idMedico, idReceita, idEspecialidade) VALUES
('2017-02-27', 350.00, 7, NULL, 1, 1, 1),
('2017-03-10', 450.00, 8, NULL, 1, 1, 1),
('2017-04-08', 500.00, 7, NULL, 10, 5, 10),
('2017-06-08', 450.00, 9, NULL, 6, 3, 6),
('2017-08-08', 450.00, 10, NULL, 2, 4, 2);

UPDATE paciente SET idConvenio = 1, carteiraConvenio = '22662634' WHERE idpaciente = 1;
UPDATE paciente SET idConvenio = 1, carteiraConvenio = '12341234' WHERE idpaciente = 2;
UPDATE paciente SET idConvenio = 2, carteiraConvenio = '32432432' WHERE idpaciente = 3;
UPDATE paciente SET idConvenio = 3, carteiraCOnvenio = '45548643' WHERE idpaciente = 4;
UPDATE paciente SET idConvenio = 4, carteiraConvenio = '21484234' WHERE idPaciente = 5;

UPDATE consulta SET idConvenio = 1 WHERE idpaciente IN (1, 2);
UPDATE consulta SET idConvenio = 2 WHERE idpaciente = 3;
UPDATE consulta SET idConvenio = 3 WHERE idpaciente = 4;
UPDATE consulta SET idConvenio = 4 WHERE idPaciente = 5;

INSERT INTO quarto(numero, idTipoQuarto) VALUES
(01, NULL),
(02, NULL),
(03, NULL),
(04, NULL),
(05, NULL);

INSERT INTO internacao(dataEntrada, dataSaidaPrevista, dataSaida, procedimento, idPaciente, idMedico, idQuarto) VALUES
('2017-03-27', '2017-04-27', '2017-04-27', 'Crioterapia', 1, 1, 01),
('2018-06-30', '2018-07-30', '2018-07-30', 'Pneumologia', 4, 4, 02),
('2017-07-08', '2017-08-15', '2017-08-20', 'Angioplastia', 7, 10, 03),
('2018-09-30', '2018-10-30', '2018-10-30', 'Pneumologia', 4, 4, 02),
('2018-09-30', '2018-10-30', '2018-10-30', 'Enteroscopia', 2 , 2, 04),
('2019-03-30', '2019-04-30', '2019-04-30', 'Implante Transcateter', 7, 10, 03),
('2020-08-30', '2020-09-30', '2020-10-30', 'Valvoplastia', 7, 10, 03);

INSERT INTO enfermeiro(nome, CPF, CRE) VALUES
('Gabriella Ruiza Sariê', '01326674013', '33414386000137'),
('Giovana Hoziel Vandart', '02654200086', '07796056000143'),
('Felipe Leite Romano', '29900060016', '07796056000143'),
('Leandro Erick Levie', '56462557087', '03594091000129'),
('Marta Quimiot Perez', '22784533000', '35191416000119'),
('Alanna Pearson', '70333789040', '14890914000180'),
('Carlos Reginaldo Artunes', '44821031019', '04465700000102');

INSERT INTO internacaoEnfermeiro(idEnfermeiro, idInternacao) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(1, 4),
(2, 5),
(3, 5),
(4, 6),
(5, 6),
(6, 7),
(7, 7);