<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Instalación / Activación](#instalación--activación)
- [Configurar el navegador](#configurar-el-navegador)
- [Ataques](#ataques)
  - [Sniper Attack](#sniper-attack)
  - [Cluster bomb](#cluster-bomb)
- [Otras herramientas](#otras-herramientas)
  - [Target](#target)
  - [XSS](#xss)
  - [Collaborator](#collaborator)
  - [Sequencer](#sequencer)
  - [Decoder](#decoder)
  - [Comparer](#comparer)
  - [Logger](#logger)
  - [Organizer](#organizer)

</details>


## Introducción

En está practica se va a usar la herramienta Burpsuite en su versión Pro. Se usará para interceptar conexiones y ver la información que transportan. 
Según esta descripción se podría decir que es un Wireshark 2.0, pero Burpsuite nos permite realizar ataques sobre las conexiones mientras que con Wireshark solo obtenemos información. 
Además de que para usarlo hay que configurar el proxy del navegador para que use el de Burpsuite, pero eso ya lo veremos más delante.

---

### Instalación / Activación

Burpsuite ya viene instalado en nuestro equipo Kali Linux, pero la versión que vamos a usar es la versión PRO, la cual cuesta como 450$ y como no tenemos ese dinero, pues vamos a hacer una “activación ilícita” siguiendo el siguiente tutorial:

https://github.com/xiv3r/Burpsuite-Professional

---

### Configurar el navegador

Como ya dije, **para usar Burpsuite hay que configurar nuestro navegador** para que use el proxy de Burpsuite.
Para saber cuál es, en Burpsuite vamos a **Settings>Proxy>Proxy listeners**.

![[2.4.png]]

Vamos al navegador **Mozilla Firefox** y dentro de este hay 2 formas de configurarlo:

**Desde la configuración del navegador:**

![[2.5.png]]

O con la extensión **FoxyProxy** la cual nos permite cambiar del proxy de una forma bastante sencilla:

![[2.6.png]]

Al final uso esta última opción. Instalo la extensión y para añadir el proxy voy a **Options>Proxies** y añado el proxy de burpsuit.

![[2.9.png]]

↓

![[2.10.png]]

Ahora cualquier conexión que hagamos a un sitio web, estará “capada”.

![[2.11.png]]

Bueno, en verdad no es que nos lo bloquee, si no que el sitio web nos dice que no reconoce el certificado de burpsuite, por lo que la conexión no es segura y el sitio web está configurado para funcionar con **HTTPS (HSTS).**


La solución es muy sencilla puesto que tan solo tenemos que instalar el certificado de burpsuite en el navegador:

https://burp/

![[3.1.png]]

↓

![[3.2.png]]

Ahora si vuelvo a acceder a cualquier página, no me saldrá el mensaje anterior y podré acceder con **https**.

![[3.4.png]]

---

### Ataques

#### Sniper Attack

Para realizar ataques con **burpsuite** hay que iniciar la interceptación y navegar por internet.

![[4.1.png]]

En este caso, vamos a capturar credenciales en la página de **educa.jcyl.es**

Accedemos a la página de login de educa.jcyl.es y metemos credenciales falsas y las mandamos. Burpsuite habrá capturado ese paquete donde se pueden ver la contraseña y el usuario:

![[4.2.png]]

↓

![[4.3.png]]

Para hacer el ataque hacemos **clic derecho sobre el paquete>Send to Intruder**

![[4.5.png]]

Esto manda el paquete al **Intruder** la cual es una herramienta usada para realizar ataques automatizados en aplicaciones web. Su función principal es la de mandar solicitudes modificadas a la aplicación web.

En el intruder nos sale el paquete y en color verde la información que podemos cambiar, que en este caso son las credenciales de inicio de sesión. 
Esto es lo que se ve en el intruder y el primer ataque que haré será el **Sniper Attack**.

![[4.7.png]]

Tomamos el campo de la contraseña como objetivo y le pasamos una serie de contraseñas para que las compare.

![[4.10.png]]

El resultado del ataque es el siguiente:

![[4.11.png]]


Si alguna contraseña fuera real, el valor Lenght se diferenciaría del resto. 
Por ejemplo si ahora hago lo mismo, pero con mi cuenta real y le paso mi contraseña real, el campo cambia de longitud:

![[4.12.png]]

También se puede hacer este ataque pero añadiendo también la dirección de correo y no solo con la contraseña – las contraseñas y correos que se intentan se cargan desde un archivo.

![[4.14.1.png]]

↓

![[4.15.png]]


#### Cluster Bomb

El siguiente ataque que voy a hacer es un **Cluster Bomb**. 

Este ataque prueba todas las contraseñas con todos los correos, antes no, antes solo se probaba la primera contraseña con el primer correo, el segundo con el segundo y así hasta acabar. 

Este tipo de ataque aunque es más lento, genera mucho menos tráfico y se suele hacer cuando se filtran credenciales de cuentas.

![[4.16.png]]

Como se genera mucho tráfico, tan solo voy a probar 2 correos con 2 contraseñas:

![[4.17.png]]

---

### Otras herramientas
#### Target

Otra cosa que se puede hacer es en **Target>URL View** se pueden ver todas las páginas que hemos visto o todas las búsquedas que se han realizado en el navegador.

![[9.1.png]]

Podemos coger uno de los iconos de la izquierda y ver el **Site Map Documentation**

![[9.2 scope.png]]

Al mandarlo a esta opción se intentará ver documentación sobre le mapa del sitio web.

![[9.3.png]]

Si con esto vamos a **Intruder** se puede hacer un **Sniper Attack** de 2 formas:

**Simple List**
- Se pasan valores directamente
**Runtime file**
- Se pasa un archivo con pocas opciones a probar

![[9.4.png]]

Pasaremos el valor 17 para que lo pruebe.

![[9.5.png]]

Y vemos como se ha ejecutado.

![[9.6.png]]

Este “ataque” no ha servido para nada, simplemente para ver estas 2 opciones.

#### XSS

Ahora se va a hacer un ataque XSS Este ataque consiste en la inyección y ejecución de código java en la propia web.

Modifico la url:

![[9.9.1.png]]

Y mando el paquete:

![[9.7.png]]

La página devuelve el siguiente resultado, indicando que si es vulnerable a XSS:

![[9.8.png]]

Al igual que burpsuite puede capturar el envio de una petición **– Request –** también puede capturar la respuesta de uno **– Response –.** 
Y desde la opción **Repeater** se pueden modificar parámetros (se usa mucho en XSS).

![[9.9.png]]

#### Collaborator

También nos encontramos con **Collaborator** que es una opción muy usada en el robo de cookies. 

Esta herramienta también es utilizada para detectar vulnerabilidades en aplicaciones web que requieren interacción con servicios externos.

![[9.10 colaorator - sirve para hacer ataques de robo de cookies.png]]

Se pueden hacer ataques de **Hijacking (hacerse pasar por un usuario)** con el robo de cookies.

#### Sequencer

Otra opción relacionada con las cookies es Sequencer que nos permite medir la aleatoriedad de una cookie y poder anticiparnos a la creación de una.

![[9.11.png]]

No es muy utilizado.

#### Decoder

Es utilizado principalmente para decodificar/codificar contenido:

![[9.12.png]]

↓

![[9.12 1.png]]

#### Comparer

Otra herramienta es el **Comparer** usada para (como dice su nombre) comparar contenidos. 
Para ver su funcionamiento antes, vamos a hacer otra cosa. 
Como podemos capturar envíos y repuestas, vamos a hacer 2 envíos al mismo sitio, pero un envió será con GET y otro con POST.

Para poder hacer esto, mando primero un mensaje al **Comparer**


![[9.16.png]]


Mientras que el otro lo mando al Repeater para poder cambiar le método de envío.

![[9.17.1.png]]

↓

![[9.18.png]]

Ahora la respuesta que me ha dado la página es diferente a la que me hizo con **GET**.

![[9.19.png]]

↓

![[9.17.png]]

Lo mando al **Comparer** y los comparo:

![[9.20.png]]

↓

![[9.21.png]]

#### Logger

Otros apartados menos importantes son Logger el cual lleva un registro de las páginas y las solicitudes:

![[9.22.png]]

#### Organizer

Y el **Organizer** que nos permite organizar paquetes.

![[9.24.png]]

