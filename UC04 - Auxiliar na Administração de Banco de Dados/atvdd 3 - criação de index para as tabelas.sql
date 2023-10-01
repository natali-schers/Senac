/*Criação do index para a tabela `venda`*/
CREATE INDEX index_tipo_pagamento ON venda(tipo_pagamento);
/*SHOW INDEX FROM venda;*/

/*Criação do index para a tabela `produto`*/
CREATE INDEX index_fabricante ON produto(fabricante);
/*SHOW INDEX FROM produto;*/

/*Criação do index para a tabela `produto`*/
CREATE INDEX index_id ON cliente(id);
/*SHOW INDEX FROM cliente;*/