CREATE SCHEMA clase_invertida;
USE clase_invertida;

CREATE TABLE t1 (
a INT,
b CHAR(10));

RENAME TABLE t1 TO t2;
/*TAMBIÉN PODRÍAMOS ESCRIBIRLO DE LA SIGUIENTE MANERA:
ALTER TABLE t1
RENAME TO t2*/

ALTER TABLE t2
MODIFY COLUMN a TINYINT NOT NULL;

ALTER TABLE t2
MODIFY COLUMN b CHAR(20); 
ALTER TABLE t2
RENAME COLUMN b TO c;

ALTER TABLE t2
ADD COLUMN d TIMESTAMP;

ALTER TABLE t2
DROP COLUMN C;

/*FUNCIONA*/

CREATE TABLE t3 LIKE t2;

DROP TABLE IF EXISTS t2;
RENAME TABLE t3 TO t1;

/*Mis tablas están en otra bbdd por lo que creo la tabla en la base de datos en la que trabajo*/
CREATE TABLE clase_invertida.customers_mod LIKE creacion_tienda.customers;
/*Copio los datos de la tabla customers a la nueva tabla*/
INSERT INTO clase_invertida.customers_mod SELECT * FROM creacion_tienda.customers;

















