use covid19_dw2
go
-- 3. Ranking dos estados por vacinação
SELECT e.nome_estado AS Estado,
       SUM(f.vacinados_acumulados) AS Total_Vacinados
FROM fato_covid f
JOIN dim_estado e ON f.id_estado = e.id_estado
GROUP BY e.nome_estado
ORDER BY Total_Vacinados DESC;
