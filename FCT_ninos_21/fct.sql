set echo on
spo FCT.err
--crear el esquema con los privilegios mínimos que necesita
drop user FCT cascade;
create user FCT identified by fctu
	quota 100M on USERS;
grant create session, create table, create procedure to FCT;
grant create public synonym, create sequence, create view to FCT;

--CONECTAR FCT FTC
conn FCT/fct@delfos

--creacion de tablas
create table CICLOS(
    idCic number(6),
    nomCic varchar2(80),
    constraint pk_01_CICLOS primary key(idCic),
    constraint uq_01_CICLOS unique(nomCic)
);
create table MEDIOS(
    idMed number(6),
    nomMed varchar2(80),
    constraint pk_01_MEDIOS primary key(idMed)
);
create table JERARQUIAS(
    idJer number(6),
    nomJer varchar2(80),
    constraint pk_01_JERARQUIAS primary key(idJer)
);
create table PROFESORES(
    idPro number(2),
    NomPro varchar2(100),
    DNI varchar2(9),
    MensajeDefault varchar2(800),
    CICLO number(6),
    mailPro varchar2(100),
    constraint pk_01_profe primary key(idPro),
    constraint fk_01_profe foreign key(CICLO) references CICLOS(idCic),
    constraint uq_01_profe unique(mailPro),
    constraint uq_02_profe unique(NomPro),
    constraint uq_03_profe unique(DNI)
);
create table ALUMNOS(
    idAlu number(6),
    NomAlu varchar2(80),
    DNI varchar2(9) not null,
    Fnac date  not null,
    mailAlu varchar2(100),
    TlfAlu number(9),
    Linkedin varchar2(80),
    Carnet number (1) not null,
    CICLO number(6),
    Idioma varchar2(80),
    PROFESOR number(6),
    constraint pk_01_ALUMNOS primary key(idAlu),
    constraint uq_01_ALUMNOS unique(NomAlu),
    constraint uq_02_ALUMNOS unique(DNI),
    constraint uq_03_ALUMNOS unique(mailAlu),
    constraint uq_04_ALUMNOS unique(TlfAlu),
    constraint uq_05_ALUMNOS unique(Linkedin),
    constraint fk_01_ALUMNOS foreign key(CICLO) references CICLOS(idCic),
    constraint fk_02_ALUMNOS foreign key(PROFESOR) references PROFESORES(idPro)
);
create table PRACTICAS(
    idPrac number(6),
    Erasmus number(1) not null,
    DesPrac varchar2(800),
    FPini date,
    FPfin date,
    constraint pk_01_PRACTICAS primary key(idPrac),
    constraint uq_01_PRACTICAS unique(DesPrac)
);
create table EMPRESAS(
    idEmp number(6),
    NomEm varchar2(80),
    Logo blob,
    DescEm varchar2(800),
    Teletrabajo number(1),
    Empleados varchar(200),
    Actividad varchar2(800),
    constraint pk_01_EMPRESA primary key(idEmp),
    constraint uq_01_EMPRESA unique(NomEm)
);
create table PUESTOS(
    idPue  number(6),
    DesPue varchar2(800),
    Cargo varchar2(80),
    Jornada varchar2(60),
    Expe number(2),
    IdiomasP varchar2(80),
    CarnetP number(1),
    Movi varchar2(80),
    Titu number(1),
    Genero varchar2(80),
    PRACTICA number(6),
    EMPRESA number(6),
    constraint pk_01_PUESTOS primary key(idPue),
    constraint fk_01_PUESTOS foreign key (PRACTICA) references PRACTICAS(idPrac),
    constraint fk_02_PUESTOS foreign key (EMPRESA) references EMPRESAS(idEmp)
);
create table TAREAS(
    idTar number(6),
    DesTar varchar2(900),
    constraint pk_01_TAREAS primary key(idTar)
);
create table PERSONAS(
    idPer number(6),
    NomPer varchar2(80),
    Jerarquia number(6),
    constraint pk_01_PERSONAS primary key(idPer),
    constraint fk_01_PERSONAS foreign key(Jerarquia) references JERARQUIAS(idJer)
);
create table TRABAJOS(
    idTra number(6),
    Puesto varchar2(80),
    Sueldo number(6),
    EMPRESA number(6),
    constraint pk_01_TRABAJOS primary key(idTra),
    constraint fk_01_TRABAJOS foreign key(EMPRESA) references EMPRESAS(idEmp)
);
create table SEDES(
    idSede number(6),
    NomSed varchar2(800),
    Ubicacion varchar2(800),
    Direccion varchar2(800),
    EMPRESA number(6),
    constraint pk_01_SEDES primary key(idSede),
    constraint uq_01_SEDES unique(NomSed),
    constraint uq_02_SEDES unique(Direccion),
    constraint fk_01_SEDES foreign key (EMPRESA) references EMPRESAS(idEmp)
);
create table CONTACTOS(
    IdCont number(6),
    FCont date,
    Mensaje varchar2(800),
    RESPUESTA number(6),
    PROFESOR number(6),
    Medio varchar2(80),
    constraint pk_01_CONTACTO primary key(IdCont),
    constraint fk_01_CONTACTO foreign key (PROFESOR) references PROFESORES(idPro)
);
alter table CONTACTOS add constraint fk_02_CONTACTO foreign key(RESPUESTA) references CONTACTOS(IdCont);
create table TECNOLOGIAS(
    idTec number(6),
    NomTec varchar2(800),
    Uso varchar2(800),
    constraint pk_01_TECNOLOGIAS primary key(idTec)
);
create table HERRAMIENTAS(
    idHerra number(6),
    nomHerra varchar2(100),
    constraint pk_01_HERRAMIENTAS primary key(idHerra)
);
create table VIDAS_LABORALES(
    ALUMNO number(6),
    TRABAJO number(6),
    Fini date,
    Ffin date,
    FCT number(1),
    constraint pk_01_vidalab primary key(ALUMNO,TRABAJO),
    constraint fk_01_VIDA foreign key(ALUMNO) references ALUMNOS(idAlu),
    constraint fk_02_VIDA foreign key(TRABAJO) references TRABAJOS(idTra)
);
create table TOOLBOX(
    TAREA number(6),
    HERRAMIENTA number(6),
    constraint fk_01_toolbox foreign key(TAREA) references TAREAS(idTar),
    constraint fk_02_toolbox foreign key(HERRAMIENTA) references HERRAMIENTAS(idHerra),
    constraint pk_toolbox primary key(TAREA,HERRAMIENTA)
);
create table COMUNICACIONES(
    PERSONA number(6),
    CONTACTO number(6),
    constraint fk_01_comunica foreign key(PERSONA) references PERSONAS(idPer),
    constraint fk_02_comunica foreign key(CONTACTO) references CONTACTOS(IdCont)
);
create table SERVICIOS(
    EMPRESA number(6),
    TECNOLOGIA  number(6),
    constraint fk_01_servicio foreign key(EMPRESA) references EMPRESAS(idEmp),
    constraint fk_02_servicio foreign key(TECNOLOGIA) references TECNOLOGIAS(idTec)
);
create table SOLUCIONES(
    TECNOLOGIA number(6),
    HERRAMIENTA number(6),
    constraint fk_01_solu foreign key(TECNOLOGIA) references TECNOLOGIAS(idTec),
    constraint fk_02_solu foreign key(HERRAMIENTA) references HERRAMIENTAS(idHerra)
);
spo off
