SELECT DISTINCT colegiatura
FROM platzi.alumnos AS a1
WHERE 2 = (
	SELECT COUNT(DISTINCT colegiatura)
	FROM platzi.alumnos a2
	WHERE a1.colegiatura <= a2.colegiatura
);--compara las dos tablas 
-------------------------------------------------------------------------------------------
SELECT DISTINCT colegiatura, tutor_id
FROM platzi.alumnos
WHERE tutor_id = 20 --de acuerdo a ese tutor, cuanto es la segunda colegiatura mas alta
ORDER BY colegiatura DESC
LIMIT 1 OFFSET 1;--brinca 1 y traeme la que sigue
--------------------------------------------------------------------------------------------
SELECT * --traer
FROM platzi.alumnos AS datos_alumnos
INNER JOIN(
	SELECT DISTINCT colegiatura
	FROM platzi.alumnos
	--WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
) AS segunda_mayor_colegiatura
ON datos_alumnos.colegiatura = segunda_mayor_colegiatura.colegiatura;

