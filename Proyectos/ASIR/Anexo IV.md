## Instalación y configuración de Wordpress

### Obtener software 

Para realizar la instalación y configuración de Wordpress, preciso de un navegador y una interfaz gráfica, cosa que en Ubuntu Server 22.04.3 carecemos, pues solo tenemos una interfaz de texto. 

Para arreglar este problema, me voy a conectar por **ssh desde Kubuntu 23.10** hacia **Ubuntu 22.04.3**, por eso, anteriormente lo instalé en Ubuntu Server. 

Abro una consola en **Kubuntu** y con el siguiente comando me conecto: 

```bash
ssh adminixampp@192.168.33.152.
```

<img width="638" height="105" alt="image" src="https://github.com/user-attachments/assets/172bb5ca-ed40-43c4-b288-8cbeb90b7f4d" />

Como es la 1º vez que me conecto el cliente **SSH** no sabe a qué servidor estoy intentando conectar, porque no tiene ninguna referencia de este. 
Así que muestra la huella digital del servidor **(key fingerprint)** y pide verificarla. 
Como si es el servidor al que me quiero conectar, le digo que se conecte. 
Lo primero que haré, será descargar la versión **6.4.3 de Wordpress**.  

Al igual que con **XAMPP** uso el comando wget y la URL del archivo (es un .zip). 

```bash
wget https://es.wordpress.org/latest-es_ES.zip
```

<img width="638" height="136" alt="image" src="https://github.com/user-attachments/assets/1da41070-ae03-44e9-885d-73a1779d8352" />

---

## Obtener software 

Ya con el paquete descargado, voy a descomprimirlo, usando el comando **unzip** que sirve para descomprimir archivos **.zip**. 

<img width="448" height="18" alt="image" src="https://github.com/user-attachments/assets/1888906d-2571-4d44-81a4-6f9d1a8d1f1e" />

Una vez descomprimido, hago un **ls** y compruebo que todo está correcto. 

<img width="588" height="37" alt="image" src="https://github.com/user-attachments/assets/9f9d4607-9ccf-4f3d-a0ad-9f51ade4e0e1" />

Movemos el directorio **wordpress** al directorio **/opt/lampp/htdocs**. 
Para moverla, uso el comando **mv** que permite mover archivos/directorios de una ubicación a otra. 

<img width="632" height="106" alt="image" src="https://github.com/user-attachments/assets/c1d7174a-acff-4de9-93f4-0ed5b0eaaa0a" />

Una vez movido todo el contenido, he de cambiarle los permisos a los archivos y directorios, para que más delante, no tengamos ningún problema de permisos. 

Los **directorios** tendrán permisos 775:

- Propietario - RWX
- Grupo propietario - RWX
- RWX Otros – RX

Los **archivos** tendrán permisos 664:

- Propietario - RW
- Grupo propietario - RW
- RW Otros – R 


Obviamente, hacer eso para todos los archivos y yendo de 1 en 1, es bastante tardado y aburrido, por lo que usaré los siguientes comandos:

```bash
sudo find . -type d -exec chmod -R 775 {} \ 
sudo find . -type f -exec chmod -R 664 {} \
```

Estos comandos, lo que hacen es, con privilegios de superadministrador, buscar en el directorio actual y sus subdirectorios, todos los ficheros de tipo d (directorio)/f (fichero) y cambiarle los permisos, cambiando permisos de directorios, subdirectorios y archivos. 

<img width="620" height="31" alt="image" src="https://github.com/user-attachments/assets/54ffb132-b078-4734-b7ff-e4f255fe7cad" />

---

## Crear BD para Wordpress

Ya estaría todo listo para empezar a instalar Wordpress, pues ya está en el directorio correspondiente, ya tiene los permisos necesarios y XAMPP está en funcionamiento, pero me falta la BD.

Cuando vayamos a instalar cualquier aplicación web en cualquier servidor web, esta debe contar con una base de datos ya creada. 

El SGBD que vamos a usar es **PHPMyAdmin**.

Accedemos a él a través de la siguiente URL: http://192.168.33.152/phpmyadmin

<img width="640" height="229" alt="image" src="https://github.com/user-attachments/assets/77969952-1284-43b7-8bef-21d77fe88408" />

