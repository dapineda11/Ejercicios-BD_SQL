SELECT EXTRACT (YEAR FROM fecha_incorporacion) AS ano_inc
FROM platzi.alumnos;

SELECT DATE_PART('YEAR', fecha_incorporacion) AS ano_inc,
	   DATE_PART('MONTH', fecha_incorporacion) AS ano_inc,
	   DATE_PART('DAY', fecha_incorporacion) AS ano_inc
FROM platzi.alumnos