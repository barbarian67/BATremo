alter session set NLS_DATE_FORMAT='DD-MM-YY';
set echo on
spo pofctlog.err

insert into CICLOS (idCic,nomCic) values (1,'DAM_M');
insert into CICLOS (idCic,nomCic) values (2,'DAM_T');
insert into CICLOS (idCic,nomCic) values (3,'ASIR');
insert into CICLOS (idCic,nomCic) values (4,'SMR');

insert into MEDIOS (idMed,nomMed) values (1,'Telefono');
insert into MEDIOS (idMed,nomMed) values (2,'Email');
insert into MEDIOS (idMed,nomMed) values (3,'Mensajeria');

insert into JERARQUIAS (idJer,nomJer) values (1,'Director');
insert into JERARQUIAS (idJer,nomJer) values (2,'Presidente');
insert into JERARQUIAS (idJer,nomJer) values (3,'Vicepresidente');
insert into JERARQUIAS (idJer,nomJer) values (4,'Director de departamento');
insert into JERARQUIAS (idJer,nomJer) values (5,'Gerente');
insert into JERARQUIAS (idJer,nomJer) values (6,'Supervisor');
insert into JERARQUIAS (idJer,nomJer) values (7,'Empleado');

insert into PROFESORES (idPro,nomPro,DNI,MensajeDefault,CICLO,mailPro) values (1,'Javier García','12135438F','Hola, muy buenas todos, aqui Willyrex comentando',1,'javier.garcia@iesfernandoaguilar.es');
insert into PROFESORES (idPro,nomPro,DNI,MensajeDefault,CICLO,mailPro) values (2,'Jaime Canillas','19874438Q','Hola, muy buenas todos, aqui Willyrex comentando',2,'jaime.canillas@iesfernandoaguilar.es');
insert into PROFESORES (idPro,nomPro,DNI,MensajeDefault,CICLO,mailPro) values (3,'Rafael','43764380L','Hola, muy buenas todos, aqui Willyrex comentando',3,'rafael@iesfernandoaguilar.es');
insert into PROFESORES (idPro,nomPro,DNI,MensajeDefault,CICLO,mailPro) values (4,'Diego','87657583D','Hola, muy buenas todos, aqui Willyrex comentando',4,'diego@iesfernandoaguilar.es');

insert into ALUMNOS (idAlu,nomAlu,DNI,Fnac,mailAlu,TlfAlu,Linkedin,Carnet,CICLO,Idioma,PROFESOR) values (300,'Iván Pérez Portillo','87657583D','27-07-98','ivan.perez.portillo.alu@iesfernandoaguilar.es','633762862','https://linkedin.com//in/ivan-perez-portillo',1,3,'Ingles',3);
insert into ALUMNOS (idAlu,nomAlu,DNI,Fnac,mailAlu,TlfAlu,Linkedin,Carnet,CICLO,Idioma,PROFESOR) values (301,'Jose Luis Sanchez','54858753S','23-05-97','jose.luis.sanchez.alu@iesfernandoaguilar.es','654789012','https://linkedin.com//in/jose-luis-sanchez',1,2,'Ingles y Frances',2);
insert into ALUMNOS (idAlu,nomAlu,DNI,Fnac,mailAlu,TlfAlu,Linkedin,Carnet,CICLO,Idioma,PROFESOR) values (302,'Alberto Lopez Ruiz','19745322E','12-02-99','alberto.lopez.ruiz.alu@iesfernandoaguilar.es','676985521','https://linkedin.com//in/alberto-lopez-ruiz',0,2,'Ingles',2);
insert into ALUMNOS (idAlu,nomAlu,DNI,Fnac,mailAlu,TlfAlu,Linkedin,Carnet,CICLO,Idioma,PROFESOR) values (303,'Pedro Pica Piedra','74315098J','19-10-96','pedro.pica.piedra.alu@iesfernandoaguilar.es','698564438','https://linkedin.com//in/pedro-pica-piedra',0,1,'Ingles, Frances y Aleman',1);
insert into ALUMNOS (idAlu,nomAlu,DNI,Fnac,mailAlu,TlfAlu,Linkedin,Carnet,CICLO,Idioma,PROFESOR) values (304,'Roberto Gimenez Lopez','25486789H','22-03-95','roberto.gimenez.lopez.alu@iesfernandoaguilar.es','608632461','https://linkedin.com//in/roberto-gimenez-lopez',1,4,'Ingles',4);
insert into ALUMNOS (idAlu,nomAlu,DNI,Fnac,mailAlu,TlfAlu,Linkedin,Carnet,CICLO,Idioma,PROFESOR) values (305,'Miguel Guerrero Luna','45476897H','06-08-98','miguel.guerrer.luna.alu@iesfernandoaguilar.es','612398467','https://linkedin.com//in/miguel-guerrero-luna-54388b205',1,3,'Ingles',2);
insert into ALUMNOS (idAlu,nomAlu,DNI,Fnac,mailAlu,TlfAlu,Linkedin,Carnet,CICLO,Idioma,PROFESOR) values (306,'Abraham Rodriguez Medina','75645382P','07-11-96','abraham.rodriguez.medina.alu@iesfernandoaguilar.es','616789865','https://linkedin.com//in/abraham-rodriguez-medina-313140182',1,3,'Ingles',2);

