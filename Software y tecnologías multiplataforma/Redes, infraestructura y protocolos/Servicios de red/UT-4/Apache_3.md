## Configurar los servicios DNS para que los dos dominios virtuales apunten a la IP del equipo

En esta práctica, vamos a crear 2 dominios virtuales. 
Pero, antes de nada, tenemos que modificar el servidor DNS para que funcione correctamente. 
Crearemos un nuevo registro en la zona **sri-03.net** para el dominio **www1.sri-03.net** 

<img width="427" height="27" alt="image" src="https://github.com/user-attachments/assets/0324aa6a-8c1d-4485-96d4-eafc3424b554" />

Y una nueva zona primaria para el dominio **www2.midominio03.com**

<img width="489" height="127" alt="image" src="https://github.com/user-attachments/assets/99672394-d909-4df4-bec4-436c098f3fd7" />

Y como tenemos una nueva zona, también tendremos que crear un archivo de zona, con los registros correspondientes.

<img width="717" height="389" alt="image" src="https://github.com/user-attachments/assets/10a61b6b-4f8f-4af2-b9fe-70e8afc5c576" />

Comprobamos el funcionamiento de ambos registros con un 

```bash
nslookup 
```

<img width="412" height="124" alt="image" src="https://github.com/user-attachments/assets/874e7732-95e9-4a02-8d8e-4b127e9257f8" />

↓

<img width="516" height="122" alt="image" src="https://github.com/user-attachments/assets/973f0fc4-d233-4c3e-a970-b73faa17a307" />

### Comprobar funcionamiento en clientes

Además, nos iremos a W7 y a Ubuntu 22.04 para probar su funcionamiento en el navegador web. 

<img width="784" height="248" alt="image" src="https://github.com/user-attachments/assets/b1042cb0-b828-4b1b-851e-563d9dfbe6e0" />

↓

<img width="783" height="241" alt="image" src="https://github.com/user-attachments/assets/3bb65b08-5288-4a11-a857-a800208c6761" />

---

## Configurar los dominios virtuales

Como ya tenemos los registros en funcionamiento, vamos a crear esos dominios. 
Antes de que se nos olvide, vamos a crear el directorio raíz para los documentos index.html de cada dominio. 

<img width="472" height="53" alt="image" src="https://github.com/user-attachments/assets/8b692622-ca38-4dd9-bbc3-9d714772d046" />

Para poder crear los dominios virtuales, crearemos un archivo en **/etc/apache2/sites-avaliable**

<img width="721" height="51" alt="image" src="https://github.com/user-attachments/assets/41066dc4-e756-4c40-81f7-f6919d58df01" />

Estos archivos tendrán la siguiente configuración:

<img width="653" height="140" alt="image" src="https://github.com/user-attachments/assets/6be5e677-2649-4933-9511-27dd320bec52" />

↓

<img width="663" height="146" alt="image" src="https://github.com/user-attachments/assets/a0bc0d46-bdfc-4496-b7dd-7eeacae90350" />

De IP tendrán la del servidor. 
El nombre del servidor será el nombre del dominio, pero sin la parte de wwwX 
El directorio raíz, será los que acabamos de crear 
Y las páginas por defecto, serán index.html, index.htm.

---

## Activar los dominios virtuales (seguirá activo default) 

Para poder activar estos dominios, tenemos que ejecutar el siguiente comando: 

