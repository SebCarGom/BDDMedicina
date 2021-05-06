------------------------------------------------------
--     Autor       : I.E.S Sotero Hernandez	    --
--     Descripción : Create Table - hospitales	    --
--     Responsable : Sotero Hernandez               --
------------------------------------------------------

CREATE TABLE hospitales (
 
    id_ciudad NUMBER,
    hospital VARCHAR(50),

    CONSTRAINT pk_hospital_ciudad PRIMARY KEY(id_ciudad, hospital),
    CONSTRAINT fk_id_ciudad_hospi FOREIGN KEY (id_ciudad) REFERENCES ciudades (id_ciudad)
);