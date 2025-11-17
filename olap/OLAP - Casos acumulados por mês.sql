

-- 2. Casos acumulados por mês (tendência temporal)
SELECT t.mes + '/' + CAST(t.ano AS VARCHAR(4)) AS Periodo,
       SUM(f.casos_acumulados) AS Casos_Acumulados
FROM fato_covid f
JOIN dim_tempo t ON f.id_tempo = t.id_tempo
GROUP BY t.mes, t.ano, t.id_tempo
ORDER BY t.ano, t.id_tempo;