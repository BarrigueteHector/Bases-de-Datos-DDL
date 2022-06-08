-- CREATE: Creación de estructuras. En este repositorio veremos la creación de tablas, vistas, usuarios y sequencias.

-- ************ TABLESPACE ************
CREATE TABLESPACE <TABLESPACE_NAME>
DATAFILE '<PATH>/<NAME>.dbf'
SIZE <SIZE>;
    -- TABLESPACE_NAME: Nombre del TABLESPACE
    -- PATH: Direccion donde se creara el archivo TABLESPACE
    -- NAME: Nombre del archivo TABLESPACE
    -- SIZE: Tamaño del archivo TABLESPACE (en bytes).

-- ************ USUARIOS ************
CREATE USER <NAME> IDENTIFIED BY "<PASSWORD>"
DEFAULT TABLESPACE <TABLESPACE_NAME>;
    -- NAME: nombre del usuario
    -- PASSWORD: contraseña del usuario
    -- TABLESPACE_NAME: nombre del TABLESPACE

    -- NOTA Se dedicó un repositorio para los usuarios (incluye la asignación de privilegios), pero se abordará de manera rapida.

-- ************ TABLAS ************
CREATE TABLE <NAME> (
    <COLUMN> <TYPE>(<SIZE>),
    ...
    <COLUMN> <TYPE>(<SIZE>)
);
    -- NAME: nombre de la tabla
    -- COLUMN: nombre de la columna
    -- TYPE: tipo de dato (NUMBER, VARCHAR, DATE, CHAR, etc.) de la columna. 
    -- SIZE: tamaño de la columna, solo aplica para los tipo NUMBER, VARCHAR y CHAR.

-- ************ VISTAS ************
CREATE OR REPLACE VIEW <NAME> 
AS 
SELECT <COLUMN> , ... , <COLUMN> 
FROM <TABLE>;
    -- NAME: nombre de la vista
    -- COLUMN: nombre(s) de la(s) columna que conformaran la vista. si se sustituye por un asterisco se seleccionan todas las columnas.   
    -- TABLE: nombre de la tabla que se utilizara para la vista.

    -- NOTA: revisar DQL porque la vista es una consulta.

-- ************ SEQUENCIAS ************
 CREATE SEQUENCE <NAME>  
    INCREMENT BY <INCREMENT_VALUE> -- incremento de la secuencia, por defecto es 1
    START WITH <START_VALUE> --  valor inicial de la secuencia
    MINVALUE <MIN> -- Valor mínimo (opcional)
    MAXVALUE <MAX> -- Valor máximo (opcional)
    CYCLE; -- Si se llega al máximo, se regresa al mínimo (opcional)