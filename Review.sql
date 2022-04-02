
INSERT INTO review 
VALUES (1,SYSDATE , SYSDATE, 111 , 1 ,
'Hermoso Lugar' );

INSERT INTO review 
VALUES (2,SYSDATE , SYSDATE, 110 , 1 ,
'Increible' );

INSERT INTO review 
VALUES (3,SYSDATE , SYSDATE, 120 , 2 ,
'Impresionante' );

INSERT INTO review 
VALUES (4,SYSDATE , SYSDATE, 110 , 1 ,
'Espetacular' );

SELECT
    * FROM review;
    
    save point Review;