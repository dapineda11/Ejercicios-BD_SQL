select a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
		
	from platzi.alumnos as a 
	--alias para hacer funcionar columnas
	left join platzi.carreras as c--exclusivo
		on a.carrera_id = c.id--campo para unir tablas
		where c.id is null
		order by c.id desc;
--------------------------------------------------------------		
--se trae consulta independientemente de si hay valores nulos o no 
select a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
		
	from platzi.alumnos as a 
	--alias para hacer funcionar columnas
	left join platzi.carreras as c
		on a.carrera_id = c.id--campo para unir tablas
		order by c.id desc;
	---------------------------------------------------------------	
	--right join, trae todos las carreras sin importar si hay alumnos inscritos
	--o no
	select a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
		
	from platzi.alumnos as a 
	--alias para hacer funcionar columnas
	right join platzi.carreras as c
		on a.carrera_id = c.id--campo para unir tablas
		order by c.id desc
		;
		
		---------------------------------------------------------------	
	--right join exclusivo, trae todos las carreras sin importar si hay alumnos inscritos
	--o no
	select a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
		
	from platzi.alumnos as a 
	--alias para hacer funcionar columnas
	right join platzi.carreras as c--exclusivo
		on a.carrera_id = c.id--campo para unir tablas
		where a.id is null
		order by c.id desc
		
		;
		
		
----------------------------------------------------------
--inner join o join normal, interseccion de las tablas
select a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
		
	from platzi.alumnos as a 
	--alias para hacer funcionar columnas
	inner join platzi.carreras as c--exclusivo
		on a.carrera_id = c.id--campo para unir tablas
		order by c.id desc;
--------------------------------------------------------------
--diferencia simetrica, se encuentra en tabla a o b pero no en ambas
select a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
		
	from platzi.alumnos as a 
	--alias para hacer funcionar columnas
	full outer join platzi.carreras as c--exclusivo
		on a.carrera_id = c.id--campo para unir tablas
		where a.id is null or c.id is null--no exista en lado izq o derecho
		order by a.id desc
		, c.id desc;
		