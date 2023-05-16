SELECT *
FROM (
	SELECT *,
		DATE_PART('MONTH', fecha_incorporacion) as mes_inc,
		DATE_PART('YEAR', fecha_incorporacion) as ano_inc
	from platzi.alumnos
)as alumnos_ano
where ano_inc = 2018
and mes_inc = 5
;