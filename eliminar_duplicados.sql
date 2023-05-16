-------------------------------------------------------
DELETE FROM platzi.alumnos
WHERE id NOT IN (
  SELECT MIN(id)
  FROM platzi.alumnos
  GROUP BY nombre, 
		apellido,
		email,
		colegiatura,
		fecha_incorporacion,
		carrera_id,
		tutor_id
)