Pasamos a crear la BD, cuyo nombre será **alonso** y estará codificada en **utf8mb4_spanish_ci**.

<img width="455" height="308" alt="image" src="https://github.com/user-attachments/assets/e3fb1128-598f-4755-9f0a-64a101d3404d" />

Después de crearla, crearé un usuario para la BD. 

Selecciono la BD y vamos a Privilegios, en esta pestaña saldrán todos los usuarios con acceso a la BD y sus permisos, además de que se puede añadir uno nuevo, que es lo que voy a hacer. 

<img width="617" height="248" alt="image" src="https://github.com/user-attachments/assets/a52609ff-09b3-4809-9de5-1f8ed67e12e3" />

Para crear el usuario he de poner: 

- Nombre de usuario – Para identificar al usuario 
- Nombre de host – En que host/servidor va a funcionar 
- Contraseña – Para proteger al usuario 
- Privilegios – Que va a poder hacer y que no el usuario 

<img width="505" height="503" alt="image" src="https://github.com/user-attachments/assets/506b6e64-3e93-4a90-b6f4-23e5d2ffd885" />

Una vez creado el usuario, ya está finalizada nuestra BD y puedo proceder con la instalación de Wordpress.

<img width="398" height="216" alt="image" src="https://github.com/user-attachments/assets/1eead012-bc93-474e-84f3-bafae2521f40" />

---

## Instalar Wordpress 

Para acceder a la instalación de Wordpress, pongo la siguiente url en el navegador: http://192.168.33.152/wordpress

<img width="534" height="399" alt="image" src="https://github.com/user-attachments/assets/e1a7fb10-e166-41e8-84d0-7caf6b4acf51" />

En la siguiente pantalla, he de poner los parámetros de la BD que he creado con anterioridad. 

<img width="492" height="394" alt="image" src="https://github.com/user-attachments/assets/77745d34-7e76-41bd-b570-d3ae983a22e2" />

Ahora hay que crear un archivo dentro de /opt/lampp/htdocs/wordpress llamado **wp-config.php** el cual contiene la configuración básica y esencial para que el sitio web Wordpress funcione correctamente. 

Todo el contenido del archivo nos lo da la propia instalación, por lo que solo hay que crear el archivo y pegar el contenido:

<img width="620" height="649" alt="image" src="https://github.com/user-attachments/assets/93fca9bc-99f1-408c-8be5-c42f67694af7" />

Ya con el archivo creado, prosigo con la instalación. 
Ahora paso a configurar el nombre del sitio, el nombre del usuario de la aplicación web junto con su contraseña y un correo electrónico. 

<img width="478" height="500" alt="image" src="https://github.com/user-attachments/assets/2a4b92e9-8465-41c5-9c4a-8a8530d7943c" />

Al acabar la instalación, saldrá una pantalla de Login e inicio sesión con el usuario que acabo de crear.

<img width="174" height="215" alt="image" src="https://github.com/user-attachments/assets/4a64eb95-21a9-41e7-b0a8-58719d4457ac" />

---

## Acceder a Wordpress 

Al iniciar sesión, ya puedo entrar perfectamente en el **back-end** de Wordpress, donde podremos personalizar el tema, instalar plugins, editar las páginas, añadir información, administrar el sitio etc.

<img width="509" height="347" alt="image" src="https://github.com/user-attachments/assets/2053edaa-87af-432c-8988-76ecbda98df6" />

En Wordpress, ya tenemos varios temas instalados **por defecto**, pero estos son muy básicos y permiten muy poca personalización, por lo que vamos a instalar un tema propio (los temas y plugins instalados en este anexo, no han sido usados en la web real, sino que se han usado de ejemplo para mostrar el proceso.)

Para poder instalar un tema en Wordpress, voy hasta el apartado **Temas** donde podemos ver todos los temas que tenemos instalados, además, de poder añadir nuevos.

Para ello, hago clic sobre el botón **Añadir nuevo tema**

<img width="598" height="404" alt="image" src="https://github.com/user-attachments/assets/768bcede-5f35-4981-93bd-99a3d9a36b90" />

