------------------------------------------------------
--     Autor       : I.E.S Sotero Hernandez	    --
--     Descripción : Create Table - sedescontratos  --
--     Responsable : Sotero Hernandez               --
------------------------------------------------------

CREATE TABLE sedes_contratos (
 
    id_ciudad NUMBER,
    id_enfermera NUMBER,
    hospital VARCHAR(50),

        CONSTRAINT pk_hospitales PRIMARY KEY(id_ciudad, id_enfermera),
    CONSTRAINT fk_id_ciudad_hosp FOREIGN KEY (id_ciudad) REFERENCES ciudades (id_ciudad),
    CONSTRAINT fk_id_enfermera_hosp FOREIGN KEY (id_enfermera) REFERENCES enfermeras (id_enfermera)
);