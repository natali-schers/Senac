/*Procedure para retornar informações das compras feitas por um determinado usuário*/
DELIMITER //
CREATE PROCEDURE comprasCliente(idCliente INT, dataInicio DATE, dataFim DATE)
BEGIN
	SELECT c.nome AS Nome_Cliente, v.id AS ID_Compra, iv.subtotal AS Total_Produto, iv.nome_produto AS Produto, iv.quantidade AS Quantidade , v.`data` FROM cliente c
	INNER JOIN venda v ON v.cliente_id = c.id
	INNER JOIN item_venda iv ON iv.venda_id = v.id
	WHERE c.id = idCliente AND v.`data` BETWEEN dataInicio AND dataFim;
END
// DELIMITER ;

CALL comprasCliente(54, '2018-01-01', '2020-01-09');


/*Function para retornar a classificação do cliente na loja*/
DELIMITER //
CREATE FUNCTION classificacaoCliente(idCliente INT)
RETURNS VARCHAR(15) DETERMINISTIC
BEGIN
	DECLARE classificacao VARCHAR(20) DEFAULT NULL;

	DECLARE valorGasto DECIMAL(9,2) DEFAULT 00.00;
	SET valorGasto = (SELECT SUM(v.valor_total) FROM venda v INNER JOIN cliente c ON c.id = v.cliente_id
    WHERE v.cliente_id = idCliente GROUP BY v.cliente_id);
    
    IF(valorGasto >= 10000.00) THEN
		SET classificacao := 'PREMIUM';
	ELSE 
		SET classificacao := 'REGULAR';
	END IF;
    RETURN classificacao;
END
// DELIMITER ;

SELECT classificaçãoCliente(90);


/*Trigger para criptografar a senha de um novo usuário*/
DELIMITER //
CREATE TRIGGER criptografarSenha BEFORE INSERT
ON usuario FOR EACH ROW
BEGIN
	SET NEW.senha =  MD5(NEW.senha);
END
// DELIMITER ;

INSERT INTO usuario (id, login, senha, ultimo_login) VALUES (12, 'nschers','ns@123', CURRENT_DATE());
SELECT * FROM usuario WHERE id = (SELECT MAX(id) FROM usuario);
