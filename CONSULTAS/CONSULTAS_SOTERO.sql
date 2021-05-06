------------------------------------------------------
--     Autor       : I.E.S Sotero Hernandez	    --
--     Descripción : CONSULTAS			    --
--     Responsable : Sotero Hernandez		    --
------------------------------------------------------
/* Consultas Complejas */
-- Se filtran enfermeras de la ciudad 1
SELECT enf.id_enfermera, enf.nombre
FROM enfermeras enf INNER JOIN sedes_contratos scon
ON enf.id_enfermera = scon.id_enfermera
WHERE scon.id_ciudad = 1;

 

-- Se filtran las vacunas y se muestran las que tiene id 1 y 2  junto a los datos de los pacientes no inmunes
SELECT noi.*
FROM vacunas vac RIGHT JOIN no_inmunes noi
ON vac.id_vacuna = noi.id_vacuna
WHERE vac.id_vacuna IN (1,2);

 

-- Se muestran las provincias que terminan en "a"
SELECT ciu.provincia, ciu.nombre, hos.hospital
FROM ciudades ciu LEFT JOIN hospitales hos
ON hos.id_ciudad = ciu.id_ciudad
WHERE ciu.provincia LIKE '%a';

 

/* Consultas Medias */
-- Se muestran la cantidad de enfermeras que hay en cada ciudad
SELECT scon.id_ciudad, COUNT(enf.id_enfermera) 
FROM enfermeras enf INNER JOIN sedes_contratos scon
ON enf.id_enfermera = scon.id_enfermera
GROUP BY scon.id_ciudad;

 

-- Se muestras los pacientes que tengan mas de 63 años
SELECT nombre, apellidos, edad
FROM no_inmunes
where edad > 63
GROUP BY nombre, apellidos, edad;

 

-- Se muestran las ciudades que tienen mas de 1 hospital 
SELECT COUNT(*) as num_hospitales, id_ciudad
FROM sedes_contratos    
GROUP BY id_ciudad
HAVING COUNT(*) > 1;

/* Consultas Simples */
    
-- Se cuentan las provincias de Barcelona que hay en la base de datos    
SELECT COUNT(provincia) FROM ciudades
WHERE provincia = 'Barcelona';

 

-- Se muestran las vacunas asginadadas a cada paciente
SELECT * FROM no_inmunes
WHERE id_vacuna IN (1,3);

 

-- Se muestran las enfermeras cuyos nombres empiecen en A
SELECT * FROM enfermeras
WHERE nombre LIKE 'A%';

 

-- Se muestran las vacunas cuyo numero de dosis no esta comprendido entre 2 y 4
SELECT * FROM vacunas
WHERE num_dosis NOT BETWEEN 2 AND 4;

 

-- Se muestran a los pacientes cuyos dni terminen en Z o cuyos telefonos terminen en 56
SELECT * FROM no_inmunes
WHERE dni LIKE '%Z' OR telefono LIKE '%56%';