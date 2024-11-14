DELIMITER $$
CREATE FUNCTION agregar_pais(id VARCHAR(2), nombre VARCHAR(50))
RETURNS INT deterministic MODIFIES SQL DATA

BEGIN
	INSERT INTO countries(country_name, country_id, region_id) 
    VALUES(nombre, id, 1);
    RETURN 1; 
END $$

DELIMITER ;