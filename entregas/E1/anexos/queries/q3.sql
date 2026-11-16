INSERT INTO Dispositivo (
    device_id,
    AuthorId,
    modelo,
    fecha_vinculacion,
    zona_horaria
)
VALUES (
    :dispositivo,
    :usuario,
    :modelo,
    CURRENT_TIMESTAMP,
    :zona_horaria
);

