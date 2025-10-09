DROP DATABASE db_curso_da_minha_vida;
-- criar banco de dados 
CREATE DATABASE db_curso_da_minha_vida;
-- usar banco de dados
USE db_curso_da_minha_vida;
-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
duracao varchar(255) NOT NULL,
PRIMARY KEY (id)
);
-- Inserir dados na tabela tb_categorias
INSERT INTO tb_categorias (tipo, duracao)
VALUES ("Pós graduação", "de 6 a 18 meses");
INSERT INTO tb_categorias (tipo, duracao)
VALUES ("Bacharel", "de 3 a 6 anos");
INSERT INTO tb_categorias (tipo, duracao)
VALUES ("Licenciatura", "de 3 a 5 anos");
INSERT INTO tb_categorias (tipo, duracao)
VALUES ("Tecnólogo", "de 2 a 3 anos");
INSERT INTO tb_categorias (tipo, duracao)
VALUES ("Técnico", "de 6 a 36 meses");

-- apresentar tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_categorias
CREATE TABLE tb_cursos(
id bigint AUTO_INCREMENT,
curso varchar(255) NOT NULL,
idade_minima varchar(255) NOT NULL, 
preco decimal(8, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) -- faz a junção das duas tabelas, pela chave 
);
-- inserção de valores tabela tb_cursos
INSERT INTO tb_cursos(curso, idade_minima, preco, categoria_id)
VALUES("Gastronomia", "17 anos", 1200.00, 4);
INSERT INTO tb_cursos(curso, idade_minima, preco, categoria_id)
VALUES("Nutrição", "17 anos", 800.00, 3);
INSERT INTO tb_cursos(curso, idade_minima, preco, categoria_id)
VALUES("Desenvolvimento de sistemas", "15 anos", 600.00, 5);
INSERT INTO tb_cursos(curso, idade_minima, preco, categoria_id)
VALUES("Pedagogia", "17 anos", 450.00, 2);
INSERT INTO tb_cursos(curso, idade_minima, preco, categoria_id)
VALUES("Gastronomia hospitalar", "18 anos", 2000.00, 1);
INSERT INTO tb_cursos(curso, idade_minima, preco, categoria_id)
VALUES("Eventos", "15 anos", 300.00, 5);
INSERT INTO tb_cursos(curso, idade_minima, preco, categoria_id)
VALUES("Confeitaria", "15 anos", 980.00, 5);
INSERT INTO tb_cursos(curso, idade_minima, preco, categoria_id)
VALUES("Panificação", "15 anos", 7800.00, 5);

-- apresentar tabela tb_cursos
SELECT * FROM tb_cursos;

-- Apresentar em tb_cursos aqueles com preco maior do que 2000
SELECT * FROM tb_cursos WHERE preco > 500.00;  
-- Apresentar em tb_cursos aqueles com preco entre 600 e 1000
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00 ORDER BY preco; 
-- Apresentar em tb_cursos aqueles com nome com letra a
SELECT * FROM tb_cursos WHERE curso LIKE "%a%"; 

-- Aprestar tabelas tb_cursos e tb_categorias unidas através do id
SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id; 
-- Apresentar dados das tabelas tb_cursos e tb_categorias personagem com seleção de curso por categoria - Técnico
SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_cursos.categoria_id = 5; 
-- Apresentar dados específicos das tabelas tb_cursos e tb_categorias com seleção de cursos por categoria - Tecnólogo
SELECT tb_cursos.id, curso, preco, tipo
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_cursos.categoria_id = 4; 
