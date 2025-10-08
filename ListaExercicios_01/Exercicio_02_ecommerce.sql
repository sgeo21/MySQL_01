CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce( 
      PRIMARY KEY(id),
      id bigint AUTO_INCREMENT, 
      Nome_produto varchar(255) NOT NULL, 
      Data_validade date, 
      Categoria varchar(255) NOT NULL,
      Preco decimal(6,2) NOT NULL
);

INSERT INTO tb_ecommerce(Nome_produto, Data_validade,Categoria, Preco)
VALUES("Creme Bubble", "2026-10-08", "cremes corporais", 35.90);

INSERT INTO tb_ecommerce(Nome_produto, Data_validade,Categoria, Preco)
VALUES("Minha Rotina glow", "2026-12-28", "Kits", 950.90);
INSERT INTO tb_ecommerce(Nome_produto, Data_validade,Categoria, Preco)
VALUES("Mascara facial melancia", "2025-12-21", "Creme facial", 157.99);
INSERT INTO tb_ecommerce(Nome_produto, Data_validade,Categoria, Preco)
VALUES("Gloss hidratante cacaoa", "2025-11-05", "Lábios", 314.90);
INSERT INTO tb_ecommerce(Nome_produto, Data_validade,Categoria, Preco)
VALUES("Shampoo se cuida", "2026-02-25", "Cabelos", 4500.50);
INSERT INTO tb_ecommerce(Nome_produto, Data_validade,Categoria, Preco)
VALUES("Mascára de cílios", "2026-08-08", "Maquiagem", 85.19);
INSERT INTO tb_ecommerce(Nome_produto, Data_validade,Categoria, Preco)
VALUES("Concha cachos perfeitos", "2045-10-20", "Modeladores", 549.90);
INSERT INTO tb_ecommerce(Nome_produto, Data_validade,Categoria, Preco)
VALUES("Sérum facial alaska", "2028-10-10", "Skincare", 706.90);

UPDATE tb_ecommerce SET Preco = 235.90 WHERE ID = 1;
UPDATE tb_ecommerce SET Categoria = "Cremes corporais" WHERE ID = 1;

SELECT * FROM tb_ecommerce;
SELECT * FROM tb_ecommerce WHERE Preco > 500;
SELECT * FROM tb_ecommerce WHERE Preco < 500;

