CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_escola (
     PRIMARY KEY (id),
     id bigint AUTO_INCREMENT,
     Nome_aluno varchar(255) NOT NULL,
     Data_nascimento date NOT NULL,
     Turma int NOT NULL,
     Nota decimal(4,2) NOT NULL
);

INSERT INTO tb_escola(Nome_aluno, Data_nascimento, Turma, Nota)
VALUES("José Roberto", "1985-11-04", 12, 7.5);
 
INSERT INTO tb_escola(Nome_aluno, Data_nascimento, Turma, Nota)
VALUES("Joana d'Arc", "1998-12-02", 25, 9.5);
INSERT INTO tb_escola(Nome_aluno, Data_nascimento, Turma, Nota)
VALUES("Carlos Roberto", "1974-08-15", 12, 6.5);
INSERT INTO tb_escola(Nome_aluno, Data_nascimento, Turma, Nota)
VALUES("Mariana Nascimento", "2002-03-05", 38, 8);
INSERT INTO tb_escola(Nome_aluno, Data_nascimento, Turma, Nota)
VALUES("Gabriela Cantos", "1996-11-30", 25, 7.8);
INSERT INTO tb_escola(Nome_aluno, Data_nascimento, Turma, Nota)
VALUES("Albert Eistein", "1979-03-14", 02, 5.3);
INSERT INTO tb_escola(Nome_aluno, Data_nascimento, Turma, Nota)
VALUES("Marie Curie", "1977-11-09", 02, 9.8);
INSERT INTO tb_escola(Nome_aluno, Data_nascimento, Turma, Nota)
VALUES("Ada Lovelace", "2015-12-10", 43 , 8.3);

UPDATE tb_escola SET Nota = 6.8 WHERE id = 4;

SELECT * FROM tb_escola;
SELECT * FROM tb_escola WHERE nota > 7;
SELECT * FROM tb_escola WHERE nota < 7;