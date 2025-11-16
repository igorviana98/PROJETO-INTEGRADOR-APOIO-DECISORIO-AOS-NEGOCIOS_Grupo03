
CREATE DATABASE covid19_dw;

CREATE TABLE dim_estado (
    id_estado SERIAL,
    nome_estado VARCHAR(50) NOT NULL,
    sigla CHAR(2) NOT NULL UNIQUE,
    PRIMARY KEY (id_estado)
);


CREATE TABLE dim_tempo (
    id_tempo SERIAL,
    mes VARCHAR(10) NOT NULL,
    ano INT NOT NULL,
    PRIMARY KEY (id_tempo)
);


CREATE TABLE fato_covid (
    id_fato SERIAL,
    id_estado INT NOT NULL,
    id_tempo INT NOT NULL,
    novos_casos INT NOT NULL,
    casos_acumulados INT NOT NULL,
    novos_obitos INT NOT NULL,
    obitos_acumulados INT NOT NULL,
    novos_vacinados INT NOT NULL,
    vacinados_acumulados INT NOT NULL,
    PRIMARY KEY (id_fato),
    FOREIGN KEY (id_estado) REFERENCES dim_estado(id_estado),
    FOREIGN KEY (id_tempo) REFERENCES dim_tempo(id_tempo)
);