insert into PRACTICAS (idPrac,Erasmus,DesPrac,FPini,FPfin) values (1,0,'Durante 3 meses se va a estar realizando Bases de datos','21-04-22', '23-06-22');
insert into PRACTICAS (idPrac,Erasmus,DesPrac,FPini,FPfin) values (2,1,'Se van a realizar actividades relacionadas con SQL, MariaDB y Postgres','13-04-22', '20-06-22');
insert into PRACTICAS (idPrac,Erasmus,DesPrac,FPini,FPfin) values (3,0,'Se van a realizar despliegues y operaciones de BBDD para plataformas Cloud, especialmente AWS y MS Azure','27-04-22', '29-06-22');
insert into PRACTICAS (idPrac,Erasmus,DesPrac,FPini,FPfin) values (4,1,'Gestión de sistemas de almacenamiento en la nube','22-04-22','29-06-22');
insert into PRACTICAS (idPrac,Erasmus,DesPrac,FPini,FPfin) values (5,0,'Se va a realizar administración de Microsoft Active Directory y Google Workspace.','15-06-22','27-06-22');

insert into EMPRESAS (idEmp,NomEm,Logo,DescEm,Teletrabajo,Empleados,Actividad) values (1,'Plexus Tech',EMPTY_BLOB(),'Somos Plexus Tech. Una compañía tecnológica especializada en servicios y productos IT, fundada en el talento y las capacidades de nuestra gente, más de 2.000 profesionales desarrollando tecnología con alma.',1,'más de 2000 empleados','Servicios y productos IT');
insert into EMPRESAS (idEmp,NomEm,Logo,DescEm,Teletrabajo,Empleados,Actividad) values (2,'Spring Malaga',EMPTY_BLOB(),'En Spring Spain te ayudamos a agilizar los procesos de búsqueda, selección y contratación de perfiles especializados para tu organización.', 0,'De 51 a 200 empleados','División de IT de Spring Professional');
insert into EMPRESAS (idEmp,NomEm,Logo,DescEm,Teletrabajo,Empleados,Actividad) values (3,'Vipirsa',EMPTY_BLOB(),'Desde VIPIRSA,empresa especializada en proyectos de desarrollos tecnológicosyen búsqueda de auténticos talentos,estamos buscando uno/aConsultor/Programador BI DATA.',1,'De 51 a 200 empleados','Proyecto de desarrollos técnológicos.');
insert into EMPRESAS (idEmp,NomEm,Logo,DescEm,Teletrabajo,Empleados,Actividad) values (4,'Decskill España',EMPTY_BLOB(),'Talento para crecer',1,'Más de 300 empleados','Servicios de TI y consultoría de TI');
insert into EMPRESAS (idEmp,NomEm,Logo,DescEm,Teletrabajo,Empleados,Actividad) values (5,'atSistemas',EMPTY_BLOB(),'atSistemas',0,'De 1001 a 5000 empleados','Servicios de TI y consultoria TI');
insert into EMPRESAS (idEmp,NomEm,Logo,DescEm,Teletrabajo,Empleados,Actividad) values (6,'SNGULAR',EMPTY_BLOB(),'Somos el partner tecnológico que hará que tu negocio marque la diferencia',1,'De 1001 a 5000','Servicios de TI y consultoria TI');
insert into EMPRESAS (idEmp,NomEm,Logo,DescEm,Teletrabajo,Empleados,Actividad) values (7,'4Property',EMPTY_BLOB(), '4Property es un empresa que trabaja en el sector de servicio y consultoria de tecnología de la información',1, 'Entre 11 a 50 empleados', 'Portal de inmobiliaria ');
insert into EMPRESAS (idEmp,NomEm,Logo,DescEm,Teletrabajo,Empleados,Actividad) values (8,'NetSpeed',EMPTY_BLOB(), 'Como empresa nos dedicamos a la fabricación de semiconductores',1,'Entre 50 y 200 empleados', 'Diseño de microchips para varios mercados');

