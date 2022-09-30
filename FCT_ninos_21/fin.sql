set pagesize 300
set linesize 200
--column "Respuestas" format a70
column "Interlocutor" format a30
column "Profesor" format a20
column mensaje format a60
select NomPer "Interlocutor", NomPro "Profesor" 
from CONTACTOS inner join PROFESORES on idPro=profesor
			inner join COMUNICACIONES on idCont = contacto
			inner join PERSONAS on idPer=persona
group by NomPer, NomPro
having count(mensaje)>2;

