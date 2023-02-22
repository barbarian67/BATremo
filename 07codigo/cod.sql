-- Privilegios sobre objetos del esquema. API. Semántica imperativa
--Dar capacidad de poblar a los alumnos de primero y crear sinónimos públicos para cada una de las tablas 
conn BAT/bat@fa
declare
	cursor cuta is select table_name from TABS;
	senten varchar2(100);
begin
	dbms_output.put_line('TABLA');
	dbms_output.put_line('---------');
	for fita in cuta loop
		senten:='grant insert, update, delete on '|| fita.table_name ||' to rol_primero';
		execute immediate senten;
		senten:='create or replace public synonym '|| fita.table_name ||' for SE2.'||fita.table_name;
		execute immediate senten;
	end loop;
end;
/