insert into PUESTOS (idPue, DesPue, Cargo, Jornada, Expe, IdiomasP, CarnetP, Movi, Titu, Genero, PRACTICA, EMPRESA) values (1, 'Al menos 3 años de experiencia en configuración y gestión de BD Oracle 9g, 10g, 11g y 12, experiencia en Clusteware', 'Administrador Oracle, Teletrabajo', 'Jornada completa - Intermedio', 3, 'No especificado', 0, 'España, Madrid', 1, 'No especificado',1,1);
insert into PUESTOS (idPue, DesPue, Cargo, Jornada, Expe, IdiomasP, CarnetP, Movi, Titu, Genero, PRACTICA, EMPRESA) values (2, 'Perfiles de administrador/a de SQL Database.', 'Administrador/a de SQL Database', 'Jornada Completa', 0, 'Inglés: Mandatory B2 / Expected C1', 0, 'España, Málaga', 1, 'No especificado',2,2);
insert into PUESTOS (idPue, DesPue, Cargo, Jornada, Expe, IdiomasP, CarnetP, Movi, Titu, Genero, PRACTICA, EMPRESA) values (3, 'Consultor Datavisualtizador con más de 3 años de experiencia para posición de asistencia técnica en área del negocio del cliente. Imprescindible experiencia en PowerBU.', 'Consultor|programador BI DATA', 'Jornada completa', 3, 'No especificado', 0, 'España, Madrid', 1, 'No especificado',3,3);
insert into PUESTOS (idPue, DesPue, Cargo, Jornada, Expe, IdiomasP, CarnetP, Movi, Titu, Genero, PRACTICA, EMPRESA) values (4, 'Administrador de BD con experiencia en experiencia en SQL, PostgreSQL, MariaDB y tener conocimientos en kubernetes', 'Administrador de BD en SQL, PostgreSQL, MariaDB', 'Flexibilidad horaria', 2, 'Inglés: B2 y C1', 0, 'España, Madrid', 1, 'No especificado',4,4);
insert into PUESTOS (idPue, DesPue, Cargo, Jornada, Expe, IdiomasP, CarnetP, Movi, Titu, Genero, PRACTICA, EMPRESA) values (5, 'Administración de BBDD PostgreSQL ediciones Community y/o EDB(implantación de nuevas bases de datos, copias de seguridad), despliegue y operación de BBDD para plataformas Cloud, especialmente AWS y MS Azure.', 'DBA de Postgres', 'Completa|Intermedia', 0, 'No especificado', 0, 'España, Madrid', 1, 'No especificado',1,5);
insert into PUESTOS (idPue, DesPue, Cargo, Jornada, Expe, IdiomasP, CarnetP, Movi, Titu, Genero, PRACTICA, EMPRESA) values (6, 'Implementación y despliegue de nuevas soluciones tecnológicas en materia de seguridad.', 'Security Analyst', 'Jornada Completa - intermedio', 2, 'No especificado', 0, 'España, Madrid', 1, 'No especificado',2,6);
insert into PUESTOS (idPue, DesPue, Cargo, Jornada, Expe, IdiomasP, CarnetP, Movi, Titu, Genero, PRACTICA, EMPRESA) values (7, 'Back developer senior con 3 años de experiencia trabajando con Python, Django y Apis, importante que conoza la parte testing', 'Back developer', 'Flexibilidad horaria', 3, 'No especificado', 0, 'Malaga', 1, 'No especificado',3,7);
insert into PUESTOS (idPue, DesPue, Cargo, Jornada, Expe, IdiomasP, CarnetP, Movi, Titu, Genero, PRACTICA, EMPRESA) values (8, 'Front developer senior con 3 años de experiencia en ecosistema Javascript con vue, (o que haya trabajado con react/angular)', 'Front developer', 'Flexibilidad horaria', 3, 'No especificado', 0, 'Malaga', 1, 'No especificado',4,8);

