SELECT *
FROM platzi.alumnos 
WHERE id IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id != 30
);

SELECT COUNT(*) 
FROM platzi.alumnos 
WHERE tutor_id != 30;

--SELECT tutor_id, 
--COUNT(*) as count 
--FROM platzi.alumnos 
--GROUP BY tutor_id
--HAVING tutor_id = 30 
--AND COUNT(*) < (SELECT COUNT(*) FROM platzi.alumnos);