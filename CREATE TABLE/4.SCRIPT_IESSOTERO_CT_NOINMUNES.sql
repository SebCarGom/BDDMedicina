------------------------------------------------------
--     Autor       : I.E.S Sotero Hernandez	    --
--     Descripción : Create Table - no inmunes	    --
--     Responsable : Sotero Hernandez               --
------------------------------------------------------
CREATE TABLE no_inmunes (

    id_no_inmune NUMBER CONSTRAINT pk_noinm PRIMARY KEY,
    nombre VARCHAR(40) CONSTRAINT non_nombre NOT NULL,
    apellidos VARCHAR(40),
    dni VARCHAR(9) CONSTRAINT non_dni NOT NULL,
    telefono NUMBER,
	edad NUMBER,
    f_vacunacion DATE,
    id_vacuna NUMBER,
    
    CONSTRAINT fk_vacuna FOREIGN KEY (id_vacuna) REFERENCES vacunas(id_vacuna)
);
