## WWW 

La world wide web consistía en sitios web estáticos que solo permitían la visualización de información, sin poder interactuar con ellas.
Solo había comunicación unidireccional - servidor->cliente

Tampoco había mecanismos de autenticación

### HTTP

Hay diferentes protocolos que permiten la comunicación entre equipos por la arquitectura de las mismas:
- Cliente/servidor
- P2P
- Distribuido

**HTTP** esta basado en un modelo petición / respuesta donde el cliente envía una solicitud y el servidor responde  antes de cerrar la conexión.
HTTP usa métodos con significado semántico
- GET
	- Se solicita un recurso
- PUT
	- Se solicita la modificación de un recurso existente
- DELETE
	- Se borra un elemento 
- POST
	- Se crea un recurso

**Características**
- Definición de cabeceras personalizadas de peticiones y respuestas
	- 200 - Conexión correcta
	- 300
	- 400 - Fallo en la conexión
	- 500 - Fallo en la conexión d
- Las comunicaciones son sin estado, ósea que no mantiene ninguna referencia a comunicaciones anteriores

#### Mensajes  HTTP

1º Línea
- Método (GET , POST)
- Versión de HTTP

En las líneas siguientes las cabeceras
Y por último, el cuerpo del mensaje, el cual se manda en base64

##### Mensajes de respuesta HTTP

- 1º Linea
	- Versión de HTTP
	- Código de respuesta
	- Texto del código de respuesta
- Cabeceras
- Línea en blanco
- Cuerpo de la respuesta


#### Versiones HTTP

1.0
- Cada recurso solicitado debía de abrir y cerrar una conexión
- Muy lento

1.1
- Conexiones persistentes
- Mejorando el uso de la cache

2.0
- Cambia el formato de texto a binario
- Permite multiplexación

3.0
- Se cambia de TCP a UDP
- Se añade QUIC para dar más seguridad

### Tecnologias WEB

- HTML - Esqueleto
- CSS - Piel
- JavaScript - Cerebro

#### HTML

Usa etiquetas con significado que le servidor envía e cliente y este las muestra en pantalla
Puede ser explotado de diferentes formas:

##### Ataques

**XSS - Cross-Site Scripting**
Vulnerabilidad cuando se inyecta codigo malicioso dentro del código HTML.

Tipos
- XSS Reflejado
- Almacenado
- en el DOM

**Clickjacking**

Se superpone un iframe sobre un elemento legítimo para engañar la usuario (la x en los anuncios)

**Inyección de atributos maliciosos**

Algunos atributos de HTML pueden ejecutar código de manera inesperada 


#### CSS

Lenguaje que permite manejar el diseño de las páginas HTML de una forma eficiente.

##### Ataques

**CSS injection**
Ocurren cuando una app web permite a los usuarios ingresar / modificar estilos CSS sin validarlos.
Si no se validan, un atacante podrían ejecutar x código malicioso a través de CSS.

Lo más habitual es que los atacantes te reenvían a una página maliciosa

**Data Exfiltration**
Un atacante puede espiar que sitios ha visitado el usuario o filtrar informacion basada en estilos aplicados


**Clickjacking CSS**
Similar al de HTML, pero esta vez se usna las propiedades **opacity:0** o **visibility:hidden** para hacer invisible un iframe

Este es diferente al de HTML

#### Javascript

Lenguaje de programación  usado para realziar tareas dinamicas en sitios web
- Calculos
- Operaciones
- Adiciones de imagenes

Es uno de los lenguajes más populares .

Para prevenir riesgos hay que validar y sanear los datos de entrada y salida
Cuanto más seguro queramos que sea un sistema, se suele deshabilitar javascript aunque puede afectar a la funcionalidad de los sitios web.
Tor desactiva javascript


##### Ataques

**XSS**
Se inyecta código malicioso en una página web para que esta la ejecute 

Pasos
- El sitio web acepta los datos proporcionados por el usuario
- Estos datos se insertan en la página sin ser sanitizados, por lo que se ejecuta el código malicioso


**CSRF**

Ataque en el que un usuario autenticado es engañado para realizar una accion no deseada en la app web

**Robo de Cookies y almacenamiento total**

Javascript puede acceder a las cookies del usario con **document.cookie** lo cual puede ser explotado con XSS para robar datos de sesión.
Además los atacantes puedne obtener información almacenada en localstorage o session storage que muchas apps usan para guardar tokens de autenticación.


**Uso inseguro de eval()**

Permite ejecutar código javascript a partir de una cadena de texto
Si se usa con datos no controlados puede llevar a una inyección de código y  permitir que el atacante ejecute comandos en el navegador.


**Keylogging**

Se registran las pulsaciones del teclado de un usuario.

### Desarrollo seguro de aplicaciones web 

A la hora de desarrollar una app web es necesario garantizar e integrar unos niveles mínimos de seguridad, los cuales dependen del tipo de aplicación y su sector.

Esta integración se fundamente en 2 elementos:

**Casos de prueba**
- Se definen, implementan, prueban y documentan las pruebas realizaras a la app web.
- Según las pruebas superadas, se determinará/medirá lo segura/insegura que es una app web
**Conocimiento técnico de las app web**
- Se deberá de tener algo de conocimiento sobre el funcionamiento de las tecnologías, ataques y vulnerabilidades.


Dentro de los conocimientos, tenemos:
- HTTP
- HTML CSS
- Lenguajes de cliente
	- JavaScript
