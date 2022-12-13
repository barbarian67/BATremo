set pagesize 300
set linesize 200
select nomEmp "Contrato", nomAlu "Alummno"
from CONTRATOS inner join EMPRESAS on empresa=idEmp
			inner join ALUMNOS on alumno=idAlu;
			
select nomEmp "Convenio", nomAlu "Alumno"
from PRACTICAS inner join CONTACTOS  on laboral=contacto
			inner join ALUMNOS on alumno=idAlu
			inner join EMPRESAS on empresa=idEmp;
