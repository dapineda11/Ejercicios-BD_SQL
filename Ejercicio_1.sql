SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id BETWEEN 1 AND 5
;