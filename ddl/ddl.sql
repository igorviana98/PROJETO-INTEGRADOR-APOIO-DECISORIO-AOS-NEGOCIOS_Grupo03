
CREATE DATABASE covid19_dw;
go
USE covid19_dw
GO

CREATE TABLE dim_estado (
    id_estado INT IDENTITY(1,1) PRIMARY KEY,
    nome_estado VARCHAR(50) NOT NULL,
    sigla CHAR(2) NOT NULL UNIQUE
);


CREATE TABLE dim_tempo (
    id_tempo INT IDENTITY(1,1) PRIMARY KEY,
    mes VARCHAR(10) NOT NULL,
    ano INT NOT NULL
);


CREATE TABLE fato_covid (
    id_fato INT IDENTITY(1,1) PRIMARY KEY,
    id_estado INT NOT NULL REFERENCES dim_estado(id_estado),
    id_tempo INT NOT NULL REFERENCES dim_tempo(id_tempo),
    novos_casos INT NOT NULL,
    casos_acumulados INT NOT NULL,
    novos_obitos INT NOT NULL,
    obitos_acumulados INT NOT NULL,
    novos_vacinados INT NOT NULL,
    vacinados_acumulados INT NOT NULL

);


