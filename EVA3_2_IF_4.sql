delimiter $$
create function conversion_temp(formula int, valor int)
returns varchar(20) deterministic
begin
	declare resultado varchar(20);
    case formula
		when 1 then set resultado = ((9/5)*valor)+32;
        when 2 then set resultado = (5/9)*(valor-32);
        when 3 then set resultado = valor+273;
        else
			set resultado = "Número inválido";
	end case;
    return resultado;
end $$
delimiter ;