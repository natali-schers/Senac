/***
Consulta as informações de um estágio, como: aluno, sua área de atuação, empresa e instituição de ensino
***/
CREATE VIEW view_aluno_estagio AS SELECT a.nome, a.sobrenome, a.areaAtuacao, e.dataInicio AS inicio_estagio, em.nome AS nome_empresa, i.nome AS nome_instituicao_ensino FROM aluno AS a 
INNER JOIN estagio AS e ON e.idAluno = a.idAluno
INNER JOIN empresa AS em ON em.idEmpresa = a.idEmpresa
INNER JOIN instituicaoEnsino AS i ON i.idInstituicaoEnsino = a.idInstituicaoEnsino
ORDER BY e.dataInicio DESC;
/*SELECT * FROM view_aluno_estagio;*/

/***
Consulta as informações de uma empresa, como: nome, informações de contato e responsáveis pelos estagiários
***/
CREATE VIEW view_empresa AS SELECT e.nome AS nome_empresa, e.documento AS CNPJ, e.telefone, e.email, CONCAT(r.nome, " ", r.sobrenome) AS nome_funcionario FROM empresa AS e
INNER JOIN responsavelEmpresa AS r ON r.idEmpresa = e.idEmpresa;
/*SELECT * FROM view_empresa;*/

/***
Consulta as informações de uma instituição de ensino, como: nome, informações de contato e responsáveis pelos alunos que fazem estágio
***/
CREATE VIEW view_intituicao_ensino AS SELECT i.nome AS nome_intituicao_ensino, i.documento AS CNPJ, i.telefone, i.email, CONCAT(r.nome, " ", r.sobrenome) AS nome_funcionario FROM instituicaoEnsino AS i
INNER JOIN responsavelinstituicaoensino AS r ON r.idInstituicaoEnsino = i.idInstituicaoEnsino;
/*SELECT * FROM view_intituicao_ensino;*/