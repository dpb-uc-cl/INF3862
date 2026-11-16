SELECT
    SUM(b.pasos) AS pasos_totales,
    SUM(b.calorias_registradas) AS calorias,
    SUM(b.minutos_actividad) AS minutos
FROM FactBalanceDiario b
JOIN DimUsuario u ON b.usuario_key = u.usuario_key
JOIN DimFecha f ON b.fecha_key = f.fecha_key
WHERE u.AuthorId = :usuario
  AND f.fecha BETWEEN :inicio AND :fin;

