
create table EMPRESAS(
	idEmp number,
	nomEmp varchar2(40),
	constraint pk_empresas primary key(idEmp)
);
create table CICLOS(
	idCic number,
	nomCic varchar2(4),
	constraint pk_ciclos primary key(idCic)
);
create table ALUMNOS(
	idAlu number,
	nomAlu varchar2(50),
	ciclo number,
	constraint fk_02 foreign key(ciclo) references CICLOS(idCic),
	constraint pk_alumnos primary key(idAlu)
);
create table CONTRATOS(
	empresa number,
	alumno number,
	constraint fk_01_A foreign key(alumno) references ALUMNOS(idAlu),
	constraint fk_01_B foreign key(empresa) references EMPRESAS(idEmp),
	constraint pk_contratos primary key(empresa,alumno)	
);

