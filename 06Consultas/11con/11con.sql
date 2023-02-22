set linesize 200
set pagesize 3000
column "Empresa" format a30
column "Sede" format a30
select nomEmp "Empresa", cpsed "Sede", count(idAlu) "Convenios"
from PRACTICAS inner join CONTACTOS C  on laboral=contacto
			inner join ALUMNOS on alumno=idAlu
			inner join EMPRESAS E on C.empresa=idEmp
			inner join SEDES S on S.empresa=idEmp
where cpsed like '11%'
group by nomEmp, cpsed;