```bash
a2ensite “nombre”
````

<img width="749" height="177" alt="image" src="https://github.com/user-attachments/assets/9861fd6b-fbfd-4c1f-871a-1d960f403948" />

---

## Testear ficheros de configuración 

Antes de reiniciar el servicio, comprobaremos que los ficheros de apache están correctos con un 

```bash
apachectl configtest
```

<img width="906" height="73" alt="image" src="https://github.com/user-attachments/assets/58e34a60-3b88-446b-96e9-43e179018a2a" />

El error que sale es porque falta la directiva ServerName en el archivo apache2.conf, pero no es nada importante 

---

## Reiniciar Apache 

Para que todos estos cambios que hemos realizado se guarden, usaremos la siguiente orden:

<img width="727" height="24" alt="image" src="https://github.com/user-attachments/assets/65eed808-d215-4b64-939c-ebe75d109cb3" />

---

## En cada sitio, cargar alguna página html que presente tu nombre y el sitio al que está accediendo

Ahora, vamos a crear un fichero index.html para cada dominio virtual, así, que cuando accedamos a través del navegador web, tiene que salir la página que acabamos de crear. 
Aquí vemos el contenido de los ficheros, los cuales se encuentran en **/var/www/wwwX**

<img width="502" height="392" alt="image" src="https://github.com/user-attachments/assets/eced4760-5280-4f87-b62a-f4d3014e8982" />

---

## Desde Ubuntucli y luego desde el cliente XP, probar a acceder a las siguientes URL 


Pasamos a probar el correcto funcionamiento de nuestros dominios virtuales.
**www1.sri-03.net**

<img width="432" height="187" alt="image" src="https://github.com/user-attachments/assets/dab74be9-6695-44d7-b6c9-b3fc034e1eac" />

↓

<img width="424" height="220" alt="image" src="https://github.com/user-attachments/assets/f6058a77-db75-43af-98ba-ea6c04458760" />


**www2.midominio03.com**

<img width="307" height="194" alt="image" src="https://github.com/user-attachments/assets/96f55a85-881b-400e-b1ae-46a1645ab7fa" />

↓

<img width="505" height="189" alt="image" src="https://github.com/user-attachments/assets/29cbd76b-2aaa-4d7d-b648-ff9693bf8c4b" />

**192.168.203.33**

<img width="585" height="198" alt="image" src="https://github.com/user-attachments/assets/0fd4a0ec-4ae5-4b4e-bd85-1757a34b2ed7" />

↓

<img width="584" height="223" alt="image" src="https://github.com/user-attachments/assets/dcaf64a4-ef56-43f9-8697-b97e52bb9fce" />

**http://localhost/**

<img width="356" height="195" alt="image" src="https://github.com/user-attachments/assets/eed283a0-f756-4d57-8cc0-b37c95e9a64a" />

---

## Desactivar el dominio default, y volver probar a acceder a las URL copiando la pantalla obtenida. Describir qué ocurre. 

Ahora, tenemos que desactivar por completo el dominio default. 
¿Cómo lo haremos? 
Muy sencillo, comentamos al completo el archivo **/etc/apache2/sites-avaliable/000.default.conf**

 <img width="739" height="581" alt="image" src="https://github.com/user-attachments/assets/ca060df4-46bb-48b6-9ee8-19aceeaf33ae" />

Y volvemos a conectarnos

**www1.sri-03.net**

<img width="433" height="186" alt="image" src="https://github.com/user-attachments/assets/9468981a-61ff-4efa-a3f6-d7a7b69823f2" />

↓

<img width="425" height="220" alt="image" src="https://github.com/user-attachments/assets/8abc8be4-1707-4c99-ae0b-1ab41c8cc488" />

**www2.midominio03.com**

<img width="309" height="192" alt="image" src="https://github.com/user-attachments/assets/9e8f46f4-9f05-4aac-98e2-3c5fb5699a44" />

↓

<img width="504" height="190" alt="image" src="https://github.com/user-attachments/assets/b5e306e8-6f3e-4baf-8d3d-f20d87166542" />

**192.168.203.33**

<img width="490" height="140" alt="image" src="https://github.com/user-attachments/assets/bca8b88e-933a-4d31-b3e7-74d86d55579d" />

↓

<img width="283" height="215" alt="image" src="https://github.com/user-attachments/assets/9f3e5357-af6c-448f-8c1e-99340d170136" />

**http://localhost/**

<img width="357" height="196" alt="image" src="https://github.com/user-attachments/assets/cd9669be-ec59-4e00-9d0a-6bc4d8d7cb19" />

Como podemos observar, al intentar acceder al servidor con la IP 192.168.203.33 nos contesta el dominio www1. 
Esto se debe a que es el primero alfanuméricamente. 
Antes contestaba **000.default.conf** debido a que este archivo es alfanuméricamente hablando, previo al **www1.conf**

---

## Listar el contenido de los ficheros de resolución de nombres de /etc/hosts y de /etc/resolv.conf 

En estos ficheros, encontramos lo siguiente: 

<img width="684" height="289" alt="image" src="https://github.com/user-attachments/assets/32b1e89f-7a83-4db6-8c70-dae0529168b0" />

---

## Configurar los dos dominios virtuales para que los ficheros access.log y error.log se guarden de forma independiente para cada servidor virtual.  Configurarlos para que cada uno de ellos cuando una página no existe, presente una página personalizada y diferentes para cada dominio, avisando del error. 

Para terminar, vamos a configurar a ambos dominios virtuales, para que los mensajes de error y de transferencia los guarden en los ficheros que les indiquemos. 
Para ello, tenemos que añadir en ambos archivos las directivas: 

- ErrorLog
- TransferLog

Además de eso, cuando solicitemos al servidor una página que no existe, haremos que se muestre una página de error. 
Lo haremos con la directiva **ErrorDocument 404**

<img width="556" height="178" alt="image" src="https://github.com/user-attachments/assets/03aa1e27-3e39-4e3b-959c-e31f43dcd667" />

↓

<img width="586" height="178" alt="image" src="https://github.com/user-attachments/assets/b1dda15b-466d-43ed-ac32-8cc29dc28626" />

Vamos a Ubuntu y solicitamos la página **alonso.html** 
Como esta página no existe, nos mostrará el fichero **error.html** 

<img width="533" height="191" alt="image" src="https://github.com/user-attachments/assets/af2c2b3c-e978-4d55-a452-8e5f2cd9436d" />

↓

<img width="604" height="192" alt="image" src="https://github.com/user-attachments/assets/0c05bde0-fc8e-4f8b-85ed-b0647cf7ebd4" />

Además podemos ver los ficheros de error y transferencia, para comprobar su funcionamiento.

<img width="648" height="85" alt="image" src="https://github.com/user-attachments/assets/aae390c6-6167-4716-8198-ba0063b84c8c" />

↓

<img width="683" height="102" alt="image" src="https://github.com/user-attachments/assets/4847cfcb-f1ff-4ead-a7de-9c02fab72161" />

---

## Hazte una copia de los actuales ficheros de configuración de apache.

Usamos la orden 

```bash
cp -r /etc/apache2 /etc/apache2_copia
```

<img width="514" height="25" alt="image" src="https://github.com/user-attachments/assets/975a188e-d340-4a98-bdfd-ff6182d155fc" />

---

## Mostrar estado del servidor a través del navegador web

Para poder habilitar esta característica, tenemos que ir al fichero **/etc/apache2/mods-enabled/status.conf** y en la directiva **<Location /server-status>** tenemos que poner la opción **Required all granted** 

<img width="569" height="415" alt="image" src="https://github.com/user-attachments/assets/71dae462-81aa-4cbf-abf5-d53c4a37e9b9" />

Reiniciamos el servidor y para poder ver el estado del mismo, ponemos en el navegador:

http://www.sri-03.net/server-status

<img width="583" height="462" alt="image" src="https://github.com/user-attachments/assets/829fdf4e-dace-4efc-85bf-9091a8519c93" />

---

## Acceder al servidor con un navegador en modo texto.

El navegador que usaremos será **Lynx** y para acceder pondremos la siguiente url en la línea de comandos: http://localhost/server-status

<img width="894" height="35" alt="image" src="https://github.com/user-attachments/assets/b12ac443-81ae-4140-989c-a0929cd7d090" />

Y accedemos perfectamente.

<img width="731" height="545" alt="image" src="https://github.com/user-attachments/assets/e4ff260e-c199-4852-81f1-05a6cbd97d80" />

---

## Poner un favicon.ico en el servidor web. 

Nos descargamos un archivo favicon.ico y ediante el siguiente comando, lo subimos al directorio raíz de nuestro servidor web. 

<img width="839" height="58" alt="image" src="https://github.com/user-attachments/assets/9a7f4a42-4d52-4c26-acf6-52e75daaa634" />

Y ahora, cada vez que accedamos al servidor a través del navegador, saldrá nuestro favicon al lado del título de la página.

<img width="427" height="229" alt="image" src="https://github.com/user-attachments/assets/cd3791b5-ae37-42bc-8247-87041b9059c3" />





























