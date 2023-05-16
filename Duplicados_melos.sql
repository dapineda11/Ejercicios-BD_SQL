select *
from platzi.alumnos as fuera_xd
where (
	select count(*)
	from platzi.alumnos as dentro_xd
	where fuera_xd.id=dentro_xd.id
)>1;--id igual a otro id

select (platzi.alumnos.*)::text, count(*)--cast a texto
from platzi.alumnos
group by platzi.alumnos.*
having count(*) >1;--- hasta aqui, solo con que haya un id repetido, ya

---------------------------------------------------------------
SELECT *
FROM platzi.alumnos AS fuera
WHERE (
	SELECT COUNT(*)
	FROM platzi.alumnos AS dentro
	WHERE fuera.id = dentro.id
)>1;


SELECT (
		platzi.alumnos.nombre,
		platzi.alumnos.apellido,
		platzi.alumnos.email,
		platzi.alumnos.colegiatura,
		platzi.alumnos.fecha_incorporacion,
		platzi.alumnos.carrera_id,
		platzi.alumnos.tutor_id

)::text, COUNT(*)------------cast
FROM platzi.alumnos
GROUP BY platzi.alumnos.nombre,-----hacer tamb para la clausula groupby
		platzi.alumnos.apellido,
		platzi.alumnos.email,
		platzi.alumnos.colegiatura,
		platzi.alumnos.fecha_incorporacion,
		platzi.alumnos.carrera_id,
		platzi.alumnos.tutor_id
HAVING COUNT(*) > 1;
