delimiter $$

create procedure clave_rfc()
begin
	declare _nombre varchar(50);
    declare ap_pat varchar(50);
    declare ap_mat varchar(50);
    declare fec_nac date;
    declare _id int;
    
    declare salir int default false;
    
    declare rfc varchar(12);
    
    declare datos_personas cursor for
    select nombre, apellido_pat, apellido_mat, fecha_nac, id from personas;
    
    declare continue handler for not found set salir = true;
    
    open datos_personas;
    clave_loop: loop
		fetch datos_personas into _nombre, ap_pat, ap_mat, fec_nac, _id;
        if salir then
			leave clave_loop;
		end if;
        set ap_mat = ifnull(ap_mat, 'X');
		set rfc = upper(concat(substring(ap_pat, 1, 2), substring(ap_mat, 1 , 1), substring(_nombre, 1, 1)));
        set rfc = concat(rfc, date_format(fec_nac, '%y%m%d'));
        
        update personas set clave_rfc = rfc where id = _id;
	end loop;
end $$
delimiter ;