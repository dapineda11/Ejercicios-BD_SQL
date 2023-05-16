--generar triangulos
select lpad('sql',15,'*');
--quiero un string de 15 espacios agregando relleno a la izquierda 
--con '*'

select lpad('*',id,'*')
from platzi.alumnos
where id<10;
--rellena mientras la cadena sea menor a 10 espacios

select lpad('*',id,'*')
from platzi.alumnos
where id<10
order by carrera_id;
--rellena mientras la cadena sea menor a 10 espacios

select rpad('a',cast(row_id as int),'*')
from (
select row_number() over(order by carrera_id) as row_id,*
	from platzi.alumnos
)	as alumnos_with_row_id
where row_id <= 5
order by carrera_id;