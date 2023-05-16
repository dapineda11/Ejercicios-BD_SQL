--generacion de rangos al vuelo

select *
from generate_series(1,5,0.2);--(in,fin,paso)

select current_date + s.a as fechas
from generate_series(0,14,7) as s(a);
--sumar dias a la fecha actual

select * from generate_series('2022-03-10 00:00:00'::timestamp,
							 '2022-03-20 12:00:00', '10 hours');
							 
				 
select a.id,
		a.nombre,
		a.apellido,
		a.carrera_id,
		s.a
		from platzi.alumnos as a
		inner join generate_series(0,10) as s(a)
		on s.a = a.carrera_id
		order by a.carrera_id;