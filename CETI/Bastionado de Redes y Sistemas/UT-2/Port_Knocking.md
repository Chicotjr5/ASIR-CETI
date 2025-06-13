<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Explicación](#explicación)
- [Implementación](#implementación)
- [Comprobar funcionamiento](#comprobar-funcionamiento)

</details>

---
## Introducción

En esta práctica se va a hablar sobre el **port knocking** y se va a realizar un caso práctico para implementarlo.

---

### Explicación

El Port Knocking es una técnica de seguridad que permite abrir puertos en un firewall solo después de recibir una secuencia específica de intentos de conexión en puertos cerrados y es usado para ocultar servicios como SSH y reducir la superficie de ataque. 

El equipo cliente manda una serie de peticiones al servidor a través de unos puertos en específico. El servidor abre el puerto si esas peticiones se han realizado de forma correcta y a los puertos correctos para que el equipo cliente lo utilice. 

Para que el puerto se cierre el cliente deberá de mandar otra secuencia de peticiones para que el servidor cierre el puerto. 

Si la secuencia no es correcta, no se abre el puerto.


---

### Implementación
Para implementar el Port Knocking hay que instalar la herramienta knockd

```bash
apt install knockd
```

![1 1](https://github.com/user-attachments/assets/69f1f8fa-0092-4a2b-b0d5-da03dfa6f546)


Una vez instalado accedo a su archivo de configuración

```bash
nano /etc/knockd.conf
```

![1 2](https://github.com/user-attachments/assets/a6b27b56-ce69-4281-9597-1894294d3525)


El contenido de este fichero es el siguiente:

![1 3](https://github.com/user-attachments/assets/6a890c46-0b17-4414-bee7-7ab3a37b9eaf)


En este fichero se puede ver la configuración para abrir el servicio **ssh** en la cual tenemos que hacer peticiones al puerto 7000, 8000 y 9000, en ese orden. 
Para cerrarlo, hay que mandar peticiones al puerto 9000, 8000 y 7000

También esta para abrir el servicio HTTPS pero no lo voy a tocar. 

Se podría dejar la configuración tal y como esta, pero voy a cambiar la secuencia de puertos:

![1 4 1](https://github.com/user-attachments/assets/737d0b1a-e67c-4bba-a6a5-dac3795e2492)


Además de esto también se puede editar el fichero **/etc/default/knockd** para que este servicio se inicie al iniciar el equipo.

![1 4](https://github.com/user-attachments/assets/2aabf8de-33c5-47fe-b43c-5fc8cdcea036)


Para ello hay que darle el **valor 1 a la opción START_KNOCKD**

![1 6](https://github.com/user-attachments/assets/4d334dab-057b-4dfa-8832-99c61fe2db05)


Además de que si tenemos varias interfaces de red, el servicio puede escuchar por una interfaz que no queremos, así que des comento la opción **KNOCKD_OPTS** y le pongo la **interfaz eth0**.

![1 7](https://github.com/user-attachments/assets/a44b9121-2d43-4581-94d1-4cf783be22c9)


Para aplicar estos cambios, reinicio el servicio **knockd** y compruebo su estatus:

```bash
systemctl restart knockd.service
``` 
```bash
systemctl status knockd.service
```

![1 8](https://github.com/user-attachments/assets/64a364c7-3e02-4cee-af64-f83103a952ec)


---

### Comprobar funcionamiento

Desde un equipo **Ubuntu 24.10** intento realizar una conexión **ssh a Kali Linux**:

![1 9](https://github.com/user-attachments/assets/be78a3db-0956-4d15-88fe-4daec4769ec6)


Esta conexión no se puede realizar debido a que el puerto está cerrado.

En cambio si realizo las peticiones a los puertos correspondientes, funciona:

![1 10](https://github.com/user-attachments/assets/b2781d65-2df4-4d7e-8944-4c61063520b4)


↓

![1 11](https://github.com/user-attachments/assets/9c09f3f1-4c61-42b5-9cd9-2e53f9df5f7b)


Cierro la conexión y mando las peticiones a Kali Linux para poder cerrar el puerto. Intento la conexión de nuevo y no funciona.

![1 12](https://github.com/user-attachments/assets/7ab56b55-3ea7-42e7-add3-8d155d23b58e)


