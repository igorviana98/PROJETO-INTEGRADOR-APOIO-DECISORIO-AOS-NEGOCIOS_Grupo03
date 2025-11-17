
-- Drill-Down: Casos por Estado e Mês
SELECT e.sigla AS Estado,
       t.mes + '/' + CAST(t.ano AS VARCHAR(4)) AS Periodo,
       SUM(f.novos_casos) AS Novos_Casos
FROM fato_covid f
JOIN dim_estado e ON f.id_estado = e.id_estado
JOIN dim_tempo t ON f.id_tempo = t.id_tempo
GROUP BY e.sigla, t.mes, t.ano, t.id_tempo
ORDER BY e.sigla, t.id_tempo;