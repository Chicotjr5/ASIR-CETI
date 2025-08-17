## HMailServer con SSL

En esta práctica, yo voy a configurar **HMailServer** para que trabaje con **SSL**. 
Primero tendremos que crear 1 clave privada y un certificado para poder usar **SSL**. 
Instalaremos OpenSSL en el equipo y generaremos las claves 

<img width="594" height="339" alt="image" src="https://github.com/user-attachments/assets/861287e4-81e9-4683-bb9c-c136411f63d0" />

↓

<img width="131" height="115" alt="image" src="https://github.com/user-attachments/assets/891ae8ba-b06e-432b-a612-b65e2285cf80" />

Para poder usar estos archivos que acabamos de generar, vamos a **Advanced>SSL Certificates** y ponemos las rutas de los archivos. 

<img width="440" height="205" alt="image" src="https://github.com/user-attachments/assets/662429bf-2928-495c-88d7-4144113ca4fc" />

Además, de que marcaremos la opción **SSL V3.0** en **Advanced/SSL/TLS**. 

<img width="422" height="276" alt="image" src="https://github.com/user-attachments/assets/b0b0bcf2-41fd-4bbe-9df8-0706574f9dd2" />

Otra modificación que deberemos hacer, es cambiar el nº de puerto de los diferentes protocolos que usa **hMailServer**. 
Usaremos la versión segura de esos puertos, además de que usarán **SSL/TLS** para conectarse. 

<img width="276" height="317" alt="image" src="https://github.com/user-attachments/assets/ede7f7a2-7baa-4b0f-b983-a2f8106a73c9" />

↓

<img width="201" height="96" alt="image" src="https://github.com/user-attachments/assets/44984764-a15d-48b6-bc58-d62d2dd887d7" />

↓

<img width="217" height="99" alt="image" src="https://github.com/user-attachments/assets/3cf680ec-5887-4305-a0f9-9027b2889489" />

Para comprobar que funciona la conexión a través de ese puerto, nos conectaremos en modo comando con un **telnet**.

<img width="579" height="31" alt="image" src="https://github.com/user-attachments/assets/5670528c-11a0-4e4a-bb6d-66759ec5f6a7" />

Vemos que podemos mandar un correo.

<img width="355" height="236" alt="image" src="https://github.com/user-attachments/assets/59d123d7-9ff4-42a2-ac32-8e2160aabd4a" />

Otra cosa que podemos hacer es configurar los clientes de correo para que trabajen con **SSL/TLS**. 
Para ello, nos vamos a **ThunderBird>Configuración del servidor** y allí, cambiamos el puerto de comunicación (depende de si es **IMAP** o **POP3**) además de usar **SSL/TLS** como método de seguridad.

<img width="473" height="448" alt="image" src="https://github.com/user-attachments/assets/e71f0b1b-2207-4d7c-b4fc-e6f747f88c1a" />

Y para el servidor **SMTP** aplicaremos la siguiente configuración:

<img width="436" height="345" alt="image" src="https://github.com/user-attachments/assets/88f53e07-fc41-4cfa-9b9d-ed234c20aea2" />

---

## La empresa tiene el dominio sri-XX.net, pero también tiene adquiridos los dominios sri XX.org y sri-XX.edu. 

Ahora, vamos a pasar a realizar alguno de los puntos de la práctica **PR05-3**. 

El primero de todos, consiste en hacer que cuando enviemos un correo a una cuenta xx@sri-03.edu/xx@sri-03.org este también se envíe a xx@sri-03.net. 

Para conseguir esto, es muy sencillo, tan solo tenemos que  ir a **Domains>sri03.net>Names** y agregamos los nombres **sri-03.edu** y **sri-03.org**. 

<img width="410" height="144" alt="image" src="https://github.com/user-attachments/assets/9ccb062f-de9e-49f3-82e7-7cd9ddfaa958" />

Y lo probamos:

<img width="551" height="167" alt="image" src="https://github.com/user-attachments/assets/7aa2438d-1b34-4ad0-aa74-116e46db39d5" />

---

## Crear una cuenta otros@sri-XX.net y configurarla para que reciba los correos del dominio de cuentas inexistentes 

Lo siguiente que haremos, será crear una cuenta llamada otros@sri-03.net la cual pueda recibir correos del dominio, de cuentas inexistentes.

<img width="345" height="351" alt="image" src="https://github.com/user-attachments/assets/52833219-41f1-414e-8ef0-134d1588e8e3" />

↓

<img width="422" height="304" alt="image" src="https://github.com/user-attachments/assets/4e2b6a21-3c83-4c2e-b585-0415536532eb" />

En el dominio, configuramos esta cuenta para que reciba correos de las cuentas que no existan.

Ahora, lo probamos, mandando un correo a una cuenta que no existe:

<img width="600" height="199" alt="image" src="https://github.com/user-attachments/assets/540fde20-2ad7-492f-a858-8bda714ebb91" />

Y vemos que ha recibido el correo.

<img width="663" height="150" alt="image" src="https://github.com/user-attachments/assets/1aa5157e-8582-4543-b2d0-dee57d60cea8" />

---

## Crear una cuenta general@sri-XX.net

Muy fácil, vamos a **Domains>sri-03.net>Accounts** y creamos una nueva cuenta.

<img width="317" height="384" alt="image" src="https://github.com/user-attachments/assets/a6104e7d-6959-446a-9040-a1bd5d74e548" />

---

## Alias de correo

Ahora, sobre la cuenta que acabamos de crear, crearemos un **alias**. 
Muy sencillo, vamos a **Domains>sri-03.net>Aliases** y establecemos que los correos que se manden a **soporte@sri-03.net** se redirijan a la cuenta de **general@sri-03.net**.

<img width="368" height="169" alt="image" src="https://github.com/user-attachments/assets/fe014ce4-159c-4709-aec7-048be8f15024" />

---

## En la cuenta general traer tus correos de tu cuenta de yahoo (External Accounts). Reenvía todos los correos de esta cuenta a la cuenta de gmail (Forwarding)

Para poder hacer esto, vamos a la cuenta de general@sri-03.net>External **Account** y aplicamos la siguiente configuración. 

<img width="390" height="611" alt="image" src="https://github.com/user-attachments/assets/6beb4bce-c42f-4256-97df-38dafe5eb86a" />

Supuestamente, esto debería de descargar todos los correos de esa cuenta a la de general. Y esos mensajes, se reenviarían a la siguiente cuenta: 

<img width="375" height="184" alt="image" src="https://github.com/user-attachments/assets/a52da477-2aaf-4694-90ca-6183cbaf5ab3" />

---

## Establecer un texto de firma idéntico para los mensajes de todas las cuentas del dominio (signature) 

Esta configuración ya es más sencillita.

Tan solo, vamos a **Domains>sri-03.net>Signaturey** lo habilitamos, además de usar el siguiente texto:

<img width="453" height="444" alt="image" src="https://github.com/user-attachments/assets/a3b2482d-6f77-41d2-8b60-071f5ff40ab7" />

---

## Descargar el antivirus ClamWin y conectarle con el servidor de correo 

Para terminar, vamos a descargarnos el antivirus de **ClamWin** y hacer que se conecte con nuestro servidor.

<img width="99" height="115" alt="image" src="https://github.com/user-attachments/assets/9510e2b5-71de-4e82-841e-bf1b687589cf" />

Una vez descargado, vamos a **Settings>Anti-virus** y especificamos las rutas de nuestro antivirus.

<img width="580" height="280" alt="image" src="https://github.com/user-attachments/assets/76d4c28e-601d-4eb4-b515-95d30886639f" />














































