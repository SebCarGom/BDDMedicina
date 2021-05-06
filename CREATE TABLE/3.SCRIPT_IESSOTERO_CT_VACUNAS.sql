------------------------------------------------------
--     Autor       : I.E.S Sotero Hernandez	    --
--     Descripción : Create Table - vacunas	    --
--     Responsable : Sotero Hernandez               --
------------------------------------------------------

CREATE TABLE vacunas(
    id_vacuna NUMBER CONSTRAINT pk_vacuna PRIMARY KEY,
    farmaceutica VARCHAR(30) CONSTRAINT nn_farmaceutica NOT NULL,
    num_dosis NUMBER
);