delimiter $$
create function potencia_repeat(num int, expo int)
returns int deterministic
begin
	declare resultado int;
    declare cont int default 1;
    set resultado = num;
    
    repeat
		set resultado = resultado*num;
        set cont = cont + 1;
	until cont = expo end repeat;
    return resultado;
    
end$$
delimiter ;