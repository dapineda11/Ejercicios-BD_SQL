select fecha_incorporacion as f_inc
from platzi.alumnos
order by f_inc desc
limit 1;

select carrera_id, max(fecha_incorporacion)
from platzi.alumnos
group by carrera_id
order by carrera_id

-----fecha mas reciente en la que un alumno se incorporo
