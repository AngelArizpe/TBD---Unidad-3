delimiter $$
create function sumatoria_loop(num int)
returns int deterministic 
begin
	declare sumatoria int default 0;
    declare cont int default 0;
    
    ciclo: loop 
		set sumatoria = sumatoria + cont;
        set cont = cont + 1;
        if cont > num then 
			leave ciclo;
        end if;
    end loop ciclo;
    
    return sumatoria;
    
end$$
delimiter ;