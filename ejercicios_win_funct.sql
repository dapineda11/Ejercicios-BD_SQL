select 
row_number() 
over(order by fecha_incorporacion) 
as fila_id, * 
from platzi.alumnos;

select
first_value(colegiatura)
over(partition by carrera_id) as primera_colegiatura,*
from platzi.alumnos;


select
last_value(colegiatura)
over(partition by carrera_id) as ult_colegiatura,*
from platzi.alumnos;


select
nth_value(colegiatura, 3)
over(partition by carrera_id) as enesima_colegiatura,*
from platzi.alumnos;

select *,
dense_rank() over(partition by carrera_id order by colegiatura desc) 
as ranking_coleg
from platzi.alumnos
order by carrera_id, ranking_coleg;
--dense_rank es mas melo que rank()

--(rank - 1)/(total - 1)
select *,
percent_rank() over(partition by carrera_id order by colegiatura desc) 
as percent_rank
from platzi.alumnos
order by percent_rank;
