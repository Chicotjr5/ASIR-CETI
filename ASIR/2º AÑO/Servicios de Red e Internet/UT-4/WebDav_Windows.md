## Configuración de WebDav en Windows Server 2012

### Crear usuario 

En esta práctica vamos a crear un sitio web con webdav. 
Pero antes de nada, vamos a crear un usuario, con el cual podremos conectarnos al sitio web.

<img width="370" height="337" alt="image" src="https://github.com/user-attachments/assets/3ae2dbfc-25a1-4723-92e0-e62a288c5f55" />



### Crear directorio y dar permisos

Creamos la carpeta donde se encontrará el sitio **webdav** y le damos permisos al usuario que acabamos de crear. 

<img width="334" height="210" alt="image" src="https://github.com/user-attachments/assets/c278bf9b-953c-4aff-9d07-7588c0b2a07d" />

↓

<img width="403" height="463" alt="image" src="https://github.com/user-attachments/assets/a6b63d9e-4d2a-4431-bdea-805273aa52a5" />


### Crear directorio virtual

Dentro del sitio donde se encontrará el servidor webdav, crearemos un nuevo directorio virtual.


<img width="368" height="141" alt="image" src="https://github.com/user-attachments/assets/a9fdf79e-782c-45d1-a234-5fe6deb4a460" />

↓

<img width="411" height="338" alt="image" src="https://github.com/user-attachments/assets/9a08cc16-d419-4e56-884b-184b0aac9746" />

↓

<img width="404" height="300" alt="image" src="https://github.com/user-attachments/assets/44542bf6-3715-4a33-8a43-3e25ff7318ae" />

### Configurar sitio WebDav 

Una vez creado el directorio virtual, podemos configurar el sitio webdav. 
Vamos a **Reglas de creación de WebDav** dentro del directorio virtual y lo habilitamos. 


<img width="95" height="96" alt="image" src="https://github.com/user-attachments/assets/8fa5e778-a50c-4620-a95d-e5889fbaeddf" />

↓


<img width="271" height="110" alt="image" src="https://github.com/user-attachments/assets/a79741ba-af0e-44c0-8def-87ded2e16b34" />

Una vez habilitado, agregamos una regla de creación. 


<img width="200" height="30" alt="image" src="https://github.com/user-attachments/assets/e735fa15-a923-4ca7-858c-d44ac3bd160e" />

↓

<img width="473" height="610" alt="image" src="https://github.com/user-attachments/assets/53167cae-63cc-4840-94e5-f9e658f3a944" />

### Comprobar

Una vez todo connfigurado, nos dispondremos a probar el sitio webdav. 
Nos vamos a Linux y ponemos lo siguiente en el explorador de archivos. 


<img width="252" height="53" alt="image" src="https://github.com/user-attachments/assets/a12a2fdc-90ab-4528-a6b5-118e3c4d727d" />

Nos pedirá credenciales, así que ponemos las del suuario recientemente creado. 


<img width="490" height="210" alt="image" src="https://github.com/user-attachments/assets/73930059-5bca-43ba-a1e8-c40be4060a17" />

Entramos perfectamente y creamos un nuevo directorio.


<img width="479" height="190" alt="image" src="https://github.com/user-attachments/assets/6caf46ed-3cc3-403b-8718-3103cf709f03" />

Si volvemos a Windows Server, veremos que en la carpeta **webdav** esta el directorio que acabamos de crear.


<img width="732" height="135" alt="image" src="https://github.com/user-attachments/assets/3c59feb5-0de8-46a0-90b1-ef832dc8d715" />
