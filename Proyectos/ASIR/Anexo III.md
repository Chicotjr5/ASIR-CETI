## Instalación de XAMPP

Ahora toca descargar e instalar **XAMPP**. 
Para poder obtenerlo, no puedo ir a la página de descarga y descargarlo directamente, porque estamos en una interfaz de texto, así que vamos a usar comandos. 
El comando **wget** permite descargar contenidos de internet.

```bash
wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.2.12/xampp-linuxx64-8.2.12-0-installer.run  
```

<img width="660" height="27" alt="image" src="https://github.com/user-attachments/assets/fac0e3c2-090e-48a8-a6b5-17398158f6dc" />

↓

<img width="683" height="32" alt="image" src="https://github.com/user-attachments/assets/da68dbd0-20f5-411c-bbff-03a2d018dd3f" />


Este archivo es un script, así que, para poder ejecutarlo, primero he de darle los permisos necesarios. 
Uso el comando 

```bash
chmod 755 xampp-linux-x64-8.2.12.0-installer.run
```

para otorgarle los siguientes permisos:

- Para el usuario propietario – Lectura, Escritura, Ejecución - RWX
- Para el grupo propietario – Lectura, Escritura - RW
- Para otros – Lectura, Escritura - RW 

Después de darle los permisos necesarios, procedo a ejecutarlo:

```bash
./xampp-linux-x64-8.2.12.0-installer.run 
```

<img width="686" height="42" alt="image" src="https://github.com/user-attachments/assets/19f91c1d-104b-42e9-9efa-6a8f1b250f6d" />

Al ejecutar el script empezará la instalación de **XAMPP**, donde me hace distintas preguntas: 

Primero nos pregunta sobre que componentes queremos instalar. 

**XAMPP CORE FILES**: Son los archivos más importantes, puesto que Los “XAMPP Core Files” incluyen los archivos de configuración, los scripts de inicio, los módulos del servidor web Apache, las bibliotecas PHP y Perl, y los archivos de la base de datos MySQL. Estos archivos son necesarios para que XAMPP funcione correctamente. 

**XAMPP DEVELOPER FILES**: Estos archivos ayudan a los desarrolladores a trabajar en el software, incluyendo bibliotecas, módulos, scripts etc. 

Estas 2 elecciones se eligen automáticamente, así que prosigo 
Ahora paso con el directorio de instalación que por defecto es el **/opt/lamp** y por último ya pide la confirmación para empezar a instalar XAMPP en el equipo.

<img width="647" height="503" alt="image" src="https://github.com/user-attachments/assets/ebe1ab20-8aa2-4d2d-bc4c-290a9be1886b" />

Una vez termina de instalarse, lo compruebo yendo al directorio **/opt/lampp** y ejecutando un **ls** para ver todos losdirectorios y archivos que ha dejado **XAMPP**

<img width="648" height="97" alt="image" src="https://github.com/user-attachments/assets/7a78a270-b1be-457c-9d2a-c63eec6e92d9" />

Para poner en funcionamiento a XAMPP, ejecuto el siguiente comando: 

```bash
sudo /opt/lampp/lampp start 
```

<img width="662" height="147" alt="image" src="https://github.com/user-attachments/assets/eae964de-75e5-4c7b-b0af-e24abdc01415" />

↓

<img width="670" height="336" alt="image" src="https://github.com/user-attachments/assets/a81b2fee-24c5-47f1-9b20-5940813a259d" />

