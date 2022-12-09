--recuerda modificar la cadena de conexión para alojar el esquema en base correspondiente
set echo on
set serveroutput on
alter session set NLS_DATE_FORMAT='DD-MM-YY';
spo bat.err
--creo el esquema con los privilegios mínimos que necesita
--establecer el tablespace por defecto es sólo para ejecución en versiones <11g
drop user BAT cascade;
create user BAT identified by bat
	default tablespace USERS
	quota 100M on USERS;
grant create session, create table, create procedure to BAT;
grant create public synonym, create sequence, create view to BAT;

--conecto con la cuenta que va a albergar el esquema
conn BAT/bat@fa
--creación de tablas
create table FORMAS(
	idFor number,
	desForm varchar(10),
	constraint pk_formas primary key(idFor)
);
create table RAMOS(
	idRam number,
	desRam varchar(50),
	constraint pk_ramos primary key(idRam)
);
create table TAMANOS(
	idTam number,
	desTam varchar(15),
	constraint pk_tamanos primary key(idTam)
);
create table CICLOS(
	idCic number,
	abre varchar2(4),
	constraint uq_ciclos unique(abre),
	constraint pk_ciclos primary key(idCic)
);
create table DISTRITOS(
	cp number,
	distri varchar2(70),
	constraint pk_municipios primary key(cp)
);
create table ALUMNOS(
	idAlu number,
	nomAlu varchar2(50) not null,
	movil varchar2(9),
	mail varchar2(50),
	curri varchar2(70),
	proy varchar2(70),
	fnac date,
	sex char(1),
	dis number(3) default 0,
	cpAlu number,
	constraint fk_cpalumnos foreign key(cpAlu) references DISTRITOS(cp),
	constraint ck_sex check(sex in ('M', 'H')),	
	constraint pk_alumnos primary key(idAlu)
);
create table TRAYECTOS(
	ciclo number,
	alumno number,
	fpromo date,
	constraint fk_02_A foreign key(alumno) references ALUMNOS(idAlu),
	constraint fk_02_B foreign key(ciclo) references CICLOS(idCic),
	constraint pk_trayectos primary key(ciclo,alumno)	
);
create table EMPRESAS(
	idEmp number,
	nomEmp varchar2(50),
	razon varchar2(50),
	numTra number,
	forma number,
	ramo number,
	tam number,
	constraint fk_forma foreign key(forma) references FORMAS(idFor),
	constraint fk_ramo foreign key(ramo) references RAMOS(idRam),
	constraint fk_tam foreign key(tam) references TAMANOS(idTam),
	constraint pk_empresas primary key(idEmp)
);
create table SEDES(
	idsed number,
	cpsed number,
	constraint fk_cpsedes foreign key(cpsed) references DISTRITOS(cp),
	constraint pk_sedes primary key(idsed)
);
create table CONTRATOS(
	empresa number,
	alumno number,
	inicon date,
	fincon date,
	pra char(1) default 'N',
	constraint ck_pra check(pra in ('S', 'N')),	
	constraint fk_01_A foreign key(alumno) references ALUMNOS(idAlu),
	constraint fk_01_B foreign key(empresa) references EMPRESAS(idEmp),
	constraint pk_contratos primary key(empresa,alumno)	
);
create table EMPLEADOS(
	idem number,
	nomem varchar2(40),
	constraint pk_empleados primary key(idem)	
);
create table CONTACTOS(
	contacto number,
	mailcon varchar2(50),
	movcon	varchar2(9),
	constraint fk_J1_A foreign key(contacto) references EMPLEADOS(idem),
	constraint pk_contactos primary key(contacto)	
);
create table PROFESORES(
	profesor number,
	constraint fk_J1_B foreign key(profesor) references EMPLEADOS(idem),
	constraint pk_profesores primary key(profesor)	
);
create table MEDIOS(
	idMed number,
	nomMed varchar2(20),
	constraint pk_medios primary key(idMed)	
);
create table MENSAJES(
	idMen number,
	emisor number,
	receptor number,
	contenido varchar2(1000),
	medio number,
	responde_a number,
	constraint fk_05 foreign key(emisor) references EMPLEADOS(idEm),
	constraint fk_06 foreign key(receptor) references EMPLEADOS(idEm),
	constraint fk_medios foreign key(medio) references MEDIOS(idmed),
	constraint pk_mensajes primary key(idMen)		
);
alter table MENSAJES add constraint fk_08 foreign key(responde_a) references MENSAJES(idMen);
--Oracle se lo come sin necesidad de hacer el alter pero otros SGBD no
create table PRACTICAS(
	idPra number,
	fini date,
	ffin date,
	tele char(1),
	eplus char(1),
	ciclo number,
	constraint ck_tele check(tele in ('S', 'N')),	
	constraint ck_erasmus check(eplus in ('S', 'N')),	
	constraint fk_04 foreign key(ciclo) references CICLOS(idcic),
	constraint pk_practicas primary key(idPra)		
);
create table TUTELAS(
	empleado number,
	practica number,
	constraint fk_07_A foreign key(empleado) references EMPLEADOS(idem),
	constraint fk_07_B foreign key(practica) references PRACTICAS(idpra),
	constraint pk_tutelas primary key(empleado,practica)		
);
create table OFERTAS(
	idOfe number,
	fofe date,
	kas number(8,2),
	tele char(1),
	contacto number,
	empresa number,
	constraint ck_teleofe check(tele in ('S', 'N')),
	constraint fk_09 foreign key(contacto) references CONTACTOS(contacto),
	constraint fk_12 foreign key(empresa) references EMPRESAS(idEmp),	
	constraint pk_ofertas primary key(idOfe)		
);
--los nombres de las columnas se pueden repetir (tele) porque tiene el namespace de su tabla,
--pero los de las restricciones no porque tienen el ámbito del esquema
create table TOOLS(
	idtoo number,
	nomtoo varchar2(50),
	constraint pk_tools primary key(idtoo)
);
create table PERFILES(
	idper number,
	nomper varchar2(50),
	constraint pk_perfiles primary key(idper)
);
--kas son euros, Oracle no tiene un tipo currency, otros SGBDs sí
create table TOOLBOXES(
	oferta number,
	tool number,
	constraint fk_10_A foreign key(oferta) references OFERTAS(idofe),
	constraint fk_10_B foreign key(tool) references TOOLS(idtoo),
	constraint pk_toolboxes primary key(oferta,tool)		
);
create table COMPETENCIAS(
	oferta number,
	perfil number,
	constraint fk_11_A foreign key(oferta) references OFERTAS(idofe),
	constraint fk_11_B foreign key(perfil) references PERFILES(idper),
	constraint pk_competencias primary key(oferta,perfil)		
);

spo off
