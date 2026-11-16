SELECT
    f.anio,
    f.mes,
    SUM(b.calorias_consumidas) AS consumidas,
    SUM(b.calorias_registradas) AS registradas
FROM FactBalanceDiario b
JOIN DimFecha f ON b.fecha_key = f.fecha_key
JOIN DimUsuario u ON b.usuario_key = u.usuario_key
WHERE u.AuthorId = :usuario
GROUP BY f.anio, f.mes
ORDER BY f.anio, f.mes;

