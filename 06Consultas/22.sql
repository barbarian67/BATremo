select nomAlu
from PRACTICAS inner join ALUMNOS on alumno=idAlu
where extract(year from fini)='2022';
