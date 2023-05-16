select carrera_id, count(*) as cuenta
from platzi.alumnos
group by carrera_id---cuenta de alumnos por carrera
order by cuenta desc;

--join entre las dos tablas
select a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
	from platzi.alumnos as a
	left join platzi.carreras as c
	--nos interesa la tabla alumnos entonces se trae primero
	on a.carrera_id = c.id---condicion de union
	--traiga 
	where c.id is NULL
	--trae los alumnos cuando el id sea nulo
	
	order by a.carrera_id;