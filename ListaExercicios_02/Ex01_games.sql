-- criar o banco de dados
CREATE DATABASE db_generation_game_online;
-- Selecionar o banco de dados
USE db_generation_game_online;
-- Criar a tabela tb_classes
CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
habilidade_geral varchar(255) NOT NULL,
PRIMARY KEY (id)
);
-- Inserir dados na tabela tb_classes
INSERT INTO tb_classes (categoria, habilidade_geral)
VALUES ("Mago", "Magia");
INSERT INTO tb_classes (categoria, habilidade_geral)
VALUES ("Guerreiro", "Força");
INSERT INTO tb_classes (categoria, habilidade_geral)
VALUES ("Fenticeiro", "Poder");
INSERT INTO tb_classes (categoria, habilidade_geral)
VALUES ("Bruxo", "Mágica");
INSERT INTO tb_classes (categoria, habilidade_geral)
VALUES ("Arqueiro", "Precisão");
INSERT INTO tb_classes (categoria, habilidade_geral)
VALUES ("Estrategista", "raciocínio lógico");
-- apresentar tabela tb_classes
SELECT * FROM tb_classes;
-- Criar a Tabela tb_personagens
CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
habilidade_especifica varchar(255) NOT NULL, 
papel_narrativa varchar(255) NOT NULL,
poder_ataque decimal(6, 2),
poder_defesa decimal(6, 2),
classe_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id) -- faz a junção das duas tabelas, pela chave 
);
-- Inserção de personagens
INSERT INTO tb_personagens (nome, habilidade_especifica, papel_narrativa, poder_ataque, poder_defesa, classe_id)
VALUES ("Gray", "Alteração de forma física", "vilã", 1000.00, 300.00, 4);
INSERT INTO tb_personagens (nome, habilidade_especifica, papel_narrativa, poder_ataque, poder_defesa, classe_id)
VALUES ("Xena", "Táticas militares e disfarces", "heroína", 9000.00, 4000.00, 2);
INSERT INTO tb_personagens (nome, habilidade_especifica, papel_narrativa, poder_ataque, poder_defesa, classe_id)
VALUES ("Morgana", "Força e curandeira", "heroína", 980.00, 2000.00, 4);
INSERT INTO tb_personagens (nome, habilidade_especifica, papel_narrativa, poder_ataque, poder_defesa, classe_id)
VALUES ("Afrodite", "Beleza e influência", "heroína", 850.00, 5000.00, 3);
INSERT INTO tb_personagens (nome, habilidade_especifica, papel_narrativa, poder_ataque, poder_defesa, classe_id)
VALUES ("Maga", "Teletransporte, criação e transmutação", "vilã", 5600.00, 800.00, 1);
INSERT INTO tb_personagens (nome, habilidade_especifica, papel_narrativa, poder_ataque, poder_defesa, classe_id)
VALUES ("Artemis", "Caça e proteção", "heroína", 5000.00, 9000.00, 5);
INSERT INTO tb_personagens (nome, habilidade_especifica, papel_narrativa, poder_ataque, poder_defesa, classe_id)
VALUES ("Atenas", "Sabedoria e justiça", "heroína", 8000.00, 9000.00, 6);
INSERT INTO tb_personagens (nome, habilidade_especifica, papel_narrativa, poder_ataque, poder_defesa, classe_id)
VALUES ("Futuba", "Reclusa e vingativa", "coadjuvante", 200.00, 600.00, 6);
-- apresentar tabela tb_personagens
SELECT * FROM tb_personagens;
-- Apresentar em tb_personagens aqueles com pode de ataque maior do que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000.00;  
-- Apresentar em tb_personagens aqueles com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000.00 AND 2000.00 ORDER BY poder_defesa; 
-- Apresentar em tb_personagens aqueles com nome com letra c
SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; 

-- Aprestar tabelas tb_personagens e tb_classes unidas através do id
SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id; 
-- Apresentar atributos selecionados das tabelas tb_personagens e tb_classes
SELECT tb_personagens.id, nome, habilidade_especifica, categoria, habilidade_geral
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;
-- Apresentar dados das tabelas tb_personagens e tb_classes personagem com seleção de personagem por categoria - arqueiros
SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_personagens.classe_id = 5; 
-- Apresentar dados específicos das tabelas tb_personagens e tb_classes personagem com seleção de personagem por categoria - estrategista
SELECT tb_personagens.id, nome, habilidade_especifica, categoria, habilidade_geral
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_personagens.classe_id = 6; 
