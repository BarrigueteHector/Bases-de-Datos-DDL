# Bases de Datos: DDL (Data Definition Language)

Definición
--------------------------------------------------------------------------------------------------------------------------------------------------------
Permite la creación y modificación de la estructura de la base de datos (tablas, vistas, etc.).

Desarrollo
--------------------------------------------------------------------------------------------------------------------------------------------------------
DDL se compone de 5 instrucciones:
1. [CREATE](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/create.sql) = creación de estructuras
2. [ALTER](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/alter.sql) = cambiar alguna estructura
3. [RENAME](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/alter.sql) = renombrar una estructura ***Revisar NOTA #2***
4. [DROP](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/drop_truncate.sql) = eliminar estructuras ***(no confundir con DELETE)*** 
5. [TRUNCATE](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/drop_truncate.sql) = eliminar registros ***(parecido a DELETE, pero no es lo mismo)***
 
En CREATE veremos las estructuras:
- **TABLESPACE**: espacio en el cual se guardará todo lo que haga el usuario. 
- **USUARIOS**: persona que trabajará en la base de datos. ***Revisar NOTA #3***
- **TABLAS**: estructura compuesta por columnas (campo) y renglones (registros)
- **VISTAS**: estructura que guarda una consulta. No se ve afectada por cambios futuros que se hagan sobre la tabla con la que se hizo la vista
- **SEQUENCIAS**: estructura que crea una secuencia de números que se incrementa automáticamente. Ideal si el campo bajo el cual se aplica es la PRIMARY KEY.

Para  **ALTER** debemos de saber lo que es un CONSTRAINT y su forma de declarar al momento de crear la tabla. En caso de no saber como revisar el reposiotiro **CONSTRAINT** ***(En proceso)***

NOTAS
--------------------------------------------------------------------------------------------------------------------------------------------------------
**NOTA #1**: Los reporsitorios **Bases de Datos** están hechos con base en el curso de Bases de Datos de la Facultad de Ingeniería de la UNAM. 

**NOTA #2**: RENAME y parte de DROP se encuentra en [ALTER](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/alter.sql).

**NOTA #3**: Cabe mencionar que para la creación del usuario solo se ve la parte del CREATE (valga la redundancia), si se desea ver de manera más completa todo el proceso, incluyendo los privilegios, se debe revisar el repoitorio [Usuario y Privilegios](https://github.com/BarrigueteHector/Bases-de-Datos-Oracle-SQL-Usuario-y-pivilegios)
