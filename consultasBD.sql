--CONSULTAS
select adinsitu.tespeciales_ntratamiento, diagimagenes.tipoimagen from adinsitu,diagimagenes 
where adinsitu.consulta_nconsulta = diagimagenes.nconsulta;

select farmacia.nobmedicamento, paciente.nss from farmacia, paciente 
where farmacia.paciente_nss = paciente.nss and paciente.edad > 10;

select paciente.edad, realizadiag.especialidades_nomespecialista from paciente, realizadiag 
where paciente.nss = realizadiag.paciente_nss;

select consulta.distrito, realizadiag.especialidades_nomespecialista from 
realizadiag, paciente, consulta, atiende 
where paciente.nss = atiende.paciente_nss and atiende.consulta_nconsulta = consulta.nconsulta 
and realizadiag.paciente_nss = paciente.nss;

select paciente.nss, farmacia.nobmedicamento from paciente, farmacia 
where paciente.genero = 'Hombre' and farmacia.paciente_nss = paciente.nss 
and farmacia.nobmedicamento = 'Paracetamol';

select paciente.genero, count(paciente.nss) from paciente, farmacia 
where  farmacia.paciente_nss = paciente.nss and farmacia.nobmedicamento = 'Paracetamol' group by paciente.genero;

select paciente.edad, count(paciente.nss) from paciente group by paciente.edad;

select paciente.edad, count(paciente.nss) from paciente group by paciente.edad having edad > 18;

select consulta.nconsulta from consulta where consulta.nconsulta 
in ( select consulta.nconsulta from consulta, adinsitu 
where adinsitu.tespeciales_ntratamiento = 'Logopedia' and adinsitu.consulta_nconsulta = consulta.nconsulta);


select farmacia.numfarmacia from farmacia where farmacia.numfarmacia >= any 
( select numfarmacia from farmacia where numfarmacia > 3) order by farmacia
desc;

select * from diagimagenes where diagimagenes.nconsulta  
in ( select consulta.nconsulta from consulta where consulta.distrito = 'Este' );

select farmacia.numfarmacia from farmacia 
where farmacia.numfarmacia >= any ( select numfarmacia from farmacia where numfarmacia > 3) 
order by farmacia.numfarmacia
desc;

select consulta.nconsulta from consulta 
where consulta.nconsulta in ( select consulta.nconsulta from consulta, adinsitu 
where adinsitu.tespeciales_ntratamiento = 'Logopedia' and adinsitu.consulta_nconsulta = consulta.nconsulta) 
order by consulta.nconsulta asc;

select paciente.edad, count(paciente.nss) from paciente group by paciente.edad order by edad asc;

----

--!Listar el numero de las consultas que han atendido a todos los pacientes
select distinct consulta.nconsulta from consulta 
where not exists ( select * from paciente 
where not exists ( select * from atiende 
where consulta.nconsulta = atiende.consulta_nconsulta 
and paciente.nss = atiende.paciente_nss));

--!Listar el los nombres de los tratamientos especiales que han sido administrados in situ por todos las consultas.
select distinct tespeciales.ntratamiento from tespeciales 
where not exists ( select * from consulta 
where not exists ( select * from adinsitu 
where adinsitu.consulta_nconsulta = consulta.nconsulta 
and adinsitu.tespeciales_ntratamiento = tespeciales.ntratamiento));

--!Listar el numero de la seguridad social de los pacientes a los que le han realizado diagnostico todos los especialistas
select distinct paciente.nss from paciente where not exists ( select * from especialidades where not exists ( select * from realizadiag where realizadiag.especialidades_nomespecialista = especialidades.nomespecialista and realizadiag.paciente_nss = paciente.nss));

--Listar todas las consultas que han atendido a mujeres
select consulta.nconsulta from consulta where not exists ( select * from atiende, paciente where paciente.genero <> 'Mujer' and atiende.consulta_nconsulta = consulta.nconsulta and atiende.paciente_nss = paciente.nss);
 
commit;
-------------------