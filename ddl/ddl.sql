-- Criação do banco (opcional)
CREATE DATABASE covid19_dw;

-- Conectar ao banco antes de executar os comandos abaixo

-- Tabela de Estados
CREATE TABLE dim_estado (
    id_estado  PRIMARY KEY,
    nome_estado VARCHAR(50) NOT NULL,
    sigla CHAR(2) NOT NULL UNIQUE
);

-- Tabela de Tempo (Mês/Ano)
CREATE TABLE dim_tempo (
    id_tempo  PRIMARY KEY,
    mes VARCHAR(10) NOT NULL,
    ano INT NOT NULL
);

-- Tabela Fato Covid-19
CREATE TABLE fato_covid (
    id_fato  PRIMARY KEY,
    id_estado INT NOT NULL REFERENCES dim_estado(id_estado),
    id_tempo INT NOT NULL REFERENCES dim_tempo(id_tempo),
    novos_casos INT NOT NULL,
    casos_acumulados INT NOT NULL,
    novos_obitos INT NOT NULL,
    obitos_acumulados INT NOT NULL,
    novos_vacinados INT NOT NULL,
    vacinados_acumulados INT NOT NULL
);