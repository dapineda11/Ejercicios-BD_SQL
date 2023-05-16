SELECT DATE_PART('HOUR', fecha_incorporacion) AS hora_inc,
	   DATE_PART('MINUTE', fecha_incorporacion) AS hora_inc,
	   DATE_PART('SECOND', fecha_incorporacion) AS hora_inc
FROM platzi.alumnos
