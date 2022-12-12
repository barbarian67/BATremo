select nomEmp, nomAlu
from CONTRATOS inner join EMPRESAS on empresa=idEmp
			inner join ALUMNOS on alumno=idAlu;
