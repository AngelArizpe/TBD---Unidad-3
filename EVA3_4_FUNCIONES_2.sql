delimiter $$
create function generar_correo(nombre varchar (25), apellido varchar(25), dep varchar(50))
returns varchar(100) deterministic
begin
	declare correo varchar(100);
    set correo = concat(lower(left(nombre, 1)), lower(apellido), '@', lower(dep), '.com');
    return correo;
end$$
delimiter ;