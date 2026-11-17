# Proyecto Wearables para Food.com

**INF3862 — Plataformas de Big Data para Data Science**  
Pontificia Universidad Católica de Chile

## Descripción

Diseño de una plataforma que integra recetas de Food.com con datos de dispositivos wearables para analizar el consumo calórico y la actividad física de los usuarios.

## Entrega 1

Esta entrega es **conceptual**. Se presenta el diseño inicial de la plataforma, sin implementar ni desplegar los sistemas propuestos.

Incluye:

- Caracterización de las fuentes de datos.
- Modelo relacional OLTP.
- Modelo dimensional OLAP.
- Seis consultas SQL en pseudocódigo.
- Arquitectura inicial.

## Tecnologías propuestas

- **PostgreSQL:** operaciones transaccionales (OLTP).
- **DuckDB:** consultas analíticas (OLAP).
- **Parquet:** almacenamiento analítico columnar.
- **Python:** procesamiento e integración de datos.

Estas tecnologías forman parte del diseño propuesto y no representan una implementación funcional en esta entrega.

## Estructura del repositorio

```text
.
├── README.md
├── decisiones.md
├── entregas/
│   ├── E1/
│   │   ├── informe.pdf
│   │   └── anexos/
│   │       ├── parquets.txt
│   │       ├── queries/
│   │       │   ├── q1.sql
│   │       │   ├── q2.sql
│   │       │   ├── q3.sql
│   │       │   ├── q4.sql
│   │       │   ├── q5.sql
│   │       │   └── q6.sql
│   │       ├── resumen_volumen.csv
│   │       └── resumen_volumen.json
│   ├── E2/
│   │   ├── anexos/
│   │   └── src/
│   └── E3/
│       ├── anexos/
│       └── src/
├── datos/
│   ├── food.com/
│   ├── wearables/
│   └── LEEME.md
├── pyproject.toml
└── uv.lock
```

Se omiten archivos auxiliares de Git y pruebas para simplificar la estructura.

## Datos

Los datos se encuentran en `datos/food.com/` y `datos/wearables/`. Las instrucciones correspondientes están en `datos/LEEME.md`.

El conjunto analizado contiene aproximadamente **17,49 millones de registros**. Los resultados del análisis de volumen se encuentran en `entregas/E1/anexos/`.

## Documentación

- `entregas/E1/informe.pdf`: informe de la primera entrega.
- `entregas/E1/anexos/queries/`: consultas SQL propuestas.
- `decisiones.md`: registro de decisiones del proyecto.

## Autor

Daniel Pérez Bernardi

