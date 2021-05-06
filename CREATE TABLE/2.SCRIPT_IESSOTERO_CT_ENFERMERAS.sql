------------------------------------------------------
--     Autor       : I.E.S Sotero Hernandez	    --
--     Descripción : Create Table - Enfermeras	    --
--     Responsable : Sotero Hernandez		    --
------------------------------------------------------

CREATE TABLE enfermeras (

    id_enfermera NUMBER CONSTRAINT pk_enfermera PRIMARY KEY,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    dni VARCHAR(9) CONSTRAINT nn_dni NOT NULL
);