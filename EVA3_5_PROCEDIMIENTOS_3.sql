delimiter $$

drop procedure if exists consultar_empleados;

create procedure consultar_empleados(id_empleado int)
begin
	select * from employees
    where employee_id = id_empleado;
end$$
delimiter ;
