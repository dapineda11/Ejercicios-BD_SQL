select *
from (
	select id,
	row_number() over(
	partition by
		nombre, 
		apellido,
		email,
		colegiatura,
		fecha_incorporacion,
		carrera_id,
		tutor_id
		order by id asc
	)as row,
	*
	from platzi.alumnos
	)as duplicados
where duplicados.row>1;