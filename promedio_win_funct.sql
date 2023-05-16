select *, avg(colegiatura)
			over (partition by carrera_id)
			--sobre que voy a hacer la particion
			from platzi.alumnos
			order by avg desc;