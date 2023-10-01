/***
Consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório: data da venda, valor total; produtos vendidos, quantidade e valor unitário; nome do cliente, cpf e telefone.
Ordena-se pela data de venda, as mais recentes primeiro.
***/
SELECT v.`data`, iv.subtotal AS total_produto, iv.nome_produto, iv.quantidade, iv.valor_unitario, c.nome, c.cpf, c.telefone FROM venda v
INNER JOIN item_venda iv ON iv.venda_id = v.id 
INNER JOIN cliente c ON c.id = v.cliente_id
WHERE v.tipo_pagamento = 'D' ORDER BY `data` DESC;

/***
consulta para encontrar todas as vendas de produtos de um dado fabricante
Mostrar dados do produto, quantidade vendida, data da venda.
Ordena-se pelo nome do produto.
***/
SELECT p.nome, p.descricao, p.estoque, p.fabricante, iv.quantidade, v.`data` FROM produto p
INNER JOIN item_venda iv ON iv.produto_id = p.id
INNER JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante LIKE '%lar%' 
ORDER BY p.nome ASC;
 
/***
Relatório de vendas de produto por cliente.
Mostrar dados do cliente, dados do produto, valor e quantidade totais de venda ao cliente de cada produto.
***/
SELECT c.nome, c.cpf, c.telefone, c.endereco, p.nome, p.descricao, p.estoque, p.fabricante, SUM(iv.subtotal), SUM(iv.quantidade) FROM cliente c 
INNER JOIN venda v ON v.cliente_id = c.id 
INNER JOIN item_venda iv ON iv.venda_id = v.id
INNER JOIN produto p ON p.id = iv.produto_id
WHERE c.id = v.cliente_id
GROUP BY c.nome, c.cpf, c.telefone, c.endereco, p.nome, p.descricao, p.estoque, p.fabricante;
