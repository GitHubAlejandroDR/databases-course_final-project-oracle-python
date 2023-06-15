-- Generado por Oracle SQL Developer Data Modeler 20.4.1.406.0906
--   en:        2021-04-15 22:03:45 CEST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE adinsitu (
    tespeciales_ntratamiento  VARCHAR2(10 CHAR) NOT NULL,
    consulta_nconsulta        INTEGER NOT NULL,
    fechaad                   VARCHAR2(100 CHAR)
);

ALTER TABLE adinsitu ADD CONSTRAINT adinsitu_pk PRIMARY KEY ( tespeciales_ntratamiento,
                                                              consulta_nconsulta );

CREATE TABLE atiende (
    paciente_nss        INTEGER NOT NULL,
    consulta_nconsulta  INTEGER NOT NULL
);

ALTER TABLE atiende ADD CONSTRAINT atiende_pk PRIMARY KEY ( paciente_nss,
                                                            consulta_nconsulta );

CREATE TABLE consulta (
    nconsulta     INTEGER NOT NULL,
    distrito      VARCHAR2(10 CHAR),
    maxcapadidad  INTEGER
);

ALTER TABLE consulta ADD CONSTRAINT consulta_pk PRIMARY KEY ( nconsulta );

CREATE TABLE diagbio (
    nconsulta      INTEGER NOT NULL,
    pruebassangre  VARCHAR2(100 CHAR),
    tejidos        VARCHAR2(100 CHAR)
);

ALTER TABLE diagbio ADD CONSTRAINT diagbio_pk PRIMARY KEY ( nconsulta );

CREATE TABLE diagimagenes (
    nconsulta     INTEGER NOT NULL,
    tipoimagen    VARCHAR2(100 CHAR),
    localización  VARCHAR2(100 CHAR)
);

ALTER TABLE diagimagenes ADD CONSTRAINT diagimagenes_pk PRIMARY KEY ( nconsulta );

CREATE TABLE especialidades (
    tipoespecialidad  VARCHAR2(20 CHAR),
    nomespecialista   VARCHAR2(10 CHAR) NOT NULL
);

ALTER TABLE especialidades ADD CONSTRAINT especialidades_pk PRIMARY KEY ( nomespecialista );

CREATE TABLE especialista (
    especialista  VARCHAR2(50 CHAR) NOT NULL,
    paciente_nss  INTEGER NOT NULL
);

ALTER TABLE especialista ADD CONSTRAINT especialista_pk PRIMARY KEY ( especialista,
                                                                      paciente_nss );

CREATE TABLE farmacia (
    telefono            INTEGER,
    numfarmacia         INTEGER NOT NULL,
    nobmedicamento      VARCHAR2(100 CHAR),
    email               VARCHAR2(100 CHAR),
    web                 VARCHAR2(100 CHAR),
    consulta_nconsulta  INTEGER NOT NULL,
    paciente_nss        INTEGER NOT NULL,
    tipomedicamento     VARCHAR2(100 CHAR)
);

ALTER TABLE farmacia ADD CONSTRAINT farmacia_pk PRIMARY KEY ( numfarmacia );

CREATE TABLE paciente (
    genero    VARCHAR2(10 CHAR),
    telefono  INTEGER,
    nss       INTEGER NOT NULL,
    edad      INTEGER
);

ALTER TABLE paciente ADD CONSTRAINT paciente_pk PRIMARY KEY ( nss );

CREATE TABLE realizadiag (
    paciente_nss                    INTEGER NOT NULL,
    especialidades_nomespecialista  VARCHAR2(10 CHAR) NOT NULL
);

ALTER TABLE realizadiag ADD CONSTRAINT realizadiag_pk PRIMARY KEY ( paciente_nss,
                                                                    especialidades_nomespecialista );

CREATE TABLE tespeciales (
    ntratamiento     VARCHAR2(10 CHAR) NOT NULL,
    tipotratamiento  VARCHAR2(10 CHAR)
);

ALTER TABLE tespeciales ADD CONSTRAINT tespeciales_pk PRIMARY KEY ( ntratamiento );

ALTER TABLE adinsitu
    ADD CONSTRAINT adinsitu_consulta_fk FOREIGN KEY ( consulta_nconsulta )
        REFERENCES consulta ( nconsulta );

ALTER TABLE adinsitu
    ADD CONSTRAINT adinsitu_tespeciales_fk FOREIGN KEY ( tespeciales_ntratamiento )
        REFERENCES tespeciales ( ntratamiento );

ALTER TABLE atiende
    ADD CONSTRAINT atiende_consulta_fk FOREIGN KEY ( consulta_nconsulta )
        REFERENCES consulta ( nconsulta );

ALTER TABLE atiende
    ADD CONSTRAINT atiende_paciente_fk FOREIGN KEY ( paciente_nss )
        REFERENCES paciente ( nss );

ALTER TABLE diagbio
    ADD CONSTRAINT diagbio_consulta_fk FOREIGN KEY ( nconsulta )
        REFERENCES consulta ( nconsulta );

ALTER TABLE diagimagenes
    ADD CONSTRAINT diagimagenes_consulta_fk FOREIGN KEY ( nconsulta )
        REFERENCES consulta ( nconsulta );

ALTER TABLE especialista
    ADD CONSTRAINT especialista_paciente_fk FOREIGN KEY ( paciente_nss )
        REFERENCES paciente ( nss );

ALTER TABLE farmacia
    ADD CONSTRAINT farmacia_consulta_fk FOREIGN KEY ( consulta_nconsulta )
        REFERENCES consulta ( nconsulta );

ALTER TABLE farmacia
    ADD CONSTRAINT farmacia_paciente_fk FOREIGN KEY ( paciente_nss )
        REFERENCES paciente ( nss );

ALTER TABLE realizadiag
    ADD CONSTRAINT realizadiag_especialidades_fk FOREIGN KEY ( especialidades_nomespecialista )
        REFERENCES especialidades ( nomespecialista );

ALTER TABLE realizadiag
    ADD CONSTRAINT realizadiag_paciente_fk FOREIGN KEY ( paciente_nss )
        REFERENCES paciente ( nss );

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated 

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            11
-- CREATE INDEX                             0
-- ALTER TABLE                             22
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   2
-- WARNINGS                                 0
