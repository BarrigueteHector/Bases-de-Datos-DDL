SQL> -- ************ CREATE TABLAS ************
SQL> CREATE TABLE ESTUDIANTE(
  2  ID NUMBER(10),
  3  CURP VARCHAR(10),
  4  NOMBRE VARCHAR(20),
  5  APPAT VARCHAR(20),
  6  APMAT VARCHAR(20),
  7  GRADO NUMBER(1),
  8  GRUPO CHAR(1)
  9  );

Tabla creada.

SQL> CREATE TABLE TUTOR(
  2  ID_TUTOR NUMBER(5),
  3  NOMBRE VARCHAR(20),
  4  APPAT VARCHAR(20),
  5  APMAT VARCHAR(20),
  6  SUELDO NUMBER(7,2), -- Los NUMBER declarados de esta forma indican (# total de digitos, # de digitos despues del punto), los digitos que despues del punto se contemplan en el total.
  7  FECHAING DATE
  8  );

Tabla creada.

SQL> -- ************ CREATE SEQUENCIAS ************
SQL> CREATE SEQUENCE SQ_ID_TUTOR
  2  START WITH 1
  3  INCREMENT BY 1;

Secuencia creada.

SQL> CREATE SEQUENCE SQ_ID_ESTUDIANTE
  2  START WITH 1000000000
  3  INCREMENT BY 1
  4  MAXVALUE 9999999999;

Secuencia creada.

SQL> -- Para utilizar una secuencia
SQL> INSERT INTO ESTUDIANTE VALUES(SQ_ID_ESTUDIANTE.NEXTVAL, 'ALCD123456', 'Daniel', 'Alarcon', 'Colin', '6', 'A');

1 fila creada.

SQL> INSERT INTO ESTUDIANTE VALUES(SQ_ID_ESTUDIANTE.NEXTVAL, 'CACF123456', 'Fernando', 'Carranza', 'Colmenares', '2', 'B');

1 fila creada.

SQL> SELECT * FROM ESTUDIANTE;

        ID CURP       NOMBRE               APPAT                                
---------- ---------- -------------------- --------------------                 
APMAT                     GRADO G                                               
-------------------- ---------- -                                               
1000000000 ALCD123456 Daniel               Alarcon                              
Colin                         6 A                                               
                                                                                
1000000001 CACF123456 Fernando             Carranza                             
Colmenares                    2 B                                               
                                                                                

SQL> INSERT INTO TUTOR VALUES(SQ_ID_TUTOR.NEXTVAL, 'Sergio', 'Hernandez', 'Martinez', 3000.00, '10/01/2012');

1 fila creada.

SQL> INSERT INTO TUTOR VALUES(SQ_ID_TUTOR.NEXTVAL, 'Leonardo', 'Montes', 'Jalpa', 3000.00, '12/04/2012');

1 fila creada.

SQL> SELECT * FROM TUTOR;

  ID_TUTOR NOMBRE               APPAT                APMAT                      
---------- -------------------- -------------------- --------------------       
    SUELDO FECHAING                                                             
---------- --------                                                             
         1 Sergio               Hernandez            Martinez                   
      3000 10/01/12                                                             
                                                                                
         2 Leonardo             Montes               Jalpa                      
      3000 12/04/12                                                             
                                                                                

SQL> -- ************ CREATE VISTAS ************
SQL> CREATE OR REPLACE VIEW VW_ESTUDIANTE
  2  AS
  3  SELECT *  FROM ESTUDIANTE;

Vista creada.

SQL> CREATE VIEW VW_ESTU
  2  AS
  3  SELECT *  FROM ESTUDIANTE;

Vista creada.

SQL> CREATE OR REPLACE VIEW VW_TUTOR
  2  AS
  3  SELECT ID_TUTOR, NOMBRE, SUELDO  FROM TUTOR;

Vista creada.

SQL> -- Lo anterior solo crea las vistas. Para ver una vista:
SQL> SELECT * FROM VW_ESTUDIANTE;

        ID CURP       NOMBRE               APPAT                                
---------- ---------- -------------------- --------------------                 
APMAT                     GRADO G                                               
-------------------- ---------- -                                               
1000000000 ALCD123456 Daniel               Alarcon                              
Colin                         6 A                                               
                                                                                
1000000001 CACF123456 Fernando             Carranza                             
Colmenares                    2 B                                               
                                                                                

SQL> SELECT * FROM VW_TUTOR;

  ID_TUTOR NOMBRE                   SUELDO                                      
---------- -------------------- ----------                                      
         1 Sergio                     3000                                      
         2 Leonardo                   3000                                      

SQL> -- ************ ALTER ************
SQL> ALTER TABLE TUTOR RENAME COLUMN SUELDO TO SALARIO;

Tabla modificada.

SQL> -- Permite el nombre de las columnas, tipo y si es o no obligatorio:
SQL> DESCRIBE TUTOR;
 Nombre                                    �Nulo?   Tipo
 ----------------------------------------- -------- ----------------------------
 ID_TUTOR                                           NUMBER(5)
 NOMBRE                                             VARCHAR2(20)
 APPAT                                              VARCHAR2(20)
 APMAT                                              VARCHAR2(20)
 SALARIO                                            NUMBER(7,2)
 FECHAING                                           DATE

SQL> SELECT * FROM TUTOR;

  ID_TUTOR NOMBRE               APPAT                APMAT                      
---------- -------------------- -------------------- --------------------       
   SALARIO FECHAING                                                             
---------- --------                                                             
         1 Sergio               Hernandez            Martinez                   
      3000 10/01/12                                                             
                                                                                
         2 Leonardo             Montes               Jalpa                      
      3000 12/04/12                                                             
                                                                                

SQL> ALTER TABLE TUTOR DROP COLUMN APMAT;

Tabla modificada.

SQL> DESCRIBE TUTOR;
 Nombre                                    �Nulo?   Tipo
 ----------------------------------------- -------- ----------------------------
 ID_TUTOR                                           NUMBER(5)
 NOMBRE                                             VARCHAR2(20)
 APPAT                                              VARCHAR2(20)
 SALARIO                                            NUMBER(7,2)
 FECHAING                                           DATE

SQL> SELECT * FROM TUTOR;

  ID_TUTOR NOMBRE               APPAT                   SALARIO FECHAING        
---------- -------------------- -------------------- ---------- --------        
         1 Sergio               Hernandez                  3000 10/01/12        
         2 Leonardo             Montes                     3000 12/04/12        

SQL> ALTER SEQUENCE SQ_ID_TUTOR INCREMENT BY 100;

Secuencia modificada.

SQL> INSERT INTO TUTOR VALUES(SQ_ID_TUTOR.NEXTVAL, 'Daniela', 'Guerrero', 25000.00, '01/07/2019');

1 fila creada.

SQL> INSERT INTO TUTOR VALUES(SQ_ID_TUTOR.NEXTVAL, 'Elena', 'Villanueva', 20000.00, '27/09/2019');

1 fila creada.

SQL> SELECT * FROM TUTOR;

  ID_TUTOR NOMBRE               APPAT                   SALARIO FECHAING        
---------- -------------------- -------------------- ---------- --------        
         1 Sergio               Hernandez                  3000 10/01/12        
         2 Leonardo             Montes                     3000 12/04/12        
       102 Daniela              Guerrero                  25000 01/07/19        
       202 Elena                Villanueva                20000 27/09/19        

SQL> -- ************ TRUNCATE ************
SQL> TRUNCATE TABLE ESTUDIANTE;

Tabla truncada.

SQL> SELECT * FROM ESTUDIANTE;

ninguna fila seleccionada

SQL> TRUNCATE TABLE TUTOR;

Tabla truncada.

SQL> SELECT * FROM ESTUDIANTE;

ninguna fila seleccionada

SQL> -- Los registros se eliminaron, pero las tablas todavia existen;
SQL> 
SQL> -- ************ DROP ************
SQL> DROP TABLE ESTUDIANTE;

Tabla borrada.

SQL> DROP TABLE TUTOR;

Tabla borrada.

SQL> DROP SEQUENCE SQ_ID_TUTOR;

Secuencia borrada.

SQL> DROP SEQUENCE SQ_ID_ESTUDIANTE;

Secuencia borrada.

SQL> DROP VIEW VW_ESTU;

Vista borrada.

SQL> DROP VIEW VW_TUTOR;

Vista borrada.