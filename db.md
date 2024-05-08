// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

Table Personal {
  UID varchar [pk]
  Nombre varchar
  ApellidoP varchar
  ApellidoM varchar
  Email varchar
  Telefono varchar
  GradoEstudios varchar
}

Table Posgrados {
  PID varchar [pk]
  Nombre varchar
  Duracion varchar
}

Table Licenciaturas{
  LID varchar [pk]
  Nombre varchar
  Duracion varchar
}



Table Departamentos {
  ID varchar
  Nombre varchar
}

Table Puestos {
  ID varchar
  Nombre varchar
  DepartamentoID varchar
}

Table PersonalPuestos {
  UID varchar
  PuestoID varchar
}


Table CalificacionPersonal{
  RegistroID varchar 
  UID varchar
  Fecha date
  Experiencia date
  Tipo varchar
  Calificacion int
  Comentario varchar
}

Table Tendedero{
  RegistroID varchar 
  UID varchar
  Fecha date
  Suceso varchar
}

Table CalificacionProgramas{
  RegistroID varchar 
  ProgramaID varchar
  Fecha date
  Experiencia date
  Comentario varchar
  Calificacion int
}

Table Materias{
  MID varchar 
  ProgramaID varchar
  Nombre varchar
}

Table ImpartenMaterias{
  MID varchar 
  UID varchar
}

Ref: Personal.UID < PersonalPuestos.UID // many-to-one
Ref: Puestos.ID - PersonalPuestos.PuestoID // many-to-one
Ref: Departamentos.ID - Puestos.DepartamentoID // many-to-one
Ref: CalificacionProgramas.ProgramaID - Posgrados.PID // many-to-one
Ref: CalificacionProgramas.ProgramaID - Licenciaturas.LID // many-to-one
Ref: Tendedero.UID - Personal.UID // many-to-one
Ref: Personal.UID - CalificacionPersonal.UID // many-to-one
Ref: ImpartenMaterias.MID - Materias.MID // many-to-one
Ref: ImpartenMaterias.UID - Personal.UID // many-to-one