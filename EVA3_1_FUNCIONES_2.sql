create function mostrar_mensaje (cadena varchar(50))
returns varchar(100) deterministic
return concat("Tu mensaje: ", cadena);