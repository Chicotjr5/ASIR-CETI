### Instalar Active Directory 

Para poder instalar **Active Directory**, iremos a **Ejecutar** y pondremos **dcpromo**. 

Dcpromo.exe (DCPROMO) se introdujo en Microsoft Windows 2000 Server para proporcionar un método de GUI para promover y degradar los controladores de dominio de Active Directory. 

![image](https://github.com/user-attachments/assets/90bd5cd8-1f9a-49e9-ba59-1b593975a0ef)

Y nos aparecerá un asistente para poder instalar roles de servidor. 
En nuestro caso, elegiremos el rol **Active Directory Lightweight Directory Services**. 

AD LDS es un modo de Active Directory que proporciona servicios de directorio para aplicaciones. Proporciona un almacén de datos y servicios para acceder al almacén de datos. Utiliza interfaces de programación de aplicaciones (API) estándar para acceder a los datos de la aplicación.  

![image](https://github.com/user-attachments/assets/4c39f017-e27c-41d3-9706-843e984fa90b)

Al seleccionar los roles (o el rol en este caso), se empezará a instalar.

![image](https://github.com/user-attachments/assets/9f122481-074e-41a7-a5a9-c8a6b81b2406)

---

### Promocionar servidor a controlador de dominio 

En cuanto se termine de instalar, podremos crear nuestro nuevo controlador de dominio.

![image](https://github.com/user-attachments/assets/73b87884-ce14-444f-bf7f-b3df521ce681)

Especificaremos que vamos a instalar un nuevo bosque.

![image](https://github.com/user-attachments/assets/85028d6f-099c-4f29-9a2c-4d18c5c48fb3)

Y tendrá un nivel funcional de Windows Server 2008.

![image](https://github.com/user-attachments/assets/9ece764d-dbfd-405c-836a-2f9d63ab3f51)

También especificaremos que el controlador de dominio sea un servidor DNS.

![image](https://github.com/user-attachments/assets/7057bc7e-e4e9-4c39-a074-1544af913a5c)

Y nos saldrá un mensaje, especificándonos, que deberemos asignar IP estáticas a nuestros equipos.

![image](https://github.com/user-attachments/assets/afec461f-7813-45f9-81d3-d1f3a2a1bb38)

Así que le pondremos una IP estática a nuestro servidor.

![image](https://github.com/user-attachments/assets/dabd6907-d896-4bf5-87de-f9c4989fd41f)

Para terminar, le pondremos una contraseña, en caso de restauración.

![image](https://github.com/user-attachments/assets/8d821f6b-0710-4760-aedc-c71d4ce18259)

Y antes de empezar a instalar, nos saldrá un pequeño resumen de la instalación. 

![image](https://github.com/user-attachments/assets/87df2bad-f070-44e9-897d-1ebfd8381dad)

Y empieza la instalación.

![image](https://github.com/user-attachments/assets/7f08b130-70ec-42b1-898b-b62f4b1a2c2a)

---

### Crear usuario

Una vez instalado, reiniciamos el equipo e iniciamos sesión como administrador. 

Vamos a **Herramientas Administrativas>Usuarios y equipos de Active Directory**

![image](https://github.com/user-attachments/assets/2ddfa068-b1dd-4afd-9315-d2535da18e2f)

Vamos a **nuestro dominio>Nuevo>Usuario**

![image](https://github.com/user-attachments/assets/4a950c46-7bed-4ccd-8f26-7ad6caa68e61)

Y creamos un nuevo usuario. 

![image](https://github.com/user-attachments/assets/7d2ff144-acb2-439f-9f7f-fdcac9cd7446)

Con su contraseña.

![image](https://github.com/user-attachments/assets/64826b4f-ba69-4bf0-96ef-40a4a60c9704)

---

### Unir cliente W10 a dominio

Una vez ya tenemos a nuestro usuario, podemos unir a nuestro cliente W10 al dominio. 

Lo primero que haremos será configurar su configuración de red.

![image](https://github.com/user-attachments/assets/e5b40e33-df77-44ef-8058-2573d4fb7098)

Por cierto, ambas máquinas deben estar en la misma red interna para que se puedan comunicar. 

![image](https://github.com/user-attachments/assets/0b4bbf88-de32-4427-a3f3-16c2ec3180d7)

↓

![image](https://github.com/user-attachments/assets/fd293bf1-af73-4187-897f-1b17e3314b87)


Una vez tenemos bien configurada la red, tendremos que ir a **Configuración Avanzada>Nombre de equipo>Cambios en el dominio** y en el apartado **Miembro del Dominio**: pondremos el nombre de nuestro dominio. 

![image](https://github.com/user-attachments/assets/4039388e-0af5-4a87-9a72-71af6564627b)

Nos conectaremos al dominio y especificaremos el usuario con el que iniciaremos sesión.

![image](https://github.com/user-attachments/assets/8259b292-c0c4-4e19-bba1-be454641909b)

---

### Iniciar sesión con el usuario creado

Reiniciamos el equipo y al iniciar sesión, lo haremos con el usuario que hemos especificado. 

![image](https://github.com/user-attachments/assets/21b7e8d2-2c01-423b-a3bb-f0e699a81c31)

↓

![image](https://github.com/user-attachments/assets/82c183b0-a5d7-4146-81cb-cbed345df0e7)














