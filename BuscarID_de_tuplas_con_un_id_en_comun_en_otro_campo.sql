SELECT *
FROM platzi.alumnos
WHERE id IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
);

SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30