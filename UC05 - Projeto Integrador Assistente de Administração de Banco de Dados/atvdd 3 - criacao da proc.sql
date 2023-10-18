/*Procedure para consultar se um contrato de um aluno ativo na plataforma já chegou ao fim*/
DELIMITER //
CREATE PROCEDURE consultaEncerramentoContrato(dataAtual DATE)
BEGIN
	SELECT n.areaAtuacao, n.nome AS nome_aluno, e.nome AS nome_empresa, es.dataInicio, es.dataFimPrevista, es.dataFim FROM aluno AS n 
	INNER JOIN empresa AS e ON e.idEmpresa = n.idEmpresa
	INNER JOIN estagio AS es ON es.idAluno = n.idAluno
    WHERE n.`status` = 'ativo' AND es.dataFim <= dataAtual;
END
// DELIMITER ;

CALL consultaEncerramentoContrato(CURRENT_DATE());