- Programación asíncrona
- Lenguajes de servidor
	- PHP, PYTHON, JavaScript, node.js
- SQL
- Configuración avanzada de servidores web
- Herramientas informáticas
	- Curl
	- Postman

Dentro del mercado laboral se encuentran varios perfiles:

**Desarrollador Back-End**
- Arquitectura y código del servidor
**Desarrollador Front-End**
- Desarrollo de la parte gráfica en el cliente
**Administrador de BD**
- Gestiona el almacenamiento de los datos de la app
**Administrador de sistemas**
- Se encarga de la configuración de la infraestructura necesaria para la ejecución del back-end
**Testeador**
- Desarrolla
- Implementa
- Prueba los casos de prueba del software



### Entrada basada en formularios, Inyección, Validación de la entrada

Los formularios de las páginas web contiene una serie de etiquetas HTTP las cuales permiten introducir datos.

Estos formularios son puntos de entrada para ataques del OWASP TOP TEN.
E necesario un tratamiento de los datos que se obtienen de los formularios para que al recibir datos maliciosos, no afecten al servidor y no se exponga información sensible o se realicen acciones no autorizadas.


### Estándares de autenticación y autorización

#### Elementos de un sistema de autorización y autenticación básico

En un principio HTTP no tenía implementado un sistema de autenticación y autorización nativo, hasta que aparecieron las **cookies**.

##### Explicación del concepto y uso de Cookies

Gracias a las cookies se puede obtener información del servidor asociada a un unico usuario yu limitar el acceso con CGI, PHP etc.


**Limitaciones**
- Robo de la galleta que identifica la sesión
- Codificación de la galleta
- Identificación ante terceros
- Sistema de gestión de permisos no estandarizado
- Uso exclusivo en apps web.


Aún con estas limitantes, las cookies se siguen usando y gestionan la autenticación y autorización de muchos entornos de trabajo.
Esta gestión se puede desarrollar de 0 o con frameworks

Los elementos se esquematizan en:
- Punto de entrada
	- Permite entrar en el sistema presentando las credenciales del usuario
- Punto de comprobación de autenticación y autorización previo al acceso al recurso
	- Al solicitar un recurso, se envía una cookie que permite al servidor acceder a la sesión creada para el usuario y después se comprueba si el usuario autenticado tiene la autorización para acceder a x recurso.

#### Estándares

**Certificados digitales**
El servidor es quien presenta su certificado al cliente, el cual lo comprueba, verificando que este emitido por una entidad certificadora reconocida.

**Tokens**
El estandar más extendido es el JWT el cual se basa en los algoritmos
- RS256
- ES51
- HMACSHA256 - El más usado
	- Hashea 2 veces

Un token JWT, independientemente de su algorimto de cifrado, se compone de:
- Cabecera
	- Indica el algorimo de la firma
- Payload
	- Almacena la información que se va a transmitir
	- Registros recomendados
	- Elementos públicos
	- Elementos privados
- Firma
	- Garantiza la identidad del emisor.

La validación con tokens se basa en que la información de la sesión pasa del servidor al cliente y en cada petición se envía el Token.
La información se encuentra encriptada y solo el servidor puede descodificar la información almacenada en ese token.

**OATH**

Parecido al token, pero esta vez se incluyen más agenten en la conexión cli-serv:
- Propietario del recurso
	- Entidad que otorga el acceso a un recurso protegido
- Cliente
	- Es la Aplicación que solicita el acceso a un recurso
- Servidor de recursos
	- Servidor en el que se encuentra el recurso al que el cliente quiere acceder
- Servidor de autorización
	- Elemento que autentica al propietario del recurso, solicitando el permiso de este.
	- En caso de ser afirmativo, emite un token para el cliente

OATH admite diferentes tipos y formatos de token
- Revocación
- Renovación
- Acceso


**Openld Connect**

Protocolo de autenticación con base **OAuth 2.0**:
- Se usa en app web y móviles parea la autenticación basada en tokens SAML.
- Basada en xml
- Común en entornos empresariales

Permite la autenticación federada de forma que es posible obtener información del usuario de un proveedor externo conocido (Amazon, Facebook, Google).

Los mensajes se definen en JSON ofreciendo una API Rest que permite analizar dichos mensajes.



### Contramedidas

#### HSTS - HTTP Strict Transport Security

HSTS establece que todas las comunicaciones han de realizarse desde HTTPS 

**Ventajas**
- Comunicaciones HTTPS
- Cualquier fallo en la comunicación provoca que la misma se aborte
- Proporciona protección contra MiTM

#### CSP

Estándar de seguridad informática para mitigar ataques de inyección


#### CAPTCHA

Pruebas que determinan cuando el usuario es un humano o es un Bot.

##### Mitiga
- Ataque de enumeración
- Envía automático de peticiones GET/POST
- Creación o uso de cuentas para SPAM
- Generación de publicaciones automáticas en blogs, foros etc
- Registros masivos en eventos gratuitos o compra indiscriminada de artículos 
- falsificación de consultas, votaciones o encuentas electrónicas

##### Tipos
- CAPTCHA basado en texto
	- Gimpy
	- EZX-Gimpy
	- Gimpy-r
	- Simard-s HIP

- CAPTCHA basado en imágenes
- Audio
- Matemáticos
- Lúdico
- GOOGLE recaptcha
- recaptcha invisible
