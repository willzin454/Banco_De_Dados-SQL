DROP DATABASE IF EXISTS banco_dados;

CREATE DATABASE banco_dados;

USE banco_dados;

-- DROP TABLE IF EXISTS  estacionamnto;

-- CREATE TABLE estacionamento(
-- id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
-- ,cnpj VARCHAR(255) NOT NULL UNIQUE
-- ,quantidade_de_vagas VARCHAR(255) NOT NULL
-- ,quantidade_de_funcionarios VARCHAR(255) NOT NULL
-- );

-- INSERT INTO estacionamento(cnpj,quantidade_de_vagas,quantidade_de_funcionarios) VALUES ('1234','20','2');
-- SELECT cnpj,quantidade_de_vagas,quantidade_de_funcionarios FROM estacionamento;

-- DROP TABLE IF EXISTS  veiculo;

-- CREATE TABLE veiculo(
-- id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
-- ,cor VARCHAR(255) NOT NULL UNIQUE
-- ,ano VARCHAR(255) NOT NULL
-- ,placa VARCHAR(255) NOT NULL
-- );

-- INSERT INTO veiculo(cor,ano,placa) VALUES ('azul','2003','abc-1234');
-- SELECT id,cor,ano,placa FROM veiculo;

-- DROP TABLE IF EXISTS  pagamento;

-- CREATE TABLE pagamento(
-- id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
-- ,data_ DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ,meio_de_pagamento VARCHAR(255) NOT NULL
-- ,valor VARCHAR(255) NOT NULL 
-- ,desconto VARCHAR(255) NOT NULL
-- );

-- INSERT INTO pagamento(meio_de_pagamento,valor,desconto) VALUES ('dinheiro','120,00','8%');
-- SELECT id,data_,meio_de_pagamento,valor,desconto FROM pagamento;