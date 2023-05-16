select 	--concat (a.nombre ,' ',
		--a.apellido) as alumno,
		concat (t.nombre,' ',t.apellido) as profe,
		count(*) as profe_con_mas_work
	from platzi.alumnos as a
	inner join platzi.alumnos as t on a.tutor_id= t.id
	
	group by profe
	order by profe_con_mas_work desc
	limit 10
	;