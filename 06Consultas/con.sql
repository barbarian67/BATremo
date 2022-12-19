set pagesize 3000
set linesize 200
column "Convenio" format a50
column "Alumno" format a50
select nomEmp "Convenio", nomAlu "Alumno" 
from PRACTICAS inner join ALUMNOS on alumno=idAlu
               inner join CONTACTOS on contacto=laboral
               inner join EMPRESAS on empresa=idEmp;


create view CONVENIOS as(
select nomEmp "Convenio", nomAlu "Alumno" 
from PRACTICAS inner join ALUMNOS on alumno=idAlu
               inner join CONTACTOS on contacto=laboral
               inner join EMPRESAS on empresa=idEmp
);               