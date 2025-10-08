CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_rh( 
      PRIMARY KEY(id),
      id bigint AUTO_INCREMENT, 
      nome varchar(255) NOT NULL, 
      Idade int NOT NULL, 
      Cargo varchar(255) NOT NULL,
      Salario decimal(6,2) NOT NULL
);
INSERT INTO tb_rh (nome, Idade, Cargo, Salario)
VALUES("Juliana Andrade", 25, "Assistente de RH", 2100.00);
INSERT INTO tb_rh (nome, Idade, Cargo, Salario)
VALUES("Josiane Maria", 32, "Analista de RH", 4300.00);
INSERT INTO tb_rh (nome, Idade, Cargo, Salario)
VALUES("Anderson José", 19, "Estagiário de RH", 950.00);
INSERT INTO tb_rh (nome, Idade, Cargo, Salario)
VALUES("Maria Eduarda Costa Silva", 48, "Gerente de RH", 9800.00);
INSERT INTO tb_rh (nome, Idade, Cargo, Salario)
VALUES("Caroline Santos", 38, "Seleção e treinamento de RH", 3500.00);

UPDATE tb_rh SET nome = "Camila Silva" WHERE ID = 1;
UPDATE tb_rh SET Idade = 31 WHERE ID = 1;
UPDATE tb_rh SET Cargo = "Estagiária" WHERE ID = 1;
UPDATE tb_rh SET Salario = 1200.00 WHERE ID = 1;

SELECT * FROM tb_rh;
SELECT * FROM tb_rh WHERE Salario > 2000.00;
SELECT * FROM tb_rh WHERE Salario < 2000.00;