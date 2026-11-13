# Datos del proyecto · INF3862 Plataformas Big Data para Data Science

```
foodcom/
  recipes.parquet    522.517 recetas (Food.com)
  reviews.parquet    1.401.982 reseñas de 271.907 usuarios (Food.com)
wearable/
  dispositivos.csv   relojes vinculados a usuarios de Food.com
  mediciones/        mediciones de los relojes, por día y hora de recepción
  sesiones.jsonl     actividades registradas
  comidas.csv        recetas preparadas por los usuarios
  LEEME.md           diccionario de datos del wearable
```

## Cómo se relacionan

- `wearable/dispositivos.csv` → `AuthorId` es el usuario de `foodcom/reviews.parquet`.
- `wearable/comidas.csv` → `AuthorId` (usuario) y `RecipeId` (receta de `foodcom/recipes.parquet`).
- En `foodcom/recipes.parquet`, `AuthorId` es el **autor de la receta**, no quien la cocina o la reseña.

## Fuentes

- Food.com - Recipes and Reviews, Kaggle, licencia CC0:
  https://www.kaggle.com/datasets/irkaal/foodcom-recipes-and-reviews
  Varias columnas de `recipes.parquet` son listas (ingredientes, palabras clave,
  instrucciones, imágenes) y los tiempos vienen en duración ISO 8601 (p. ej. `PT45M`).
- Wearable: datos sintéticos creados por el equipo docente para este curso.
