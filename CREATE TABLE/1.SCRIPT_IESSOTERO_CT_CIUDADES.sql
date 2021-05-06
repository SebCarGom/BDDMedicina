------------------------------------------------------
--     Autor       : I.E.S Sotero Hernandez	    --
--     Descripción : Create Table - Ciudades	    --
--     Responsable : Sotero Hernandez		    --
------------------------------------------------------


CREATE TABLE ciudades (
    
    id_ciudad NUMBER CONSTRAINT  pk_ciudad PRIMARY KEY,
    cod_des VARCHAR(40) CONSTRAINT nn_cod_des NOT NULL,
    nombre VARCHAR(40) CONSTRAINT nn_nombre NOT NULL,
    provincia VARCHAR(40) 
);