## Instalar y configurar OpenLDAP en Ubuntu Server

### Configuración previa del servidor

Esta práctica consiste en la instalación y configuración de OpenLDAP en un servidor Ubuntu 22.04 
Pero antes de hacer nada, tenemos que preparar el servidor.

Cambiaremos el nombre del equipo a **ChicoteUD03** en el fichero **/etc/hostname**

![image](https://github.com/user-attachments/assets/28a3293f-cf71-4a6f-992f-2f50e611bc36)

Y el nombre del controlador del dominio, el cual se configura en **/etc/hosts**, será **ChicoteUD03.astonmartin.local** 

![image](https://github.com/user-attachments/assets/18a09a4d-0153-438a-899b-bef954203bc4)

Y, por último, comprobamos la dirección IP de nuestro equipo.

![image](https://github.com/user-attachments/assets/08e72c7e-a7b9-4bb6-8cc3-54b29d821b9e)

---

### Instalación y configuración de OpenLDAP 

```bash
apt install slapd ldap-utils -y
```

![image](https://github.com/user-attachments/assets/c267dc2a-845a-48e7-a3a7-478b4cc3b7f5)

Se empezarán a instalar los paquetes y se nos mostrará una pantalla para que pongamos cual será la contraseña del administrador de OpenLDAP. 

![image](https://github.com/user-attachments/assets/68b5f891-70dd-4008-9156-577c2b3c0870)

Y finaliza la instalación. 
Para ver que se ha instalado correctamente, ejecutaremos un slapcat comando el cual permite obtener la información de la base de datos LDAP. 

![image](https://github.com/user-attachments/assets/991c5033-f36e-4789-88cc-cfddee3f6915)

---

### Creación de la estructura de directorios 

Una vez instalado, ya podemos empezar a configurarlo. 
Primero crearemos la estructura de directorios, en la cual tendremos 3 Unidades Organizativas. 
Para crear esta estructura, crearemos un archivo con extensión **.ldif**. 

![image](https://github.com/user-attachments/assets/5644ad79-347f-4804-bf0a-86b62a73467e)

Dentro de este, pondremos la estructura de directorios de OpenLDAP, el nombre del objeto y el tipo de objeto que es. 
Para cada Unidad organizativa, ponemos una entrada, la cual se separa por una línea en blanco.

![image](https://github.com/user-attachments/assets/04c3afd6-06a8-4ca9-8e28-a58809df6a60)

**Dn**: Estructura del árbol de directorios 
**objectClass**: Tipo de objeto  
**ou**: Nombre del objeto 

Pero solo creando este archivo no sirve, habrá que añadir esta información a la base de datos de **OpenLDAP**. 
Usaremos el comando:

```bash
ldapadd -x -D cn=admin,dc=astonmartin,dc=local -W -f estructura.ldif
```

![image](https://github.com/user-attachments/assets/792d7d6b-4341-4366-9e8c-a8e1e07abf12)

---

### Creación de los usuarios

Una vez creada la estructura de directorios, podemos pasar a crear los usuarios que formarán parte de OpenLDAP. 

Crearemos otro archivo **.ldif**

![image](https://github.com/user-attachments/assets/70736633-3f3d-48e9-80b1-36bd95a23dc6)

De cada usuario que creemos tenemos que decir

- La clase de objeto
- uid
- Nombre de pila
- Nombre común
- Apellido
- Contraseña
- Shell
- Directorio /home
- Organización
- Unidad Organizativa
- Email
- Código postal
- Iniciales
- Comentarios

![image](https://github.com/user-attachments/assets/b245200e-97bb-4a62-bd47-79361f0d03f8)

Y añadimos las 2 entradas que acabamos de crear a la base de datos de OpenLDAP con 
el mismo comando de antes.

![image](https://github.com/user-attachments/assets/9b613187-252d-4146-b8d8-b2e2599d54ae)

---

### Creación del grupo 

El procedimiento es el mismo que en los casos anteriores.

Creamos el archivo **.ldif**

![image](https://github.com/user-attachments/assets/4b6b34cc-1b24-4eef-a836-c0ad9403c72b)

Generamos una nueva entrada, definiendo la clase de objeto y los atributos correspondientes. 

![image](https://github.com/user-attachments/assets/f1f9e804-156e-4040-92de-7f74064511c0)

Añadimos la entrada a la base de datos de **OpenLDAP**.

![image](https://github.com/user-attachments/assets/b5af0f46-64e1-4f43-ba6d-d27227309f29)

---

### Busca diferentes campos del jefe 1

Para comprobar que todo lo que estamos haciendo funciona, vamos a usar el comando **ldapsearch** el cual nos permite buscar diferentes campos de una entrada en especifico.

```bash
ldapsearch -xLLLLLLL -b "dc=astonmartin.dc=local" uid=jefe1 sn uid cn gecos
```

![image](https://github.com/user-attachments/assets/77854490-4f08-4418-a377-c2cc71b589f9)

---

### Modificar elementos de un usuario

En caso de que queramos modificar la información de un objeto, tendríamos que usar el comando **ldapmodify**, pero como los parámetros de este comando son difíciles de poner, podemos crear un archivo .ldif donde ponemos los campos que vamos a cambiar y el objeto afectado.

![image](https://github.com/user-attachments/assets/31d23b8a-adcc-4170-9c3b-b13b9fdb1ec8)

Especificamos el usuario sobre el que aplicaremos los cambios, el tipo de cambios que vamos a hacer y los atributos a modificar, junto a su nuevo atributo.

![image](https://github.com/user-attachments/assets/7b6c3e8d-8774-415d-a586-c08a5e4f57b8)

Una vez lo tenemos, podemos ejecutar el comando **ldapsearch** con las mismas opciones que con el comadno **ldapadd**.

![image](https://github.com/user-attachments/assets/ca7eca15-73c0-481b-b221-01b60be16ee2)

Con ldapsearch volvemos a sacar los campos de antes y vemos que efectivamente han cambiado.

![image](https://github.com/user-attachments/assets/ca628f4a-c65d-4512-9c04-3da61e0d1597)

↓

![image](https://github.com/user-attachments/assets/c0226791-9a32-44bc-9f64-35838f28be2e)

---

## Configurar el cliente y acceder con los usuarios de LDAP

### Instalación de los paquetes necesarios y configuración  

Entramos con el cliente, abrimos un terminal e instalamos los paquetes necesarios para el funcionamiento de NSS y PAM con el siguiente comando: 

![image](https://github.com/user-attachments/assets/4b48750a-99a1-4127-a803-c22fe7ff920e)

A la hora de instalar estos paquetes, saldrán unas pantallas para poder configurar **ldap-auth-config**. 
Lo primero será la URI del servidor LDAP, que esta formada por el protocolo ldap y la IP del servidor 

![image](https://github.com/user-attachments/assets/c0065b3c-29af-43fa-ace9-ddd963005e4d)

Seguimos con el nombre distinguido del servidor. 

![image](https://github.com/user-attachments/assets/93b53940-aaae-4d36-8540-9938a2eba1e4)

Especificamos la versión de LDAP a usar.

![image](https://github.com/user-attachments/assets/7ea81c6b-97b4-4f54-b7f6-c42631c8fc99)

---

### Instalación de los paquetes necesarios y configuración  

Proseguimos indicando si las utilidades que utilicen PAM deberán comportarse del mismo modo que cuando cambiamos contraseñas locales haciendo que las contraseñas se guarden en un archivo independiente que sólo podrá ser leído por el superusuario.

![image](https://github.com/user-attachments/assets/d261c2d3-5896-44b0-af59-65bc6d28c411)

Ahora especificamos que NO es necesario identificarse para realizar consultas en la base de datos de LDAP. 

![image](https://github.com/user-attachments/assets/b8c729f0-df33-4895-af55-017dccba67dc)

Y para ir acabando, indicamos el nombre de la cuenta de LDAP que tendrá permisos para hacer cambios en las contraseñas.

![image](https://github.com/user-attachments/assets/522cbd90-1156-431a-867c-8622fc05ef88)

Junto con su contraseña

![image](https://github.com/user-attachments/assets/18a9eb24-610e-4a36-9146-ed02815cfe41)

---

### Configuración de archivos para el correcto funcionamiento de LDAP

Para que LDAP funcione de forma correcta en el cliente, tenemos que cambiar algunos archivos. 
En el archivo **/etc/nsswitch.conf** tenemos que añadir ldap en las siguientes líneas: 

![image](https://github.com/user-attachments/assets/da91ed26-5395-4f24-a920-2b6d6723179e)

En este archivo se incluyen las fuentes desde las que se obtiene la información del servicio de nombres en diferentes categorías y en qué orden.

El siguiente archivo a modificar es **/etc/pam.d /common-password**, el cual proporciona un conjunto común de reglas PAM para la comprobación de contraseñas. 
Tendremos que quitar en la línea 26 la opción use_authtok, la cual impide usar 2 métodos de autentificación. 
También sería recomendable quitarlo de todas las líneas del archivo. 

![image](https://github.com/user-attachments/assets/c5588d69-69a9-4ae3-a17d-29237282d7b5)

↓

![image](https://github.com/user-attachments/assets/ddccfd79-4253-46c8-a7c5-82890ef13fa8)

Seguimos, ahora le toca al archivo **/etc/pam.d/common-session** 
Tendremos que añadir la siguiente línea al final del fichero. 
Esta línea nos permite indicar que se debe crear un directorio home durante el primer inicio de sesión, también para los usuarios autenticados mediante LDAP.

![image](https://github.com/user-attachments/assets/39ff7825-0c23-4cad-9826-832d26e68424)

---

### Inicia sesión desde la interfaz de texto

Reiniciamos el cliente para que se guarden los cambios y presionamos la combinación de teclas **Ctrl+Alt+F5** se nos abrirá el inicio de sesión en modo texto y podremos iniciar sesión con el usuario **jefe1**. 

Podemos ver que se crea el directorio personal del usuario, tal y como pusimos anteriormente

![image](https://github.com/user-attachments/assets/3b16054c-b36e-450a-bc44-4cfca2063fe5)

---

### Iniciar sesión desde la interfaz gráfica.

En un principio, no podemos iniciar sesión desde la interfaz gráfica al igual que desde el modo texto. 
Así que tenemos que instalar el servicio **nslcd**, el cual hace una configuración similar a **sssd**. 
Al instalarlo, salen unas pantallas de configuración, en las cuales no tenemos que tocar nada, debido a que ya sale la configuración correcta, así que las pasamos sin más. 

![image](https://github.com/user-attachments/assets/75736bf1-a39b-4a97-9fe6-9206c28673c9)

↓

![image](https://github.com/user-attachments/assets/9a15de1d-ce57-4ff3-a929-49df68ec8765)

Una vez instalado, reiniciamos para que se instale correctamente, e iniciamos sesión con el usuario **jefe2**.

![image](https://github.com/user-attachments/assets/96c0f7f0-e334-4a6f-94dc-f7be16fdca32)

↓

![image](https://github.com/user-attachments/assets/367e27b9-b5df-4177-9463-7d758aaadb16)

↓

![image](https://github.com/user-attachments/assets/1eaae46f-15d5-487f-8f24-0fb4f57dc94d)


































