select numrange(
	(select min (tutor_id) from platzi.alumnos),
	(select max (tutor_id) from platzi.alumnos)
)* numrange(
	(select min (carrera_id) from platzi.alumnos),
	(select max (carrera_id) from platzi.alumnos)
) as melo