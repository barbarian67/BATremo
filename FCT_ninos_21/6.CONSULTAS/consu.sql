--HERRAMIENTAS MÁS DEMANDADAS.
select nomHerra as "Herramientas Demandadas" from TOOLBOX inner join HERRAMIENTAS on idHerra=HERRAMIENTA having count(herramienta) = (select max(count(herramienta)) from TOOLBOX group by HERRAMIENTA) group by nomHerra;


--
select nomjer, nomPer from PERSONAS inner join JERARQUIAS on idJer=JERARQUIA order by JERARQUIA;
