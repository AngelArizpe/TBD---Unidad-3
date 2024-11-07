delimiter $$
create function potencia_while(num int, expo int)
returns int deterministic
begin
	declare resultado int;
    declare cont int default 1;
    set resultado = num;
    
    while cont < expo do
		set resultado = resultado*num;
        set cont = cont + 1;
	end while;
    
    return resultado;
    
end$$
delimiter ;