insert into TAREAS (idTar,desTar) values (1, 'Configuración y gestión de BBDD Oracle 9g, 10g, 11g y 12, experiencia en Clusteware, Backup and restore, Datapump RMan en plataforma Unix/Linux, Instalación, migración y mantenimiento de BBDD');
insert into TAREAS (idTar,desTar) values (2, 'Administración de SQL Database');
insert into TAREAS (idTar,desTar) values (3, 'Manjeo de PowerBI, acompañamiento en el uso y despliegue de herramientas de Visualización, en especial en PowerBI. Desarrollo de consultas y proyectos, resolución de dudas, formaciones a usuarios');
insert into TAREAS (idTar,desTar) values (4, 'Administrador de BBDD SQL, PostgreSQL, MariaDB y tener conocimientos en kubernetes');
insert into TAREAS (idTar,desTar) values (5, 'Administración de BBDD PostgreSQL ediciones Community y/o EDB(implantación de nuevas bases de datos, copias de seguridad), despliegue y operación de BBDD para plataformas Cloud, especialmente AWS y MS Azure. Administración de BBDD relacionales SQL y NoSQL en técnicas de migración de BBDD en entornos on-premise a entornos cloud. Gestión de sistemas de almacenamiento en la nube');
insert into TAREAS (idTar,desTar) values (6, 'Implementación y despliegue de nuevas soluciones tecnológicas en materia de seguridad. Gestión de los procesos de calificación y certificación de estándar como ISO 27001, Leet Security, Pinakes o SOC 2. Generación de procedimientos, definición de políticas y documentación técnica de seguridad. RFP/Cuestionarios de seguridad. Security Assessment, test de intrusión, y soporte en la resolución de las vulnerabilidades identificadas. Administración de elementos de seguridad: AntiSpam, Antimalware, EDR, MDM, WAF. Network Security: Radius, NAC, IDS, Firewall. Administración de Microsoft Active Directory y Google Workspace. Análisis de vulnerabilidades en contenedores. Análisis estático de código fuente. Incident Management. Log Management, administración de alertas y correlación de eventos');
insert into TAREAS (idTar,desTar) values (7, 'Back developer senior con conocimientos en Python, Django y Apis, importante que conoza la parte testing');
insert into TAREAS (idTar,desTar) values (8, 'Front developer senior con conocimientos en ecosistema Javascript con vue o que haya trabajado con react/angular');

insert into PERSONAS (idPer,nomPer,Jerarquia) values (1, 'Francisca Carnerero Sojo', 5);
insert into PERSONAS (idPer,nomPer,Jerarquia) values (2, 'Paco Miguel Guitierrez', 2);
insert into PERSONAS (idPer,nomPer,Jerarquia) values (3, 'Carlos Madruga Martín', 4);
insert into PERSONAS (idPer,nomPer,Jerarquia) values (4,'Valeria de Freitas', 6);
insert into PERSONAS (idPer,nomPer,Jerarquia) values (5, 'Elisabeth Marcos', 4);
insert into PERSONAS (idPer,nomPer,Jerarquia) values (6, 'Ricardo Jáudenes Martín', 7);
insert into PERSONAS (idPer,nomPer,Jerarquia) values (7, 'John Kennedy', 1);
insert into PERSONAS (idPer,nomPer,Jerarquia) values (8, 'Sundari Mitra', 1);

insert into TRABAJOS (idTra,Puesto,Sueldo,EMPRESA) values (1,'Administrador Oracle', 1500, 1);
insert into TRABAJOS (idTra,Puesto,Sueldo,EMPRESA) values (2, 'Back Developer', 40000, 2);
insert into TRABAJOS (idTra,Puesto,Sueldo,EMPRESA) values (3, 'Consultor|programador BI DATA', 2000, 3);
insert into TRABAJOS (idTra,Puesto,Sueldo,EMPRESA) values (4, 'Administrador de Bases de Datos', 1600, 4);
insert into TRABAJOS (idTra,Puesto,Sueldo,EMPRESA) values (5, 'DBA de Postgres', 2200, 5);
insert into TRABAJOS (idTra,Puesto,Sueldo,EMPRESA) values (6, 'Security Analyst', 1600, 6);
insert into TRABAJOS (idTra,Puesto,Sueldo,EMPRESA) values (7, 'Front developer', 40000, 2);

insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (1,'Plexus Tech Madrid','Madrid, España','Calle de Julián Camarillo, 7',1);
insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (2,'Plexus Tech Sevilla','Sevilla, España','Calle Isaac Newton, 4',1);
insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (3,'Spring Spain Malaga','Malaga, España','Avenida Andalucía, 32',2);
insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (4,'Spring Spain Sevilla','Sevilla, España','Avenida Ramón Carande, 3',2);
insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (5,'Vipirsa','Madrid, España','Calle O-Donnell, 18, Planta 8º',3);
insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (6,'Decskill España','A Coruña, España','Calle Benito Blanco Rajoy, 7',4);
insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (7,'atSistemas Headquarters','Las Rozas, Madrid, España','Calle Valle de Alcudia, 3, Edificio 2, Planta 1º',5);
insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (8,'atSistemas','Jerez de la FRontera, Cadiz, España','Edificio Jerez Parque Empresarial, Calle del Desarrollo, 2, Oficina 12, Planta 1º',5);
insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (9,'SNGULAR','Madrid, España','Calle Labastida, 1',6);
insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (10,'4Property','Dublin, Irlanda','129 Baggot Street Lower, Dublin 2',7);
insert into SEDES (idSede,NomSed,Ubicacion,Direccion,EMPRESA) values (11,'NetSpeed Ltd','Dublin, Irlanda','No. 10 UNit 42 Rosemount Park Drive,Rosemount Bussiness Park, Ballycoolin Road, Dublin 11',8);

insert into CONTACTOS (idCont,FCont,Mensaje,RESPUESTA,Medio,profesor) values (1,'25-10-21','Buenas, ¿estarían interesados en un alumno/a de ASIR para realizar prácticas?',null,2,2);
insert into CONTACTOS (idCont,FCont,Mensaje,RESPUESTA,Medio,profesor) values (2,'05-12-21','Lo siento, el puesto ya está cogido',2,2,2);
insert into CONTACTOS (idCont,FCont,Mensaje,RESPUESTA,Medio,profesor) values (3,'22-11-21','Buenos días, ¿podriamos quedar por videollamada el dia 23? Gracias',3,2,2);
insert into CONTACTOS (idCont,FCont,Mensaje,RESPUESTA,Medio,profesor) values (4,'10-01-22','Si, ya me comentaron, tenemos que hablar sobre ello',4,2,4);
insert into CONTACTOS (idCont,FCont,Mensaje,RESPUESTA,Medio,profesor) values (5,'16-01-22','Espero respuesta',5,2);

insert into TECNOLOGIAS (idTec,NomTec,Uso) values (1,'Sistema Gestores de Bases de Datos','Centralizar Datos');
insert into TECNOLOGIAS (idTec,NomTec,Uso) values (2,'Big Data','Técnicas de Machine Learning');
insert into TECNOLOGIAS (idTec,NomTec,Uso) values (3,'Anti-Malware','Seguridad');
insert into TECNOLOGIAS (idTec,NomTec,Uso) values (4,'BI Data','Recopilar, organizar y analizar datos de Empresas');
insert into TECNOLOGIAS (idTec,NomTec,Uso) values (5,'Inteligencia Artificial',' Estudiar y detallar la gran cantidad de datos');
insert into TECNOLOGIAS (idTec,NomTec,Uso) values (6,'AWS Cloud','Despliegue de Servicios');
insert into TECNOLOGIAS (idTec,NomTec,Uso) values (7,'Sistemas','Administracion');
insert into TECNOLOGIAS (idTec,NomTec,Uso) values (8,'Servicios De Directorios','Administrar los inicios de sesión en los equipos');

insert into HERRAMIENTAS (idHerra,nomHerra) values (1,'Oracle DataBase');
insert into HERRAMIENTAS (idHerra,nomHerra) values (2,'Kuberneter');
insert into HERRAMIENTAS (idHerra,nomHerra) values (3,'MS Azure');
insert into HERRAMIENTAS (idHerra,nomHerra) values (4,'Postgres SQL');
insert into HERRAMIENTAS (idHerra,nomHerra) values (5,'HADOOP');
insert into HERRAMIENTAS (idHerra,nomHerra) values (6,'Microsoft Active Directory');
insert into HERRAMIENTAS (idHerra,nomHerra) values (7,'Malwarebytes Anti-Malware');
insert into HERRAMIENTAS (idHerra,nomHerra) values (8,'AntiSpam');
insert into HERRAMIENTAS (idHerra,nomHerra) values (9,'Google Workspace');
insert into HERRAMIENTAS (idHerra,nomHerra) values (10,'MariaDB');
insert into HERRAMIENTAS (idHerra,nomHerra) values (11,'Spark');
insert into HERRAMIENTAS (idHerra,nomHerra) values (12,'HIVE');
insert into HERRAMIENTAS (idHerra,nomHerra) values (13,'Oracle OCI');
insert into HERRAMIENTAS (idHerra,nomHerra) values (14,'PowerBI');
insert into HERRAMIENTAS (idHerra,nomHerra) values (15,'Nudge');
insert into HERRAMIENTAS (idHerra,nomHerra) values (16,'Conversica');
insert into HERRAMIENTAS (idHerra,nomHerra) values (17,'Google Drive');
insert into HERRAMIENTAS (idHerra,nomHerra) values (18,'GParted');
insert into HERRAMIENTAS (idHerra,nomHerra) values (19,'AWS');
insert into HERRAMIENTAS (idHerra,nomHerra) values (20,'MongoDB');
insert into HERRAMIENTAS (idHerra,nomHerra) values (21,'Python');
insert into HERRAMIENTAS (idHerra,nomHerra) values (22,'Django');
insert into HERRAMIENTAS (idHerra,nomHerra) values (23,'Javascript');

