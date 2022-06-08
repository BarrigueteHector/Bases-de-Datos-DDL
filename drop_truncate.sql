-- DROP: Eliminacion de estructuras

    DROP SEQUENCE <SEQUENCE_NAME> -- Elimina una secuencia.

    DROP TABLE <TABLE_NAME> -- Elimina una tabla.

    DROP VIEW <VIEW_NAME> -- Elimina una vista.

-- TRUNCATE: Elimina todos los registros de una tabla.

    TRUNCATE TABLE <TABLE_NAME> -- Elimina todos los registros de una tabla.

    -- La diferencia entre TRUNCATE y DELETE es que el TRUNCATE se almacena en memoria (se sabe que se ejecutó esta instrucción).