/*Criação da role*/
CREATE ROLE 'reader'@'localhost';

/*Atribuição de permissão para a role*/
GRANT SELECT ON projetointegrador.* TO 'reader'@'localhost';
FLUSH PRIVILEGES;

/*Criação do usuário*/
CREATE USER 'user_analista'@'localhost' IDENTIFIED BY 'an@alits983';

/*Atribuição de role para o usuário */
GRANT 'reader'@'localhost' TO 'user_analista'@'localhost';
FLUSH PRIVILEGES;

SET DEFAULT ROLE 'reader'@'localhost' TO 'user_analista'@'localhost';
FLUSH PRIVILEGES;

/*---------------------------------------------------------------------------------*/

/*Criação da role*/
CREATE ROLE 'development'@'localhost';

/*Atribuição de permissão para a role*/
GRANT SELECT, INSERT, UPDATE, DELETE ON projetointegrador.* TO 'development'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

/*Criação do usuário*/
CREATE USER 'user_dev'@'localhost' IDENTIFIED BY 'devel@per@ario405';
CREATE USER 'user_qa'@'localhost' IDENTIFIED BY 'qu@lity3230';

/*Atribuição de role para o usuário */
GRANT 'development'@'localhost' TO 'user_dev'@'localhost';
GRANT 'development'@'localhost' TO 'user_qa'@'localhost';
FLUSH PRIVILEGES;

/*Executar as mudanças*/
SET DEFAULT ROLE 'development'@'localhost' TO 'user_dev'@'localhost';
SET DEFAULT ROLE 'development'@'localhost' TO 'user_qa'@'localhost';
FLUSH PRIVILEGES;

/*---------------------------------------------------------------------------------*/

/*Criação da role*/
CREATE ROLE 'master'@'localhost';

/*Atribuição de permissão para a role*/
GRANT ALL ON projetointegrador.* TO 'master'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

/*Criação do usuário*/
CREATE USER 'user_tech_lead'@'localhost' IDENTIFIED BY 'tech@lead9288';

/*Atribuição de role para o usuário */
GRANT 'master'@'localhost' TO 'user_tech_lead'@'localhost';
FLUSH PRIVILEGES;

/*Executar as mudanças*/
SET DEFAULT ROLE 'master'@'localhost' TO 'user_tech_lead'@'localhost';
FLUSH PRIVILEGES;