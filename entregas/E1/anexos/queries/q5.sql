SELECT
r.categoria,
SUM(f.calorias) AS calorias,
SUM(f.proteinas) AS proteinas,
COUNT(*) AS comidas
FROM FactConsumo f
JOIN DimReceta r
ON f.receta_key = r.receta_key
JOIN DimFecha d
ON f.fecha_key = d.fecha_key
WHERE d.fecha BETWEEN :inicio AND :fin
GROUP BY r.categoria
ORDER BY calorias DESC;
