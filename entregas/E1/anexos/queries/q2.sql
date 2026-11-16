SELECT
    c.fecha_hora,
    r.Name,
    c.porciones
FROM Comida c
JOIN Receta r ON c.RecipeId = r.RecipeId
WHERE c.AuthorId = :usuario
ORDER BY c.fecha_hora DESC
LIMIT 20;

