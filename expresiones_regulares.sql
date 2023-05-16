--expresiones regulares
select email
from platzi.alumnos
where email ~*'[A-Z0-9._%+-]+@google[A-Z0-9.-]+\.[A-Z]{2,4}';--filtrar correos google
--filtrar emails con patron comun