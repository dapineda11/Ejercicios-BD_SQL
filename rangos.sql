select *
from platzi.alumnos
where tutor_id >=1
and tutor_id<=10;

select *
from platzi.alumnos
where tutor_id between 1 and 10;

select int4range (1, 20) @> 3;

select numrange(11.1,22.2) && numrange (20, 30);

select lower (int8range(15,25));

select int4range (10,20) * int4range (15,25);

select isempty (numrange(1,5));

select * from platzi.alumnos where int4range (10,20) @>tutor_id