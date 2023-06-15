INSERT INTO paciente (genero, telefono, nss, edad) VALUES ('Hombre', 952127415, 12316442, 9);
INSERT INTO paciente (genero, telefono, nss, edad) VALUES ('Hombre', 952128761, 13466887, 48);
INSERT INTO paciente (genero, telefono, nss, edad) VALUES ('Mujer', 952120521, 17456678, 56);
INSERT INTO paciente (genero, telefono, nss, edad) VALUES ('Mujer', 952129971, 27450190, 36);
INSERT INTO paciente (genero, telefono, nss, edad) VALUES ('Mujer', 952929971, 12550190, 56);
INSERT INTO paciente (genero, telefono, nss, edad) VALUES ('Mujer', 952120971, 26450130, 16);
INSERT INTO paciente (genero, telefono, nss, edad) VALUES ('Hombre',952136845, 53467891, 13);
INSERT INTO paciente (genero, telefono, nss, edad) VALUES ('Mujer', 952976367, 34786529, 17);
INSERT INTO paciente (genero, telefono, nss, edad) VALUES ('Mujer', 952567324, 78451232, 33);
INSERT INTO paciente (genero, telefono, nss, edad) VALUES ('Hombre', 952987123, 45683127, 12);


INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (11,'Centro', 25);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (123,'Teatinos', 25);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (33,'Centro', 23);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (12,'La Paz', 26);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (19,'Oeste', 15);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (13,'Este', 25);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (43,'Justicia', 25);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (57,'La Luz', 27);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (145,'Los prados', 10);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (103,'Perchel', 13);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (109,'Trinidad', 30);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (73,'Portada', 16);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (18,'Huelin', 23);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (53,'Princesa', 25);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (14,'Paraninfo', 22);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (55,'Carranque', 13);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (16,'La Isla', 24);
INSERT INTO consulta (nconsulta, distrito, maxcapadidad) VALUES (17,'Ampliacion', 19);


INSERT INTO especialista (especialista, paciente_nss) VALUES ('Lorenzo Martinez', 12345678);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Jóse Serrano', 10);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Maria Espina', 12345634);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Ana Lorenzo', 12345622);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Pedro Perez', 12335678);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Alvaro Gonzalez', 12115678);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Luisa Mateos', 12355678);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Daniel Rovira', 123456678);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Jóse Serrano', 12316442);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Jóse Serrano', 17456678);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Maria Espina', 13466887);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Maria Espina', 27450190);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Juan Lopez', 26450130);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Luis Vico', 53467891);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Lola Matas', 34786529);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Carlos Moreno', 45683127);
INSERT INTO especialista (especialista, paciente_nss) VALUES ('Carmen Cobos', 78451232);


INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Cardiovascular', 'Lorenzo');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Pulmonar', 'Jóse');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Digestivo', 'Luisa');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Pediatria', 'Ana');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Oncología', 'Daniel');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Endocrinología', 'Alvaro');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Traumatología', 'Maria');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Neurología', 'Pedro');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Radiología', 'Juan');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Odontología', 'Paula');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Oftalmología', 'Laura');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Ginecología', 'Isabel');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Hematología', 'Fernando');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Radiología', 'Marina');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Cirugía', 'Paco');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Urología', 'Isaac');
INSERT INTO especialidades (tipoespecialidad, nomespecialista) VALUES ('Angiología', 'Vanesa');



INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (10, 11);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (12345678, 123);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (12345622, 12);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (12335678, 19);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (12115678, 13);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (12355678, 43);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (12316442, 123);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (13466887, 12);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (17456678, 19);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (53467891, 11);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (34786529, 18);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (45683127, 14);
INSERT INTO atiende (paciente_nss, consulta_nconsulta) VALUES (78451232, 17);


INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES (12345678, 'Lorenzo');
INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES (10, 'Jóse');
INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES (12345622, 'Ana');
INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES (12335678, 'Maria');
INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES (12115678, 'Pedro');
INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES (12355678, 'Daniel');
INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES (12316442, 'Ana');
INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES (13466887, 'Maria');
INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES (17456678, 'Pedro');
INSERT INTO realizadiag (paciente_nss, especialidades_nomespecialista) VALUES (27450190, 'Daniel');


INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952345678, 12, 'Paracetamol', 'farmacia12@gmail.com', 'www.farmacia12.com', 11, 10, 'Analgésico');
INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952456789, 23, 'Ibuprofeno', 'farmacia23@gmail.com', 'www.farmacia23.com', 123, 12345678, 'Antiinflamatorio');
INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952456789, 1, 'Nolotil', 'farmacia23@gmail.com', 'www.farmacia23.com', 13, 12345622, 'Analgésico');
INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952456789, 2, 'Aspirina', 'farmacia2@gmail.com', 'www.farmacia2.com', 33, 12335678, 'Analgésico');
INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952456789, 3, 'Trombocid', 'farmacia3@gmail.com', 'www.farmacia3.com', 12, 12115678, 'CremaAntiInflamtoria');
INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952456789, 4, 'Prednisona', 'farmacia4@gmail.com', 'www.farmacia4.com', 11, 12355678, 'Corticoides');
INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952456789, 13, 'Abstral', 'farmacia4@gmail.com', 'www.farmacia13.com', 11, 12355678, 'Antiácidos');
INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952456789, 9, 'Bisacodilo', 'farmacia9@gmail.com', 'www.farmacia4.com', 11, 12345678, 'Laxante');
INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952456789, 28, 'Prednisona', 'farmacia28@gmail.com', 'www.farmacia28.com', 109, 27450190, 'Antifúngico');
INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952450789, 7, 'Mucosin', 'farmacia7@gmail.com', 'www.farmacia7.com', 103, 17456678, 'Mucolítico');
INSERT INTO farmacia (telefono, numfarmacia, nobmedicamento, email, web, consulta_nconsulta, paciente_nss, tipomedicamento) VALUES (952250789, 25, 'Sertraline', 'farmacia25@gmail.com', 'www.farmacia25.com', 145, 17456678, 'Antidepresivos');


INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (11, 'Conteo sanguíneo', 'Piel'); 
INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (123, 'Colesterol', 'Digestivo');
INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (13, 'Transaminasas', 'Digestivo');
INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (43, 'Hemoglobina', 'Oncologia');
INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (19, 'Creatina', 'Pediatria');
INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (12, 'COVID', 'Respiratorio');
INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (73, 'Análisis', 'Orina');
INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (57, 'Anoscopia', 'Recto');
INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (33, 'Artroscopia', 'Articulación');
INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (14, 'Hematología', 'Sangre');
INSERT INTO diagbio (nconsulta, pruebassangre, tejidos) VALUES (18, 'Linfomas', 'Inmunología');


INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (11,'Radiografía' ,'Brazo');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (123,'Tomografía' ,'Tórax');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (13,'Ecografía' ,'Abdomen');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (43,'FibroEscan' ,'Higado');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (19,'ResonanciaMagnetica' ,'Rodilla');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (12,'Tomografía' ,'Cadera');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (145,'Ecografía' ,'Vientre');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (33,'Ecografía' ,'Espalda');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (57,'Nuclear' ,'Pancreas');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (109,'ResonanciaMagnetica' ,'Cabeza');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (14,'Radiografía' ,'Pierna');
INSERT INTO diagimagenes (nconsulta, tipoimagen, localización) VALUES (18,'Análisis' ,'Orina');


INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('Ortopedia', 'Pediátrica');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('Logopedia', 'Geriátrica');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('Quimio', 'Oncología');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('Fisio', 'Trauma');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('TMF', 'Digestivo');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('AntiPire', 'Respira');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('Stem', 'Cardiolo');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('Cirugía', 'Ginecolo');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('Hidrotera', 'Trauma');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('Prótesis', 'Odontolo');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('Cancer', 'Quimio');
INSERT INTO tespeciales (ntratamiento , tipotratamiento) VALUES ('Revision', 'Detección');

INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('Ortopedia' , 11, TO_DATE('25-04-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('Quimio' , 13, TO_DATE('3-05-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('Fisio' , 43, TO_DATE('23-04-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('TMF' , 19, TO_DATE('23-03-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('AntiPire' , 12, TO_DATE('23-01-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('Stem' , 12, TO_DATE('23-07-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('Cirugía' , 14, TO_DATE('25-04-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('Hidrotera' , 18, TO_DATE('11-08-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('Prótesis' , 53, TO_DATE('04-12-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('Logopedia' , 103, TO_DATE('07-07-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('Cancer' , 17, TO_DATE('23-09-2021', 'dd-mm-yyyy'));
INSERT INTO adinsitu (tespeciales_ntratamiento, consulta_nconsulta, fechaad) VALUES ('Revision' , 145, TO_DATE('29-06-2021', 'dd-mm-yyyy'));


COMMIT;


select * from adinsitu;
select * from atiende;
select * from consulta;
select * from diagbio;
select * from diagimagenes;
select * from especialidades;
select * from especialista;
select * from farmacia;
select * from paciente;
select * from realizadiag;
select * from tespeciales;
