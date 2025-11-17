-- 1. Total de casos e Óbitos por Estado
SELECT e.sigla AS Estado,
       SUM(f.novos_casos) AS Total_Casos,
       SUM(f.novos_obitos) AS Total_Obitos
FROM fato_covid f
JOIN dim_estado e ON f.id_estado = e.id_estado
GROUP BY e.sigla
ORDER BY Total_Casos DESC;
