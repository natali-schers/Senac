/*Criação da role*/
CREATE ROLE 'reader'@'localhost';

/*Atribuição de permissão para a role*/
GRANT SELECT ON uc4atividades.* TO 'reader'@'localhost';
FLUSH PRIVILEGES;

/*Criação do usuário*/
CREATE USER 'user_relatorio'@'localhost' IDENTIFIED BY 'rel@torio0906';

/*Atribuição de role para o usuário */
GRANT 'reader'@'localhost' TO 'user_relatorio'@'localhost';
FLUSH PRIVILEGES;

SET DEFAULT ROLE 'reader'@'localhost' TO 'user_relatorio'@'localhost';
FLUSH PRIVILEGES;

/*---------------------------------------------------------------------------------*/

/*Criação da role*/
CREATE ROLE 'employee'@'localhost';

/*Atribuição de permissão para a role*/
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.cliente TO 'employee'@'localhost' WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.venda TO 'employee'@'localhost' WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.produto TO 'employee'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

/*Criação do usuário*/
CREATE USER 'user_funcionario'@'localhost' IDENTIFIED BY 'funcion@ario1134';

/*Atribuição de role para o usuário */
GRANT 'employee'@'localhost' TO 'user_funcionario'@'localhost';
FLUSH PRIVILEGES;

/*Executar as mudanças*/
SET DEFAULT ROLE 'employee'@'localhost' TO 'user_funcionario'@'localhost';
FLUSH PRIVILEGES;
