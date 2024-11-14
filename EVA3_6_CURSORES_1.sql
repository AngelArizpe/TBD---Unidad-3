delimiter $$
create procedure insertar_prueba(clave int)
begin
	declare exit handler for sqlstate '23000'
    begin
		select 'Error: clave duplicada' as mensaje;
    end;
    insert into prueba(id) value (clave);
    select 'Clave correctamente insertada' as mensaje;
end$$
delimiter ;