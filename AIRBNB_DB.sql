/* Crear Usuario para el Taller 1 19-03-2022  */

-- Primera parte del taller.

-- Me conecto desde Sys para crear un nuegvo usuario y asignarle los privilegios
-- dandonle tamaño de espacio y privilegios Grant.

-- Parte del SYS

CREATE USER  AIRBNB
IDENTIFIED BY ******;

GRANT create session, create table,
create sequence, create view
TO AIRBNB;

GRANT UNLIMITED TABLESPACE TO AIRBNB;

-- Fin de SYS


-- Usuiaro AIRBNB.
-- Creacion de Tablas.

-- Parte 1
    CREATE TABLE Usuarios
(   id_user         VARCHAR2(50) ,
    updated_at      DATE DEFAULT SYSDATE ,
    created_at      DATE DEFAULT SYSDATE  ,
    email           varchar2(50),
    password_User   varchar2(50),
    frist_name      varchar2(50),
    last_name       varchar2(50));
    
    
    -- Fin Parte 1
    
    --Parte 2
    CREATE TABLE States
(   id_state        VARCHAR2(50) ,
    updated_at      DATE DEFAULT SYSDATE ,
    created_at      DATE DEFAULT SYSDATE  ,
    name_State      varchar2(50));
    
    CREATE TABLE City
(   id_city         VARCHAR2(50) ,
    updated_at      DATE DEFAULT SYSDATE ,
    created_at      DATE DEFAULT SYSDATE  ,
    State_city_id   varchar2(50),
    name_city       varchar2(50));

   --Fin Parte 2
   
    --Parte 3
    
    CREATE TABLE Anemity
(   id_anemity      VARCHAR2(50) ,
    updated_at      DATE DEFAULT SYSDATE ,
    created_at      DATE DEFAULT SYSDATE  ,
    name_anemity    varchar2(50));
    
    --Fin Parte 3
    
    --Parte 4
    
     CREATE TABLE Place
(   id_place            VARCHAR2(50) ,
    updated_at          DATE DEFAULT SYSDATE ,
    created_at          DATE DEFAULT SYSDATE  ,
    User_place_id       varchar2(50),
    name_place          varchar2(50),
    City_place_id       varchar2(50),
    Desciption          varchar2(50),
    number_rooms        NUMBER(10),
    number_bathrooms    NUMBER(10),
    max_guest           NUMBER(10),
    price_by_night      NUMBER(20),
    latitude            FLOAT(20),
    longitude           FLOAT(20));
    
    CREATE TABLE Place_Anemity
(   anemity_anemityplace_id    VARCHAR2(50) ,
    place_anemityplace_id     VARCHAR2(50));
    
    
    CREATE TABLE Review
(   id_review                  VARCHAR2(50) ,
    update_at                  DATE DEFAULT SYSDATE ,
    created_at                 DATE DEFAULT SYSDATE  ,
    user_review_id             varchar2(50),
    place_review_id            varchar2(50),
    text_review                varchar2(50));
    --Fin Parte 4
    
    --Parte 5
    --ALTERS PK
    
    ALTER TABLE Usuarios add CONSTRAINT Us_user_id_pk PRIMARY KEY(id_user);
    ALTER TABLE States add CONSTRAINT Sta_State_id_pk PRIMARY KEY(id_state);
    ALTER TABLE City add CONSTRAINT Ci_City_id_pk PRIMARY KEY(id_city);
    ALTER TABLE Anemity add CONSTRAINT Ane_anemity_id_pk PRIMARY KEY(id_anemity);
    ALTER TABLE Review add CONSTRAINT rev_review__id_pk PRIMARY KEY(id_review);
    ALTER TABLE Place add CONSTRAINT pla_place_id_pk PRIMARY KEY(id_place);
    
    --Fin Parte 5
    
    --Parte 6
    
    --ALTERS FK 
    
    ALTER TABLE City add CONSTRAINT City_State_fk FOREIGN KEY (State_city_id) REFERENCES States(id_state);
    ALTER TABLE Place add CONSTRAINT Place_User_id_fk FOREIGN KEY (User_place_id) REFERENCES Usuarios(id_user);
    ALTER TABLE Place add CONSTRAINT Place_City_id_fk FOREIGN KEY (City_place_id) REFERENCES City(id_city);
    ALTER TABLE Place_Anemity add CONSTRAINT anemity_anemityplace_id_fk FOREIGN KEY (anemity_anemityplace_id) REFERENCES Anemity(id_anemity);
    ALTER TABLE Place_Anemity add CONSTRAINT place_anemityplace_id_fk FOREIGN KEY (place_anemityplace_id) REFERENCES Place(id_place);
    ALTER TABLE Review add CONSTRAINT user_review_id_fk FOREIGN KEY (user_review_id) REFERENCES Usuarios(id_user);
    ALTER TABLE Review add CONSTRAINT place_review_id_fk FOREIGN KEY (place_review_id) REFERENCES Place(id_place);
    
    --Fin Parte 6