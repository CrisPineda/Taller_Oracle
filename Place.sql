
INSERT INTO place 
VALUES (1,SYSDATE , SYSDATE, 110  ,'Casa Campestre Tu Hogar', 1 , 'Casa con Pscina ',
4,4,12,600000,10,25);

INSERT INTO place 
VALUES (2,SYSDATE , SYSDATE, 111  ,'Hotel las Marias', 2 , 'Lindo Hospedaje ',
1,1,2,600000,10,25);

INSERT INTO place 
VALUES (3,SYSDATE , SYSDATE, 111 ,'Zona de Camping', 3 , 'Zona Natural ',
0,0,10,600000,20,25);

INSERT INTO place 
VALUES (4,SYSDATE , SYSDATE, 111 ,'Cabaña', 1 ,  'Madera Fina Natural ',
3,4,2,600000,10,12);

SELECT
    * FROM place;
    
  save point Place;