Ese botón me lleva a esta ventana, donde tenemos a nuestra disposición todos los temas disponibles a instalar. 

De hecho, puedo instalar uno desde aquí, o subir uno que hayamos descargado desde otro sitio (por ejemplo, desde la página oficial del tema). 

<img width="639" height="248" alt="image" src="https://github.com/user-attachments/assets/ee1c1df6-6e9f-45e8-9191-2651bc338bf8" />

Al seleccionar uno, se ves los detalles y una vista previa de ese tema (o instalarlo directamente)

<img width="269" height="237" alt="image" src="https://github.com/user-attachments/assets/af10601e-d510-4372-b878-06fa7e39eddc" />

Aquí ya se visualiza una pequeña vista previa de lo que sería la página de inicio, no del resto de páginas (bueno eso depende del tema). 

<img width="627" height="155" alt="image" src="https://github.com/user-attachments/assets/5d230e0f-94cf-4f47-9f0a-7603dc14d719" />

Al querer instalarlo, pide las credenciales del servidor FTP, así que las pongo.

<img width="252" height="292" alt="image" src="https://github.com/user-attachments/assets/99d83ac2-d3b7-4afb-8dcb-173a06e18bc3" />

Una vez instalado, saldrá la opción de activarlo. 
Como en este momento, yo ya tengo mi sitio web creado con otro tema, pues no voy a activarlo, porque quizás se me desconfigura todo y no quiero eso. 

<img width="363" height="322" alt="image" src="https://github.com/user-attachments/assets/bb82ed6b-f80d-472a-8197-7a39435a9bc5" />

Bueno, ya sé cómo instalar un tema, ahora voy a instalar los plugins. 
Los plugins de Wordpress son muy importantes, debido a que añaden un montón de características a nuestro sitio web. 
Y hay muchísimos plugins de diferente tipo:

- Editores de páginas
- De copias de seguridad
- Plugins que añaden formularios
- Que mejoran el SEO de nuestro sitio
- Que ofrecen seguridad adicional
- De exportación e importación de configuraciones
- Optimización de seguridad

Eso sí, el proceso de instalación es exactamente el mismo que el de los temas.

---

## Instalación de plugin en Wordpress 

Para instalar un plugin voy a la sección de **Plugins**: 

Al igual que con los temas, se pueden ver los plugins instalados y en el botón Añadir nuevo plugin instalamos nuevos plugins.

<img width="572" height="361" alt="image" src="https://github.com/user-attachments/assets/56eff63b-1945-44f7-aeae-ad4cf1ebd9a8" />

Esto me lleva a otra ventana, donde están todos los plugins disponibles a instalar, de hecho, al igual que con los temas, podemos añadir uno que nos hayamos descargado. 
Y eso voy a hacer, subiré un plugin desde un archivo 
Para ello, le damos al botón **Subir Plugin**. 

<img width="622" height="290" alt="image" src="https://github.com/user-attachments/assets/237580df-3b6a-463e-81da-0a9f232ec94b" />

Aparecerá la siguiente casilla, donde se pide que suba el archivo .zip del plugin.

<img width="580" height="118" alt="image" src="https://github.com/user-attachments/assets/596357cb-599d-4d36-9bc4-e6f6c8cd0fdd" />

Para obtenerlo, navego hasta la página oficial de Wordpress -> https://es.wordpress.org/plugins/

Por ejemplo, voy a descargarnos el plugin **Hello Dolly**.

<img width="521" height="501" alt="image" src="https://github.com/user-attachments/assets/3dfffa0c-a2c6-4fc8-95ca-d163ebc2798a" />

Una vez descargado, lo subo. 

<img width="621" height="152" alt="image" src="https://github.com/user-attachments/assets/ac69cc92-71a7-43b5-b1fd-3fd872b12478" />

Para instalarlo, Wordpress vuelve a pedir las credenciales de **FTP**. 

<img width="442" height="317" alt="image" src="https://github.com/user-attachments/assets/ac647a35-bb9c-4351-9cf7-f7df58fe66ff" />

Una vez instalado, procederé a activarlo

<img width="574" height="281" alt="image" src="https://github.com/user-attachments/assets/014571d7-6872-470b-8671-ec34bdbe85d3" />
