delimiter $$
create function es_par(numero int)
returns varchar(20) deterministic
begin
	declare residuo int;
    declare resultado varchar(20);
    set residuo = mod(numero, 2);
    if residuo = 0 then 
		set resultado = "Es par";
	else 
		set resultado = "Es impar";
	end if;
    return resultado;
end$$
delimiter ;