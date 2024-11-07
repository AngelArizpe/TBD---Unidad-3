delimiter $$
create function potencia_loop(num int, expo int)
returns int deterministic 
begin
	declare resultado int;
    declare cont int default 1;
    set resultado = num;
    
    ciclo: loop 
		set resultado = resultado*num;
        set cont = cont + 1;
        if cont = expo then 
			leave ciclo;
        end if;
    end loop ciclo;
    
    return resultado;
    
end$$
delimiter ;