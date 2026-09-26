## Preparación el DNS del equipo Ubuntu para que pueda albergar un servidor de correo en el dominio sri-XX.net.

Antes de instalar nada, vamos a preparar nuestro servidor DNS. 
Vamos a **/etc/bind/db.sri-03.net** y añadimos los siguientes registros:

<img width="377" height="37" alt="image" src="https://github.com/user-attachments/assets/32d52760-5a27-46a2-8a99-a5db3e7343a5" />

Comprobamos con 

```bash
nslookup –q=mx ip del servidor|nombre del servidor 
```

<img width="497" height="97" alt="image" src="https://github.com/user-attachments/assets/d768daed-1505-4c46-bbed-00d3491f4185" />

Perfecto, vemos que todo funciona, así que ya podemos pasar a la acción.

---

## Instalar postfix y elegir la opción de “Sitios de Internet”. Comprobar el fichero de configuración. 

Ya estamos preparados para instalar postfix, así que hacemos un:

```bash
apt install postfix.
```

<img width="486" height="25" alt="image" src="https://github.com/user-attachments/assets/be7ffa32-e4a8-4a0c-97a9-16c5e1366676" />

Nos saldrá la siguiente pantalla, en al cual, elegimos la opción **Sitio de Internet**. 
Proseguimos y ponemos el nombre del servidor de correo:

<img width="415" height="298" alt="image" src="https://github.com/user-attachments/assets/71d19285-143b-4abd-93af-6a9e8d96a2a6" />

Una vez instalado, deberemos de comprobar su existencia en el equipo. 

<img width="568" height="93" alt="image" src="https://github.com/user-attachments/assets/ede6a74d-e7ec-4121-b1f3-e9f4e231dc39" />


Hacemos un **ls** sobre **/etc/postfix** viendo que están todos los archivos.

<img width="831" height="55" alt="image" src="https://github.com/user-attachments/assets/785a4d91-5956-4fd8-b5ae-2bc939e26ca2" />

Antes de pasar a hacer otra cosa, tenemos que realizar un par de configuraciones en el archivo del servidor de correo: **/etc/postfix/mail.cf** 
En el parámetro **myhostname** tenemos que poner el nombre del servidor de correo: 
Y en el parámetro **mydestination** pondremos el mismo valor. 

<img width="364" height="37" alt="image" src="https://github.com/user-attachments/assets/264e8647-d87d-422c-abeb-8fce9a042967" />

↓

<img width="821" height="25" alt="image" src="https://github.com/user-attachments/assets/b82f47de-a85e-4764-89fe-3876d45c6f12" />

Para que estos cambios se guarden, reiniciaremos el servicio.

<img width="523" height="19" alt="image" src="https://github.com/user-attachments/assets/609cd473-0ce3-47a3-8b9d-05ab83f0de1c" />

---

## Comprobar que el servidor postfix está arrancado:

Otras comprobaciones que podemos hacer son hacer un 

