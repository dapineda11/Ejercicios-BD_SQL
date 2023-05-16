--join entre las dos tablas
select a.nombre,
		a.apellido,
		a.carrera_id,---CREA SUBTABLAS CON ALIAS
		c.id,
		c.carrera
	from platzi.alumnos as a
	full outer join platzi.carreras as c
	--nos interesa la tabla alumnos entonces se trae primero
	on a.carrera_id = c.id---condicion de union
	order by a.carrera_id;