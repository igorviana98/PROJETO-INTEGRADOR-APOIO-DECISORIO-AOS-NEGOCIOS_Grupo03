use covid19_dw
go

-- Inserir Estados na dimensão
INSERT INTO dim_estado (nome_estado, sigla) VALUES
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ'),
('Minas Gerais', 'MG'),
('Bahia', 'BA'),
('Rio Grande do Sul', 'RS');

-- Inserir Meses/Ano na dimensão tempo
INSERT INTO dim_tempo (mes, ano) VALUES
('Jan', 2024), ('Feb', 2024), ('Mar', 2024), ('Apr', 2024),
('May', 2024), ('Jun', 2024), ('Jul', 2024), ('Aug', 2024),
('Sep', 2024), ('Oct', 2024), ('Nov', 2024), ('Dec', 2024);

-- Inserir dados na tabela fato (exemplo para SP em Jan/2024)
INSERT INTO fato_covid (
    id_estado, id_tempo, novos_casos, casos_acumulados,
    novos_obitos, obitos_acumulados, novos_vacinados, vacinados_acumulados
) VALUES
(1, 1, 12270, 12270, 485, 485, 10860, 10860);