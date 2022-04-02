-- Creacion del Usuario airbnb

-- Buscamos el usuario si exite para asegurar si es necesario crear lo

SELECT
    * FROM dba_users
    WHERE username = UPPER('airbnb');



