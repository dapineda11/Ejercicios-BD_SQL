SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) 	AS alumnos_with_row_num
	WHERE row_id IN (1,5,10,15,20);