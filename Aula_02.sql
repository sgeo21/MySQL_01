-- Para criar a tabela
CREATE DATABASE db_quitanda; 

-- Para selecionar a tabela
USE db_quitanda; 

-- Definir atributo do objeto é tipo o autoincrement
CREATE TABLE tb_produtos( 
      id bigint AUTO_INCREMENT, -- para incluir id automática
      nome varchar(255) NOT NULL, -- incluir string
      quantidade int, -- incluir inteiro
      data_validade date, -- incluir data
      preco decimal NOT NULL, -- incluit tipo float
      PRIMARY KEY(id)
);

-- Inserir dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Abacate", 10, "2025-10-27", 15.90);
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Laranja", 50, "2025-10-17", 12.50);
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Banana", 200, "2025-10-18", 12.90);
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Morango", 70, "2025-10-11", 10.00);
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Kiwi", 700, "2025-10-11", 25.00);

SELECT * FROM tb_produtos; -- para mostrar como esta a tabela toda (o * é para mostrar tudo)
SELECT nome, preco FROM tb_produtos; -- seleciona o que será exibido de atributos
SELECT * FROM tb_produtos WHERE id = 4; -- para exibir na tabela apenas o que você que exibir
SELECT * FROM tb_produtos WHERE preco > 20; -- para exibir na tabela apenas o que está dentro do filtro
SELECT * FROM tb_produtos WHERE id != 4; -- para exibir na tabela o que etá dentro do filtro

-- para modificar a ESTRUTURA de um atributo
ALTER TABLE tb_produtos MODIFY preco decimal (6,2); -- até 6 numeros antes da virgula e 2 depois
-- isso precisa ser utilizado quando é necessária qualquer alteração na tabela, pois ela já foi criada, 
-- mas na hora de criar ela pode ser criada com as definições

-- update mudança set diz qual o atributo e where  aidiciona a identificação 
-- UPDATE tb_produtos SET preco = 15.90; nesse caso modifica todas as linhas da coluna, tudo com o mesmo preço
UPDATE tb_produtos SET preco = 15.90 WHERE ID = 1; -- Nesse caso modifica apenas o preço do id 1, por causa da expecificação
DELETE FROM tb_produtos WHERE id =3; -- deletar a linha selecionada, não faz restauração
SET SQL_SAFE_UPDATES = 1; -- = 0 desativa a trava de mudança, = 1 ativa a trava para não mudar a tabela toda

-- caso tenha esquecido ou queira adicionar um novo atributo na tabela
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- mudar nome do atributo
ALTER TABLE tb_produtos CHANGE descricao description varchar(255);

-- para excluir o atributo
ALTER TABLE tb_produtos DROP description;
-- ALTER TABLE mexe na estrutura da tabela
