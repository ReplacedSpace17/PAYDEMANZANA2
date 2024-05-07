// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

Table Personal {
  UID varchar [pk]
  Nombre varchar
  ApellidoP varchar
  ApellidoM varchar
  Email varchar
  Telefono varchar
}

Table Posgrado {
  PID varchar [pk]
  Nombre varchar
}

Table Licenciatura {
  LID varchar [pk]
  Nombre varchar
}

Table ProfesoresPosgrado {
  UID varchar [pk]
  PID varchar
}

Table ProfesoresLicenciatura {
  LID varchar [pk]
  UID varchar
}
