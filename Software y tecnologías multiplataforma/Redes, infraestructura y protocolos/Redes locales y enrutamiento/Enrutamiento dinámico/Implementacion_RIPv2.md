## Implantación de RIPv2 sobre la topología del ejercicio 6B 

En este ejercicio vamos a ver la implementación la RIPv2, sobre el ejercicio6B. 
Lo primero que haremos será eliminar todas las rutas estáticas creadas. 
Una vez eliminadas, procederemos a activar el protocolo RIP en cada uno de los routers. 
Para poder configurar este protocolo, entraremos al modo de configuración router rip. 
Y usaremos el comando network “IP” para añadir las redes a las que esta directamente conectado nuestros routes. 

### R1 

![image](https://github.com/user-attachments/assets/e66bef22-11e6-4f23-9d0d-d435f3395259)

### R2

![image](https://github.com/user-attachments/assets/1346ddeb-ff03-4c5d-bfa1-b43df4919c09)

### R3

![image](https://github.com/user-attachments/assets/0ba88a32-cd50-402b-8b4f-f3c9e994f934)

Y al terminar de poner las redes, debemos de especificar la versión del protocolo RIP. 
En mi caso, RIPv2. 

Este protocolo está continuamente mandando información a los routers, por lo que si esperamos un rato, veremos que las tablas de rutas, cada vez se hacen más grandes

### R1 

![image](https://github.com/user-attachments/assets/06cf6c3c-eb21-4acb-8f10-598c36b7f865)

### R2

![image](https://github.com/user-attachments/assets/2396c950-4f6d-4ee4-9f73-4edce13f0c53)

### R3

![image](https://github.com/user-attachments/assets/e3abad39-ef30-4da6-b847-b60adeae1d7c)

---

## Comprobación

Ahora veremos, como se ha realizado el encaminamiento dinámico, puesto que puedo tener conexión con todas las redes (menos las redes que están restringidas por la ACL anteriormente configurada.)

### Red 1.0

![image](https://github.com/user-attachments/assets/acaa83d0-a8d4-4b72-a302-2fe5e71e7cfa)

### Red 2.0

![image](https://github.com/user-attachments/assets/d341fd84-e41c-4e12-a6ee-f99eaaf530e1)




















































