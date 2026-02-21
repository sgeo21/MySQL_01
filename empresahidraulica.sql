-- Apagar Banco de Dados db_industriahidraulica
DROP DATABASE db_industriahidraulica;

-- Recriar o Banco de dados db_industriahidraulica, para trabalho da ETEC
CREATE DATABASE db_industriahidraulica;
 
-- Selecionar o Banco de Dados db_industriahidraulica
USE db_industriahidraulica;

CREATE TABLE tb_Departamento (
    id_departamento BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(500),
    PRIMARY KEY (id_departamento),
	FOREIGN KEY (matricula_gerente) REFERENCES Funcionario(id_matricula)
);

CREATE TABLE tb_Projeto (
    id_projeto BIGINT AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    duracao TIME,
    PRIMARY KEY (id_projeto)
);

CREATE TABLE tb_Peca (
    id_peca BIGINT AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_peca)
);

CREATE TABLE tb_Funcionario (
    id_matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    PRIMARY KEY (id_matricula)
);






 