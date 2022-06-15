# Bases de Datos: DDL (Data Definition Language)

Definición
--------------------------------------------------------------------------------------------------------------------------------------------------------
Permite la creación y modificación de la estructura de la base de datos (tablas, vistas, etc.).

Desarrollo
--------------------------------------------------------------------------------------------------------------------------------------------------------
DDL se compone de 5 instrucciones:
1. [CREATE](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/create.sql): creación de estructuras.
2. [ALTER](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/alter.sql): cambiar una estructura.
3. [RENAME](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/alter.sql): renombrar una estructura. ***Revisar NOTA #2***
4. [DROP](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/drop_truncate.sql): eliminar estructuras. ***(no confundir con DELETE)*** 
5. [TRUNCATE](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/drop_truncate.sql): eliminar registros. ***(parecido a DELETE, pero no es lo mismo)***
 
En CREATE veremos las estructuras:
- **TABLESPACE**: espacio en el cual se guardará todo lo que haga el usuario. 
- **USUARIOS**: persona que trabajará en la base de datos. ***Revisar NOTA #3***
- **TABLAS**: estructura compuesta por columnas (campo) y renglones (registros).
- **VISTAS**: estructura que guarda una consulta. No se ve afectada por cambios futuros que se hagan sobre la tabla con la que se hizo la vista.
- **SEQUENCIAS**: estructura que crea una secuencia de números que se incrementa automáticamente. Ideal si el campo bajo el cual se aplica es la **PRIMARY KEY**.

Para  **ALTER** debemos de saber lo que es un **CONSTRAINT** y su forma alterna de declarar al momento de crear la tabla. En caso de no saber, revisar el reposiotiro [Constraint](https://github.com/BarrigueteHector/Bases-de-Datos-CONSTRAINT/edit/main/README.md).

Se incluyó un archivo [Ejemplo](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/ejemplo.sql) en donde se muestran ejemplos de las instrucciones DDL. Cabe mencionar que para **ALTER** no se presentó la parte de los **CONSTRAINT**, esto porque se pretende presentar un ejemplo de ellos en un solo archivo y repositorio. ***Revisar NOTA #4***

NOTAS
--------------------------------------------------------------------------------------------------------------------------------------------------------
**NOTA #1**: Los repositorios **Bases de Datos** están hechos con base en el curso de Bases de Datos de la Facultad de Ingeniería de la UNAM. 

**NOTA #2**: RENAME y parte de DROP se encuentra en [ALTER](https://github.com/BarrigueteHector/Bases-de-Datos-DDL/blob/main/alter.sql).

**NOTA #3**: Para la creación del usuario solo se ve la parte del CREATE (valga la redundancia), si se desea ver de manera más completa (incluyendo los privilegios) se debe revisar el repoitorio [Usuario y DCL](https://github.com/BarrigueteHector/Bases-de-Datos-Oracle-SQL-Usuario-y-pivilegios).

**NOTA #4**: Para crear el ejemplo se utilizó SQL PLUS (***version 19c***).
