
-- Creacion del nuevo usuario con privilegios

CREATE USER masteruser
IDENTIFIED BY 123456;

GRANT create session, create table,
create sequence, create view, create SYNONYM, select any table
TO masteruser;

-- privilegios ilimitados de espacio
GRANT UNLIMITED TABLESPACE TO masteruser;

save point permisos;


GRANT SELECT
ON AIRBNB.anemity 
TO masteruser; 

GRANT SELECT
ON AIRBNB.city 
TO masteruser;

GRANT SELECT
ON AIRBNB.place 
TO masteruser;

GRANT SELECT
ON AIRBNB.place_anemity 
TO masteruser;

GRANT SELECT
ON AIRBNB.review  
TO masteruser;

GRANT SELECT
ON  AIRBNB.states 
TO masteruser;

GRANT SELECT
ON AIRBNB.usuarios 
TO masteruser;
