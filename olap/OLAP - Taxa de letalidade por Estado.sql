
-- 4. Taxa de letalidade por Estado
SELECT e.sigla AS Estado,
       ROUND(
           (CAST(SUM(f.obitos_acumulados) AS FLOAT) / NULLIF(CAST(SUM(f.casos_acumulados) AS FLOAT), 0)) * 100,
           2
       ) AS Taxa_Letalidade
FROM fato_covid f
JOIN dim_estado e ON f.id_estado = e.id_estado
GROUP BY e.sigla
ORDER BY Taxa_Letalidade DESC;