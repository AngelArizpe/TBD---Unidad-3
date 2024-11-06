delimiter $$
create function dia_semana(numero int)
returns varchar(10) deterministic
begin
	declare resultado varchar(10);
    case numero
		when 1 then set resultado = "Domingo";
        when 2 then set resultado = "Lunes";
        when 3 then set resultado = "Martes";
        when 4 then set resultado = "Miércoles";
        when 5 then set resultado = "Jueves";
        when 6 then set resultado = "Viernes";
        when 7 then set resultado = "Sábado";
        else
			set resultado = "No válido";
    end case;
    return resultado;
end$$
delimiter ;