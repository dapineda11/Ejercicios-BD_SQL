SELECT *
FROM platzi.alumnos
WHERE (EXTRACT (YEAR FROM fecha_incorporacion)) = 2018;

SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion)) = 2019;


SELECT *
FROM platzi.alumnos
WHERE (EXTRACT (YEAR FROM fecha_incorporacion)) = 2018
		AND (EXTRACT (MONTH FROM fecha_incorporacion))=5;