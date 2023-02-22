CREATE DATABASE bisa_teste_2;

USE bisa_teste_2;

CREATE TABLE Tipos_Entradas (
id_tipo_entrada INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(255)
);

CREATE TABLE Tipos_Saidas (
id_tipo_saida INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(255)
);

CREATE TABLE Entradas (
id_entrada INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_tipo_entrada INT,
descricao VARCHAR(255),
data_hora_entrada DATETIME,
valor_entrada DOUBLE
);

CREATE TABLE Saidas (
id_saida INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_tipo_saida INT,
descricao VARCHAR(255),
data_hora_saida DATETIME,
valor_saida DOUBLE
);

ALTER TABLE Entradas
ADD CONSTRAINT fk_entrada_tipo_entrada
FOREIGN KEY (id_tipo_entrada) REFERENCES Tipos_Entradas(id_tipo_entrada);

ALTER TABLE Saidas
ADD CONSTRAINT fk_saida_tipo_saida
FOREIGN KEY (id_tipo_saida) REFERENCES Tipos_Saidas(id_tipo_saida);