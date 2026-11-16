BEGIN;

-- Validar receta, calorias y porciones.
-- Si la validacion falla: ROLLBACK.
SELECT calorias
FROM Receta
WHERE RecipeId = :receta
AND calorias IS NOT NULL
AND calorias >= 0
AND :porciones > 0;

-- La aplicacion debe comprobar que existe
-- exactamente una fila antes de continuar.

INSERT INTO Comida
(comida_id, AuthorId, RecipeId,
fecha_hora, porciones)
VALUES
(:id, :usuario, :receta,
:fecha, :porciones);

INSERT INTO ResumenDiario
(AuthorId, fecha, calorias_consumidas,
actualizado_en)
SELECT
:usuario,
CAST(:fecha AS DATE),
:porciones * r.calorias,
CURRENT_TIMESTAMP
FROM Receta r
WHERE r.RecipeId = :receta
ON CONFLICT (AuthorId, fecha)
DO UPDATE SET
calorias_consumidas =
ResumenDiario.calorias_consumidas
+ EXCLUDED.calorias_consumidas,
actualizado_en = CURRENT_TIMESTAMP;

-- Confirmar solo si ambas escrituras
-- se realizaron correctamente.
COMMIT;

-- Ante cualquier error o validacion fallida,
-- ejecutar ROLLBACK en lugar de COMMIT.
