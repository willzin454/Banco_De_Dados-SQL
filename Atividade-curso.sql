DROP DATABASE IF EXISTS pais;

CREATE DATABASE pais;

USE pais;

DROP TABLE IF EXISTS estado;

CREATE TABLE estado(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR (200) NOT NULL
,sigla CHAR (4) NOT NULL
,CONSTRAINT pk_estado PRIMARY KEY (id)
);

INSERT INTO estado (nome,sigla) VALUES ('PARANA','PR');
INSERT INTO estado (nome,sigla) VALUES ('SÃO PAULO','SP');
INSERT INTO estado (nome,sigla) VALUES ('MATO GROSSO','MT');
INSERT INTO estado (nome,sigla) VALUES ('SANTA CATARINA','SC');
INSERT INTO estado (nome,sigla) VALUES ('RIO GRANDE DO SUL','RS');
INSERT INTO estado (id,nome,sigla) VALUES (DEFAULT,'ACRE','AC');
INSERT INTO estado (id,nome,sigla) VALUES (DEFAULT,'ALAGOAS','AL');
INSERT INTO estado (id,nome,sigla) VALUES (DEFAULT,'CEARA','CE');

SELECT * FROM estado;

DROP TABLE IF EXISTS cidade;

CREATE TABLE cidade(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR(255) NOT NULL UNIQUE
,estado_id INT NOT NULL
,CONSTRAINT pk_cidade PRIMARY KEY (id)
,CONSTRAINT fk_estado_cidade FOREIGN KEY (estado_id) REFERENCES estado (id)
,CONSTRAINT estado_cidade UNIQUE (nome,estado_id) 
);

INSERT INTO cidade (nome, estado_id) VALUES ('BAURU',2);
INSERT INTO cidade (nome, estado_id) VALUES ('MARINGÁ',1);
INSERT INTO cidade (nome, estado_id) VALUES ('GUARULHOS',2);
INSERT INTO cidade (nome, estado_id) VALUES ('CAMPINAS',2);
INSERT INTO cidade (nome, estado_id) VALUES ('FLORIANÓPOLIS',4);
INSERT INTO cidade (nome, estado_id) VALUES ('PARANAVAÍ',1);
INSERT INTO cidade (nome, estado_id) VALUES ('CUIABA',3);
INSERT INTO cidade (nome, estado_id) VALUES ('BALNEÁRIO CAMBORIÚ',4);
INSERT INTO cidade (nome, estado_id) VALUES ('LONDRINA',1);
INSERT INTO cidade (nome, estado_id) VALUES ('CASCAVEL',1);
INSERT INTO cidade (nome, estado_id) VALUES ('JOINVILLE',4);
INSERT INTO cidade (nome, estado_id) VALUES ('PORTO ALEGRE',5);
INSERT INTO cidade (nome, estado_id) VALUES ('BLUMENAL',4);
INSERT INTO cidade (nome, estado_id) VALUES ('BARRA DOS GARÇAS',3);
INSERT INTO cidade (nome, estado_id) VALUES ('CHAPECÓ',4);
INSERT INTO cidade (nome, estado_id) VALUES ('ITAJAÍ',4);
SELECT * FROM cidade;

-- UPDATE estado SET nome = 'PARANÁ' WHERE id = 1;

-- SELECT nome FROM estado; 

-- UPDATE estado SET nome = 'PARANA' WHERE estado.nome = 'PARARÁ';  -- Ta falando que para executar eu preciso desativar o "safe mode"

-- SELECT nome FROM estado;

-- ALTER TABLE estado DROP COLUMN nome;
-- ALTER TABLE estado ADD COLUMN nome VARCHAR (200) NOT NULL DEFAULT 'SEM NOME'; 

-- SELECT nome FROM estado;

-- ALTER TABLE estado DROP COLUMN nome;

CREATE TABLE cliente(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,nome VARCHAR (200) NOT NULL
);

INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'william');
INSERT INTO cliente (id,nome) VALUES (DEFAULT,'gabriel');

DELETE FROM cliente WHERE id = 38;

SELECT * FROM cliente;