INSERT INTO empresa (nome, documento, telefone, email, UF, cidade, logradouro, numero, site) VALUES
('TecUni', '54322962000196', '11947348573', 'tecuni@gmail.com', 'SP', 'São Paulo', 'Rua Mares Escuros', '623', 'https://tecuni.com.br'),
('SoftNote', '23380295000174', '11957345586', 'softnote@gmail.com', 'SP', 'São Paulo', 'Rua Presidente Luz', '210', 'https://softnote.com.br'),
('Braves', '91223771000101', '11932755548', 'braves@gmail.com', 'SP', 'São Paulo', 'Rua Salvação', '74', 'https://braves.com.br'),
('HardCode', '65828875000121', '11943758694', 'hardcode@gmail.com', 'SP', 'São Paulo', 'Rua Orlando de Lima', '89', 'https://hardcode.com.br'),
('Natis', '51106155000148', '11998402254', 'natis@gmail.com', 'SP', 'São Paulo', 'Rua Ferreira Pedroso', '102', 'https://natis.com.br');

INSERT INTO instituicaoensino (nome, documento, telefone, email, UF, cidade, logradouro, numero, site) VALUES
('ETEC de Mauá', '61914631000100', '11937594472', 'etecmaua@gmail.com', 'SP', 'Mauá', 'Avenida Sereias', '88', 'https://etecmaua.com.br'),
('ETEC Prof.ª Maria Cristina Medeiros', '15735292000188', '11947364473', 'etecmcm@gmail.com', 'SP', 'Ribeirão Pires', 'Rua Céu Azul', '632', 'https://etecmcm.com.br'),
('ETEC Júlio de Mesquita', '17518949000180', '11947239600', 'etecjmesquita@gmail.com', 'SP', 'Santo André', 'Rua Londres', '49', 'https://etecjmesquita.com.br'),
('ETEC de São Caetano', '44157500098148', '11903702754', 'saocaetano@gmail.com', 'SP', 'São Caetano', 'Rua Estados Verdes', '365', 'https://saocaetano.com.br'),
('ETEC de Rio Grande da Serra', '30835379000110', '11932173390', 'riogserra@gmail.com', 'SP', 'Rio Grande da Serra', 'R. Bélgica', '98', 'https://riogserra.com.br');

INSERT INTO aluno (nome, sobrenome, documento, telefone, email, uf, cidade, logradouro, numero, areaAtuacao, `status`, idInstituicaoEnsino, idEmpresa) VALUES 
('Thiago', 'Sanchez Martinez', '88918030061', '11984653475', 'thiagomartinez@gmail.com', 'SP', 'Mauá', 'Rua Jordão Vicente', '452', 'Desenvolvimento', 'inativo', 1, 1),
('Anderson', 'Golth', '53388341036', '11947694457', 'andersongolth@gmail.com', 'SP', 'Ribeirão Pires', 'Rua Luzias', '9', 'Recursos Humanos', 'ativo', 2, 2),
('Vitoria', 'Solamares dos Anjos', '32243174006', '11954734459', 'vitoriaanjos@gmail.com', 'SP', 'Santo André', 'Rua Palmeiras Santas', '660', 'Administração', 'ativo', 3, 3),
('Bianca', 'Hiremas da Silva', '10682574074', '11947592213', 'biancasilva@gmail.com', 'SP', 'São Caetano', 'Rua Jardins Floridos', '32', 'Banco de Dados', 'inativo', 4, 4),
('Natali', 'Schers', '52143607890', '11910477782', 'natalischers@gmail.com', 'SP', 'Rio Grande da Serra', 'Rua Pedro Galvano', '10', 'Desenvolvimento', 'primeiro_acesso', 5, 5);

INSERT INTO estagio (dataInicio, dataFimPrevista, dataFim, idAluno) VALUES
('2021-04-05', '2022-04-05', '2022-04-05', 1),
('2022-11-24', '2023-10-24', NULL, 2),
('2022-12-19', '2023-10-19', CURRENT_DATE(), 3),
('2022-06-12', '2023-06-12', '2023-06-12', 4),
('2023-10-03', '2023-10-03', NULL, 5);

INSERT INTO responsavelEmpresa(nome, sobrenome, telefone, email, cargo, idEmpresa) VALUES
('Fernanda', 'Auresco Neves', '11910364823', 'fernandaneves@gmail.com', 'Recursos Humanos', 1),
('Alexandre', 'Marineza', '11910374299', 'alexandremarineza@gmail.com', 'Líder Técnico', 2),
('Arthur', 'Augusto Gintes', '11923789002', 'arthurgintes@gmail.com', 'Recursos Humanos', 3),
('Karla', 'Lorenna', '11923145562', 'karlalorenna@gmail.com', 'Recursos Humanos', 4),
('Cátia', 'Joanez Lana', '11948274732', 'catialana@gmail.com', 'Líder Técnico', 5);

INSERT INTO responsavelInstituicaoEnsino(nome, sobrenome, telefone, email, cargo, idInstituicaoEnsino) VALUES
('Pedro', 'Juan Monitte', '11968439285', 'pedromonitte@gmail.com', 'Coordenação', 1),
('Daniella', 'Horizes de Loices', '11965733348', 'daniellaloices@gmail.com', 'Coodenação', 2),
('Andrey', 'Wilson', '11937564432', 'andreywilson@gmail.com', 'Docente', 3),
('Priscila', 'Laura Carteza', '11938473212', 'priscilacarteza@gmail.com', 'Direção', 4),
('Éricka', 'Nicolas Celia', '11948274432', 'erickacelia@gmail.com', 'Docente', 5);