insert into VIDAS_LABORALES (ALUMNO,TRABAJO,fini,ffin,FCT) values (300,3,'12-04-2018','15-08-2021',0);
insert into VIDAS_LABORALES (ALUMNO,TRABAJO,fini,ffin,FCT) values (301,6,'20-03-2021','31-05-2021',1);
insert into VIDAS_LABORALES (ALUMNO,TRABAJO,fini,ffin,FCT) values (302,1,'20-03-2021','31-05-2021',1);
insert into VIDAS_LABORALES (ALUMNO,TRABAJO,fini,ffin,FCT) values (303,4,'24-03-2021','31-05-2019',1);
insert into VIDAS_LABORALES (ALUMNO,TRABAJO,fini,ffin,FCT) values (304,2,'24-03-2021','31-05-2019',1);
insert into VIDAS_LABORALES (ALUMNO,TRABAJO,fini,ffin,FCT) values (305,7,'21-03-2022','31-05-2022',1);
insert into VIDAS_LABORALES (ALUMNO,TRABAJO,fini,ffin,FCT) values (306,5,'21-03-2022','31-05-2022',1);

insert into TOOLBOX (TAREA,HERRAMIENTA) values (1,1);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (2,1);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (2,4);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (2,10);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (3,14);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (4,1);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (4,2);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (4,4);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (4,10);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (5,3);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (5,4);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (5,17);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (5,19);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (5,20);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (6,7);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (6,8);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (6,9);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (7,21);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (7,22);
insert into TOOLBOX (TAREA,HERRAMIENTA) values (8,23);

insert into COMUNICACIONES (PERSONA,CONTACTO) values (1,4);
insert into COMUNICACIONES (PERSONA,CONTACTO) values (2,2);
insert into COMUNICACIONES (PERSONA,CONTACTO) values (3,3);
insert into COMUNICACIONES (PERSONA,CONTACTO) values (4,2);
insert into COMUNICACIONES (PERSONA,CONTACTO) values (5,1);
insert into COMUNICACIONES (PERSONA,CONTACTO) values (6,5);
insert into COMUNICACIONES (PERSONA,CONTACTO) values (7,2);
insert into COMUNICACIONES (PERSONA,CONTACTO) values (8,1);

insert into SERVICIOS (EMPRESA,TECNOLOGIA) values (1,1);
insert into SERVICIOS (EMPRESA,TECNOLOGIA) values (2,1);
insert into SERVICIOS (EMPRESA,TECNOLOGIA) values (3,4);
insert into SERVICIOS (EMPRESA,TECNOLOGIA) values (4,1);
insert into SERVICIOS (EMPRESA,TECNOLOGIA) values (5,1);
insert into SERVICIOS (EMPRESA,TECNOLOGIA) values (5,4);
insert into SERVICIOS (EMPRESA,TECNOLOGIA) values (6,6);
insert into SERVICIOS (EMPRESA,TECNOLOGIA) values (6,3);
insert into SERVICIOS (EMPRESA,TECNOLOGIA) values (6,8);

insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (1,1);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (1,4);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (1,10);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (2,5);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (2,11);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (3,7);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (3,8);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (4,14);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (5,15);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (5,16);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (5,17);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (6,2);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (6,16);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (7,18);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (8,6);
insert into SOLUCIONES (TECNOLOGIA,HERRAMIENTA) values (8,9);
spo off
commit work;