```bash
ps –ef | grep postfix
````

para ver si el servicio está arrancado o no. 

<img width="735" height="89" alt="image" src="https://github.com/user-attachments/assets/391b2963-6d36-4a18-9170-b5c0777905f3" />

---

## Comprobar que el servidor está escuchando en el puerto SMTP

```bash
netstat –ltn
```

<img width="750" height="325" alt="image" src="https://github.com/user-attachments/assets/5a14f6df-12c8-4bd9-ac50-509ee7686002" />

---

## Se deberán disponer de varios usuarios en el sistema (por ej. user1 user2 y user3)

Al instalarse **postfix**, se crea el usuario **postfix**:

<img width="739" height="32" alt="image" src="https://github.com/user-attachments/assets/0d66adf1-ac11-4559-b532-316d9bd9350a" />

Aunque no le vamos a usar, así que vamos a crear 3 usuarios:

<img width="472" height="301" alt="image" src="https://github.com/user-attachments/assets/4c65bf71-aff4-4928-b07b-76615dd4aaad" />

---

## Comprobación-1: envío de correo SMTP usando telnet a un usuario local y a tu correo personal. 

Una vez creados los usuarios, vamos a pasar a pasar a comprobar el funcionamiento de nuestro servidor de correo. 
Al igual que en Windows, haremos un 

```bash
telnet ip del equipo 25
```

<img width="395" height="254" alt="image" src="https://github.com/user-attachments/assets/73b53fcc-a7d9-42dc-801a-5ce5a597d31d" />

Y mandaremos un correo a, por ejemplo, el usuario operador desde el usuario **user1**.

<img width="322" height="214" alt="image" src="https://github.com/user-attachments/assets/f0c76c06-9f2d-44c0-b93b-7322fd25737f" />

Si vemos el buzón del usuario **operador** (se puede ver poniendo **mail**) observaremos que nos ha llegado un correo. 

<img width="518" height="75" alt="image" src="https://github.com/user-attachments/assets/0531678b-8af4-4ff4-8cd8-fac4cb1f6f1f" />

---

## Comprobación-2: con el programa mail realizando pruebas de envío de correo locales

Ahora, vamos a probar con el programa **mail** (el que hemos usado para ver el buzón? Pues ese). 
Para instalarlo, hacemos un 

```bash
sudo apt install mailutils. 
```

<img width="492" height="26" alt="image" src="https://github.com/user-attachments/assets/f83edbe9-29f9-4218-9319-36909721173c" />

Una vez instalado, procedemos con el envío del correo. 

<img width="325" height="133" alt="image" src="https://github.com/user-attachments/assets/0918ba8f-c907-4f67-b7ab-c3b8166d011f" />

Si ahora comprobamos el buzón del usuario **user2** veremos que este ha recibido el correo que acabamos de enviar con el usuario **user1**.

<img width="497" height="125" alt="image" src="https://github.com/user-attachments/assets/46712408-7b81-4c1b-b4a1-97b2ffb37587" />

Y en **/var/mail/user1** podemos ver todos los correos del usuario **user1**. 

<img width="511" height="301" alt="image" src="https://github.com/user-attachments/assets/8328a074-a0c9-4cca-b2cf-2c80b0925efc" />

Además de ver los correos de usu1, también podemos ver todo lo que pasa en el servidor, desde el archivo **/var/log/mail.log**.

<img width="549" height="318" alt="image" src="https://github.com/user-attachments/assets/0f9e27a4-299d-4e14-9d93-6cdcf0d796f3" />

Para terminar con este punto, pasaremos a mandar otro correo a **user2** pero esta vez desde operador. 

<img width="323" height="116" alt="image" src="https://github.com/user-attachments/assets/72b7955e-6e64-4919-9cd2-1f5bf89a0c1c" />

Y volveremos a revisar el buzón de **user2**.

<img width="526" height="105" alt="image" src="https://github.com/user-attachments/assets/bf3255fe-6565-4d30-821d-8d4d02e093db" />

---

## Comprobación-3: Configurar un programa cliente de correo en un equipo XP para que envíe correos. Verifica si deja enviar correos

En esta pregunta vamos a configurar **ThunderBird** para que pueda trabajar con nuestro servidor de correo. 
Crearemos una nueva cuenta. 

<img width="555" height="341" alt="image" src="https://github.com/user-attachments/assets/12d5c2c3-4750-4d32-9bf2-0c3507024b2b" />

Pero nos dará un error, así que vamos a **Configuración avanzada>Aceptar**. 

<img width="156" height="33" alt="image" src="https://github.com/user-attachments/assets/94196444-3230-4969-a4e7-ad9263a8807c" />

↓

<img width="703" height="165" alt="image" src="https://github.com/user-attachments/assets/219b5634-3b06-4600-909d-4518a7ed3ddd" />

Una vez la cuenta creada, vamos a mandar un correo al usuario **user1**.

<img width="502" height="283" alt="image" src="https://github.com/user-attachments/assets/5a9873ec-6f8c-4d5a-91d0-920997cc49b4" />

Pero esto es Thunderbird y aquí, nada funciona a la primera, así que nos dará un error.

<img width="693" height="175" alt="image" src="https://github.com/user-attachments/assets/8912d030-1639-4149-9389-7cec42394f3e" />

Aunque si que nos debería de dejar mandar correos, más no recibirlos, debido a que tenemos ni servidor **imap** ni servidor **pop3**. 
Hay otros clientes de correo como **smtp** o **Opera Mail** que si lo permiten.

---

## Envíate dos correos desde dos usuarios locales a tu cuenta de correo en internet

Para poder hacer que esto funcione, deberíamos de poner en el parámetro **mynetworks** la red por la que va n a salir los correos.

<img width="623" height="24" alt="image" src="https://github.com/user-attachments/assets/38259a0e-9ebe-497a-990a-b24675ec14b4" />

Pero a mí, no ha funcionado. 
Pero vamos a ver el proceso. 
Con el usuario **operador** lo probamos

<img width="377" height="77" alt="image" src="https://github.com/user-attachments/assets/5aeddac5-11e4-47aa-858f-254a9e7d471f" />

Y lo probamos con **user1**. 

<img width="457" height="71" alt="image" src="https://github.com/user-attachments/assets/93764459-544f-4987-aefe-830dfabf2d38" />

Pero a mí, no me llegan los mensajes, ni a **spam** llega. 

<img width="779" height="109" alt="image" src="https://github.com/user-attachments/assets/72be19f7-6ae6-40fb-9242-525cd98e731d" />

---

## ¿Qué tipo de buzón está usando por defecto postfix?. Qué características tiene. Visualízalo 

El buzón que esta usando **postfix** es **mbox**. 
Donde todos los mensajes están en un único fichero por usuario, se encolan según llegan y se guardan en el directorio /var/mail con el nombre de usuario local. 
Para poder verlo, vamos a **/home/%username%** y dentro de este directorio hay un archivo llamado **mbox**, el cual visualizaremos

<img width="680" height="345" alt="image" src="https://github.com/user-attachments/assets/a98281b6-f7b3-48b0-bcb6-e22b23986eec" />

---

## Utiliza un MUA como Thunderbird u otro que deberás instalar si no lo tienes y configura el correo para la cuenta user1.

En otro equipo, vamos a instalar **Opera Mail**, el cual es un cliente de correo en el cual si me han funcionado las cosas. 
Lo instalamos, creamos la cuenta del usuario **user1** y nos disponemos a mandar un correo. 

<img width="683" height="186" alt="image" src="https://github.com/user-attachments/assets/ba161d0f-bab2-4e09-941e-94a1d9b34fb6" />

Mandamos el correo y vemos que el usuario **user2** lo ha recibido correctamente.

<img width="526" height="135" alt="image" src="https://github.com/user-attachments/assets/b9d85cd3-35cf-4882-b998-9dba84c5ec75" />

Ahora, vamos a probar a mandarnos uno a nosotros mismos. 
Pero no funciona, debido a que este cliente de correo, no esta configurado para recibir correos.

<img width="514" height="220" alt="image" src="https://github.com/user-attachments/assets/57701ce9-a510-4d83-9c11-29ecc80152da" />

No hemos recibido el correo.

<img width="677" height="172" alt="image" src="https://github.com/user-attachments/assets/9bf4996e-6639-40f7-88ae-e53dedc30da0" />

Y si intentamos mandarlo a una cuenta de **Gmail**, tampoco nos dejará, supongo que será por alguna configuración de mi cuenta de Gmail, que no permite el recibir correos de este tipo.

<img width="662" height="244" alt="image" src="https://github.com/user-attachments/assets/88a457e0-7f48-4d63-b7a6-d3c319ba4ca3" />

Pero ¿Por qué podemos mandar correos, mas no recibirlos? 
Esto de debe a que nuestro servidor de correo está configurado con **SMTP**, que es el protocolo encargado de enviar los correos, pero no esta configurado con **pop3** ni con **imap**. 













