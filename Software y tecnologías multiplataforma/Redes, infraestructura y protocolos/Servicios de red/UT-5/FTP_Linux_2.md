## Configurar FTP anónimo

Para finalizar, vamos a configurar el sitio **FTP anónimo**.

Para activarlo, tenemos que descomentar las líneas del bloque **Anonymous** del fichero **proftpd.conf**. 

Yo le he realizado varias modificaciones, como por ejemplo, que al acceder de forma anónima, entre al directorio **/etc/ftp**  y que permita conectarse mediante el usuario **anonymous**, además, de que solo tendrá permisos de lectura y no podrá salir del directorio **/etc/ftp** 

<img width="251" height="341" alt="image" src="https://github.com/user-attachments/assets/863e9ddd-7ae9-4050-b549-2e125470400a" />

Para acceder de forma anónima, tan solo nos conectamos y ponemos el nombre de un usuario anónimo **(FTP / ANONYMOUS)**

<img width="632" height="316" alt="image" src="https://github.com/user-attachments/assets/9284eaa1-2105-4d67-9f65-dae6535b646f" />

También probamos a conectarnos como **FTP**. 

<img width="660" height="243" alt="image" src="https://github.com/user-attachments/assets/59f35427-143f-447a-8794-642d4660b9f0" />

---

## Directorios dentro del sitio

Dentro del directorio **/etc/ftp** vamos a crear 3 directorios:

<img width="693" height="132" alt="image" src="https://github.com/user-attachments/assets/179898f0-6997-4151-bef2-63cb7ef9c511" />

Y cada vez que entremos a uno, saldrá un mensaje informativo, para hacer esto, tenemos que añadir el siguiente bloque dentro de **proftp.conf**.

<img width="341" height="236" alt="image" src="https://github.com/user-attachments/assets/192ef225-576a-43ff-a1d8-3b927121af7a" />

Lo que hace esto, es leer el contenido del archivo y cada vez que entre al directorio, lo saca por pantalla.

Guardamos la configuración, reiniciamos el servidor y comprobamos: 

<img width="310" height="46" alt="image" src="https://github.com/user-attachments/assets/154c06b2-ad9a-4cea-ab07-d37bb0c84402" />

↓

<img width="266" height="47" alt="image" src="https://github.com/user-attachments/assets/5c1dcf4b-2aa6-4d77-9ba2-013733eb553d" />

↓

<img width="269" height="47" alt="image" src="https://github.com/user-attachments/assets/a28e3626-6e87-442a-b406-c2bf64b9496c" />

---

## Realiza distintas comprobaciones

Pasamos al siguiente punto, donde vamos a realizar diferentes comprobaciones 
Como por ejemplo, comprobar que solo acceden usuarios anónimos. 
Al intentar acceder como operador, nos denegara el acceso, puesto que no es un usuario anónimo. 

<img width="643" height="153" alt="image" src="https://github.com/user-attachments/assets/3321e850-5616-4598-9ebe-92426c36ef99" />

Otra comprobación, es sobre los permisos de los usuarios anónimos. 
Estos pueden visualizar el contenido del directorio, mas no modificarlo.

<img width="288" height="47" alt="image" src="https://github.com/user-attachments/assets/ca077e63-bd65-4cc0-b46e-6d69c5d315ad" />

Además, de que solo pueden moverse por el directorio **/etc/ftp**, no fuera de él. 

<img width="560" height="258" alt="image" src="https://github.com/user-attachments/assets/943a3777-8d55-4275-9c51-2cd24f58a645" />

---

## Probar conexiones en modo gráfico

Para terminar, nos conectaremos con interfaz gráfica, ya sea con el navegador de archivos o con un software específico. 
Primero nos conectaremos con el navegador de archivos. 
Nos conectaremos como usuario anónimo y accederemos.

<img width="491" height="205" alt="image" src="https://github.com/user-attachments/assets/454916fb-4ec3-4aa1-a76f-c830e9f27145" />

Y como buen sitio anónimo, no podemos crear archivos ni carpetas. 

<img width="819" height="87" alt="image" src="https://github.com/user-attachments/assets/7aa622d1-13f0-4b1d-adf7-a35377923326" />

Otra forma de conectarnos, es con **gFTP**. 

<img width="858" height="305" alt="image" src="https://github.com/user-attachments/assets/c0ee4c03-dc50-4867-850d-8d734f24b363" />

Si intentamos crear un directorio/subir un archivo, nos saldrá un error.

<img width="828" height="193" alt="image" src="https://github.com/user-attachments/assets/35560310-4138-4ccc-a272-908f4da7f8ed" />

---

## Fichero de configuración

<img width="769" height="726" alt="image" src="https://github.com/user-attachments/assets/34b36923-d564-4309-8439-f2ffebba1f93" />


























































































