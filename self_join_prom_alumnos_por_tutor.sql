select avg(alumnos_por_tutor) as promedio
from(
select 	concat (t.nombre,' ',t.apellido) as profe,
		count(*) as alumnos_por_tutor
	from platzi.alumnos as a
	inner join platzi.alumnos as t on a.tutor_id= t.id
	
	group by profe
)
as alumnos_tutor