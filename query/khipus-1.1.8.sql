--Khipus MRP PROD-60: Hacer que la leche cruda sea parametrizable.
--Diego H. Loza Fernandez
--Fecha de creacion: 19/11/2013
Insert into ESTADOARTICULO (IDESTADOARTICULO,COD_ART,NO_CIA,ESTADO,DESCRIPCION,IDCOMPANIA) 
values ('2','26','01','PARAMETRIZABLE','ESTE ARTICULO ES PARAMETRIZABLE','1');  

ALTER TABLE ORDENINSUMO ADD (FORMULAMATEMATICA	VARCHAR2(500 BYTE));
---
ALTER TABLE ORDENINSUMO ADD (COSTOUNITARIO	NUMBER(16,6) null);
ALTER TABLE ORDENINSUMO ADD (COSTOTOTAL	NUMBER(16,6) null);
---
ALTER TABLE ORDENMATERIAL RENAME COLUMN PRECIOTOTAL TO COSTOTOTAL;
ALTER TABLE ORDENMATERIAL MODIFY COSTOTOTAL	NUMBER(16,6);
ALTER TABLE ORDENMATERIAL ADD (COSTOUNITARIO	NUMBER(16,6) null);
--commit;