SELECT ROW_NUMBER() OVER() AS row_id, *
FROM platzi.alumnos
OFFSET(
	SELECT COUNT(*)/2
	FROM platzi.alumnos
);