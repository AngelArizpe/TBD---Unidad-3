delimiter $$
create function comparar_numeros(num1 int, num2 int)
returns varchar(20) deterministic
begin
	declare resultado varchar(20);
    if num1 > num2 then
		set resultado = "Mayor";
	elseif num1 = num2 then
		set resultado = "Igual";
	else 
		set resultado = "Menor";
	end if;
    return resultado;
end$$
delimiter ;