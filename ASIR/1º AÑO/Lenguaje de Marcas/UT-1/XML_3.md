### Crear una estructura XML sin validación que represente una estructura de dos empleados en la que cada empleado tiene un nombre, unos apellidos, un puesto que ocupa en la empresa, una permanencia en la empresa y una recopilación de los proyectos en los que está trabajando. Hay que indicar la categoría a la que pertenece el puesto, el tiempo de permanencia que lleva en la empresa (en años); este elemento de la permanencia no toma ningún valor. El primero de los empleados está trabajando en dos proyectos y el segundo no está trabajando en ninguno de los proyectos. Los proyectos deben indicar cuál es el tipo de proyecto al que pertenecen

```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Empleados>
      <Empleado1>
          <Nombre>Juan</Nombre>
          <Apellidos>García, Rubian</Apellidos>
          <Puesto Empleado="Profesor de biología"/>
          <Permanencia Años="4"/>
          <Proyectos>
            <Proyecto1 InsectosdeBurgos="Investigación"/>
            <Proyecto2 UnBurgosmáslimpio="Comunitario"/>
          </Proyectos>
      </Empleado1>
      <Empleado2>
          <Nombre>Gustavo</Nombre>
          <Apellidos>Fernández,Alonso</Apellidos>
          <Puesto Administración="Secretario"/>
          <Permanencia Años="13"/>
          <Proyectos></Proyectos>
      </Empleado2>
</Empleados>
```
