CREATE DATABASE PROJETO_SSolve;

CREATE TABLE CLIENTE(
	ID INT IDENTITY PRIMARY KEY
	,NOME_FANTASIA VARCHAR(255)
	,CNPJ CHAR(14) NOT NULL UNIQUE
	,RAZAO_SOCIAL VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE ENDERECO_COMPLETO(
	ID INT IDENTITY PRIMARY KEY
	,LOGRADOURO VARCHAR(255) NOT NULL
	,NUMERO VARCHAR(4) NOT NULL
	,COMPLEMENTO VARCHAR(255)
	,BAIRRO VARCHAR(255) NOT NULL 
	,CIDADE VARCHAR(255) NOT NULL
	,UF VARCHAR (255) NOT NULL
	,CEP CHAR(9) NOT NULL
	,ID_CLIENTE INT FOREIGN KEY REFERENCES CLIENTE(ID)
);

CREATE TABLE SERVICO(
	ID INT IDENTITY PRIMARY KEY
	,ID_AREA_EMPRESA INT FOREIGN KEY REFERENCES AREA_EMPRESA(ID)
	,DATA_HORA_INICIO DATETIME NOT NULL
	,DATA_HORA_FINAL DATETIME NOT NULL
	,PRECO FLOAT NOT NULL
	,ID_TIPO_SERVICO INT FOREIGN KEY REFERENCES TIPO_SERVICO(ID)
	,ID_ITEM_SERVICO INT FOREIGN KEY REFERENCES ITEM_SERVICO(ID)
	,ID_CLIENTE INT FOREIGN KEY REFERENCES CLIENTE(ID)
	,DESCRICAO TEXT NOT NULL
);

CREATE TABLE AREA_EMPRESA(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(255) NOT NULL
);

CREATE TABLE TIPO_SERVICO(
	ID INT IDENTITY PRIMARY KEY
	,DESCRICAO TEXT NOT NULL
);

CREATE TABLE ITEM_SERVICO(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(255) NOT NULL
);

CREATE TABLE FUNCIONARIO(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR(255) NOT NULL
);

CREATE TABLE SERVICOS_FUNCIONARIOS(
	ID_SERVICO INT FOREIGN KEY REFERENCES SERVICO(ID)
	,ID_FUNCIONARIO INT FOREIGN KEY REFERENCES FUNCIONARIO(ID)
);