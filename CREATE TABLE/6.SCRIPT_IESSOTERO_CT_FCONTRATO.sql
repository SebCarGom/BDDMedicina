------------------------------------------------------
--     Autor       : I.E.S Sotero Hernandez	    --
--     Descripción : Create Table - f_contratos	    --
--     Responsable : Sotero Hernandez 		    --
------------------------------------------------------

CREATE TABLE f_contratos (
 
    id_ciudad NUMBER ,
    id_enfermera NUMBER,
    f_inicio date,
    f_final date,

    CONSTRAINT pk_f_contratos PRIMARY KEY(id_ciudad, id_enfermera, f_inicio, f_final),
    CONSTRAINT fk_id_ciudad_fechas FOREIGN KEY (id_ciudad) REFERENCES ciudades (id_ciudad),
    CONSTRAINT fk_id_enfermera_fechas FOREIGN KEY (id_enfermera) REFERENCES enfermeras (id_enfermera),
    CONSTRAINT check_f_final CHECK (f_final > f_inicio),
    CONSTRAINT check_f_inicio CHECK (f_inicio < f_final)
);