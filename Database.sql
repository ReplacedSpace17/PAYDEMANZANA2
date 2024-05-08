CREATE DATABASE EVALUATEC;

CREATE TABLE licenciaturas (
  LID serial PRIMARY KEY,
  Nombre VARCHAR,
  Semestres int
);

CREATE TABLE posgrados (
  PID serial PRIMARY KEY,
  Nombre VARCHAR,
  Grado VARCHAR,
  Semestres int
);

CREATE TABLE departamentos (
  ID serial PRIMARY KEY,
  Nombre VARCHAR
);





CREATE TABLE personal (
  UID VARCHAR PRIMARY KEY,
  Nombre VARCHAR,
  ApellidoP VARCHAR,
  ApellidoM VARCHAR,
  Email VARCHAR,
  Telefono VARCHAR,
  GradoEstudios VARCHAR
);







CREATE TABLE puestos (
  ID VARCHAR PRIMARY KEY,
  Nombre VARCHAR,
  DepartamentoID VARCHAR,
  FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(ID)
);

CREATE TABLE personal_puestos (
  UID VARCHAR,
  PuestoID VARCHAR,
  FOREIGN KEY (UID) REFERENCES Personal(UID),
  FOREIGN KEY (PuestoID) REFERENCES Puestos(ID),
  PRIMARY KEY (UID, PuestoID)
);

CREATE TABLE calificacion_personal (
  RegistroID VARCHAR PRIMARY KEY,
  UID VARCHAR,
  Fecha DATE,
  Experiencia DATE,
  Tipo VARCHAR,
  Calificacion INTEGER,
  Comentario VARCHAR,
  FOREIGN KEY (UID) REFERENCES Personal(UID)
);

CREATE TABLE tendedero (
  RegistroID VARCHAR PRIMARY KEY,
  UID VARCHAR,
  Fecha DATE,
  Suceso VARCHAR,
  FOREIGN KEY (UID) REFERENCES Personal(UID)
);

CREATE TABLE calificacion_programas (
  RegistroID VARCHAR PRIMARY KEY,
  ProgramaID VARCHAR,
  Fecha DATE,
  Experiencia DATE,
  Comentario VARCHAR,
  Calificacion INTEGER
);

CREATE TABLE materias (
  MID VARCHAR PRIMARY KEY,
  ProgramaID VARCHAR,
  Nombre VARCHAR,
  FOREIGN KEY (ProgramaID) REFERENCES Posgrados(PID) ON DELETE CASCADE
);

CREATE TABLE imparten_materias (
  MID VARCHAR,
  UID VARCHAR,
  FOREIGN KEY (MID) REFERENCES Materias(MID),
  FOREIGN KEY (UID) REFERENCES Personal(UID),
  PRIMARY KEY (MID, UID)
);
