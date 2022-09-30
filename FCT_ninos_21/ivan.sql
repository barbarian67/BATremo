set echo on

set pagesize 20
set linesize 200

--select * from FCT.CONTACTOS;

--select nomPro "Profesor" from FCT.PROFESORES inner join FCT.CONTACTOS on idPro=profesor;

--select persona, nomPro from (select nomPro "Profesor" from FCT.PROFESORES inner join FCT.CONTACTOS on idPro=profesor) ;

--select persona, nomPro from FCT.COMUNICACIONES inner join FCT.CONTACTOS on contacto=idCont inner join FCT.PROFESORES on idPro=profesor;

select nomPer "Trabajador", nomPro "Profesor" from FCT.PERSONAS inner join FCT.COMUNICACIONES on persona=idPer inner join FCT.CONTACTOS on contacto=idCont inner join FCT.PROFESORES on idPro=profesor;
