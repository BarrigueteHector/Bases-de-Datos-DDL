-- ALTER: Sentencia utilizada para modificar una tabla.

-- Parte de esta sentencia se apoya de los CONSTRAINT (revisar repositorio dedicado a los CONSTRAINT).
-- Para los CONSTRAINT se utiliza ALTER TABLE si al momento de crear la tabla no fueron colocados.

-- ************ CONSTRAINT ************

-- PRIMARY KEY o UNIQUE
ALTER TABLE <TABLE_NAME> ADD CONSTRAINT <NAME> <TYPE> (<COLUMN>);
    -- TABLE_NAME: nombre de la tabla en la que se aplicará el CONSTRAINT
    -- NAME: nombre del CONSTRAINT
    -- TYPE: PRIMARY KEY o UNIQUE
    -- COLUMN: nombre de la columna que conformará el CONSTRAINT, puede ser más de una columna, solo se deben separar por comas.

-- FOREIGN KEY
ALTER TABLE <TABLE_NAME> ADD CONSTRAINT <NAME> FOREIGN KEY (<COLUMN>) REFERENCES <TABLE_REFERENCE> (<COLUMN_REFERENCE>);
    -- TABLE_NAME: nombre de la tabla en la que se aplicará el CONSTRAINT
    -- NAME: nombre del CONSTRAINT
    -- COLUMN: nombre de la columna que conformará el CONSTRAINT, puede ser más de una columna. Solo puede colocarse un nombre.
    -- TABLE_REFERENCE: nombre de la tabla que se utilizará como referencia.
    -- COLUMN_REFERENCE: nombre de la columna que se utilizará como referencia.

-- CHECK
ALTER TABLE <TABLE_NAME> ADD CONSTRAINT <NAME> CHECK (<CONDITION>);

-- o

ALTER TABLE <TABLE_NAME> ADD CHECK (<CONDITION>);
    -- TABLE_NAME: nombre de la tabla en la que se aplicará el CONSTRAINT
    -- NAME: nombre del CONSTRAINT
    -- CONDITION: condición que se aplicará al CONSTRAINT.

-- ELIMINAR CONSTRAINT
ALTER TABLE <TABLE_NAME> DROP CONSTRAINT <NAME>;
    -- TABLE_NAME: nombre de la tabla en la que se aplicará el CONSTRAINT
    -- NAME: nombre del CONSTRAINT

-- ************ TABLA ************

-- TAMAÑO O TIPO DE DATO DE UNA COLUMNA (Puede ser modificado solo uno o ambos)
ALTER TABLE <TABLE_NAME> MODIFY <COLUMN> <TYPE>(<SIZE>);
    -- TABLE_NAME: nombre de la tabla en la que se aplicará el ALTER
    -- COLUMN: nombre de la columna que se modificará
    -- TYPE: tipo de dato (NUMBER, VARCHAR, DATE, CHAR, etc.) de la columna.
    -- SIZE: tamaño de la columna, solo aplica para los tipo NUMBER, VARCHAR y CHAR.

-- NOMBRE DE UNA COLUMNA
ALTER TABLE <TABLE_NAME> RENAME COLUMN <COLUMN> TO <NEW_COLUMN>;
    -- TABLE_NAME: nombre de la tabla en la que se aplicará el ALTER
    -- COLUMN: nombre actual de la columna
    -- NEW_COLUMN: nuevo nombre de la columna.

-- ELIMINAR UNA COLUMNA
ALTER TABLE <TABLE_NAME> DROP COLUMN <COLUMN>;
    -- TABLE_NAME: nombre de la tabla en la que se aplicará el ALTER
    -- COLUMN: nombre de la columna que se eliminará.

-- ************ SEQUENCIA ************
ALTER SEQUENCE <SEQUENCE_NAME> INCREMENT BY <INCREMENT>;
    -- SEQUENCE_NAME: nombre de la secuencia que se modificará
    -- INCREMENT: nuevo valor del incremento.