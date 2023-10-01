CREATE DATABASE hospital;

USE hospital;

CREATE TABLE convenio(
idConvenio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
CNPJ VARCHAR(14) NOT NULL,
tempoCarencia VARCHAR(45)
);

CREATE TABLE paciente(
idPaciente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
dataNascimento DATE NOT NULL,
endereco VARCHAR(100) NOT NULL,
telefone VARCHAR(11) NOT NULL,
email VARCHAR(50) NOT NULL,
carteiraConvenio VARCHAR(45),
CPF VARCHAR(11) NOT NULL,
RG VARCHAR(9) NOT NULL,
idConvenio INT,
FOREIGN KEY(idConvenio) REFERENCES convenio(idConvenio)
);

CREATE TABLE medico(
idMedico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
CPF VARCHAR(11) NOT NULL
);

CREATE TABLE receita(
idReceita INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
receita VARCHAR(255)
);

CREATE TABLE especialidade(
idEspecialidade INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
especialidade VARCHAR(50) NOT NULL
);

CREATE TABLE consulta(
idConsulta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
dataConsulta DATE NOT NULL,
valor DECIMAL(10,2) NOT NULL,
idPaciente INT,
FOREIGN KEY(idPaciente) REFERENCES paciente(idPaciente),
idConvenio INT,
FOREIGN KEY(idConvenio) REFERENCES convenio(idConvenio),
idMedico INT,
FOREIGN KEY(idMedico) REFERENCES medico(idMedico),
idReceita INT,
FOREIGN KEY(idReceita) REFERENCES receita(idReceita),
idEspecialidade INT,
FOREIGN KEY(idEspecialidade) REFERENCES especialidade(idEspecialidade)
);

CREATE TABLE tipoQuarto(
idTipoQuarto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(50) NOT NULL,
valorDecimal DECIMAL(10,2) NOT NULL
); 

CREATE TABLE quarto(
idQuarto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
numero INT NOT NULL,
idTipoQuarto INT,
FOREIGN KEY(idTipoQuarto) REFERENCES tipoQuarto(idTipoQuarto)
);

CREATE TABLE enfermeiro(
idEnfermeiro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
CPF VARCHAR(11) NOT NULL,
CRE VARCHAR(50) NOT NULL
);

CREATE TABLE internacao(
idInternacao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
dataEntrada DATE NOT NULL,
dataSaidaPrevista DATE,
dataSaida DATE NOT NULL,
procedimento VARCHAR(255) NOT NULL,
idPaciente INT,
FOREIGN KEY(idPaciente) REFERENCES paciente(idPaciente),
idMedico INT,
FOREIGN KEY(idMedico) REFERENCES medico(idMedico),
idQuarto INT,
FOREIGN KEY(idQuarto) REFERENCES quarto(idQuarto)
);

CREATE TABLE especialidadeMedico(
idMedico INT,
FOREIGN KEY(idMedico) REFERENCES medico(idMedico),
idEspecialidade INT,
FOREIGN KEY(idEspecialidade) REFERENCES especialidade(idEspecialidade)
);

CREATE TABLE internacaoEnfermeiro(
idEnfermeiro INT,
FOREIGN KEY(idEnfermeiro) REFERENCES enfermeiro(idEnfermeiro),
idInternacao INT,
FOREIGN KEY(idInternacao) REFERENCES internacao(idInternacao)
);
