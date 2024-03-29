--consulta para el esquema cuando CONTACTOS estaba relacionado con 
--EMPRESAS y no con SEDES
set linesize 200
set pagesize 3000
column "Empresa" format a30
column "Sede" format a30
select nomEmp "Empresa", cpsed "Sede", count(idAlu) "Convenios"
from PRACTICAS P inner join CONTACTOS C  on P.laboral=C.contacto
			inner join ALUMNOS A on P.alumno=A.idAlu
			inner join SEDES S on C.sede=idSed
			inner join EMPRESAS E on S.empresa=E.idEmp
where cpsed like '11%'
group by nomEmp, cpsed;
