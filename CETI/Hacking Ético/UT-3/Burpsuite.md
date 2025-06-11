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

![2 4](https://github.com/user-attachments/assets/b06ed647-141e-4a6d-bb44-018368fe9a2c)


Vamos al navegador **Mozilla Firefox** y dentro de este hay 2 formas de configurarlo:

**Desde la configuración del navegador:**

![2 5](https://github.com/user-attachments/assets/5d2fcaed-3000-47cd-8fce-9b95ff81f3b4)


O con la extensión **FoxyProxy** la cual nos permite cambiar del proxy de una forma bastante sencilla:

![2 6](https://github.com/user-attachments/assets/5b79f8c1-fcf5-4e8a-a16a-9670deb2024c)


Al final uso esta última opción. Instalo la extensión y para añadir el proxy voy a **Options>Proxies** y añado el proxy de burpsuit.

![2 9](https://github.com/user-attachments/assets/90451740-c47e-4057-924b-9cd67325dbe7)


↓

![2 10](https://github.com/user-attachments/assets/42d5ee0f-3aad-4bc3-be48-6fe04d319750)


Ahora cualquier conexión que hagamos a un sitio web, estará “capada”.

![2 11](https://github.com/user-attachments/assets/8154bcbc-d64c-47e2-a17e-183b728e1126)


Bueno, en verdad no es que nos lo bloquee, si no que el sitio web nos dice que no reconoce el certificado de burpsuite, por lo que la conexión no es segura y el sitio web está configurado para funcionar con **HTTPS (HSTS).**


La solución es muy sencilla puesto que tan solo tenemos que instalar el certificado de burpsuite en el navegador:

https://burp/

![3 1](https://github.com/user-attachments/assets/791bdbaf-e9a8-4312-9338-00dbbe07fed7)


↓

![3 2](https://github.com/user-attachments/assets/dffd405e-dafa-47a4-b85a-ea73f1659da1)


Ahora si vuelvo a acceder a cualquier página, no me saldrá el mensaje anterior y podré acceder con **https**.

![3 4](https://github.com/user-attachments/assets/3fdb8b60-9a1e-4ea9-a81d-be73563b44fa)


---

### Ataques

#### Sniper Attack

Para realizar ataques con **burpsuite** hay que iniciar la interceptación y navegar por internet.

![4 1](https://github.com/user-attachments/assets/d887624d-b260-4ec9-bc6b-fbc9830d483d)


En este caso, vamos a capturar credenciales en la página de **educa.jcyl.es**

Accedemos a la página de login de educa.jcyl.es y metemos credenciales falsas y las mandamos. Burpsuite habrá capturado ese paquete donde se pueden ver la contraseña y el usuario:

![4 2](https://github.com/user-attachments/assets/0fb60e5a-40cb-4e30-8ec4-985883b4e0d1)

↓

![4 3](https://github.com/user-attachments/assets/5fde79fb-3937-4f38-bd35-cf89640197ac)


Para hacer el ataque hacemos **clic derecho sobre el paquete>Send to Intruder**

![4 5](https://github.com/user-attachments/assets/c91e79cf-b6a4-44bf-ab6a-cf1a0183a753)


Esto manda el paquete al **Intruder** la cual es una herramienta usada para realizar ataques automatizados en aplicaciones web. Su función principal es la de mandar solicitudes modificadas a la aplicación web.

En el intruder nos sale el paquete y en color verde la información que podemos cambiar, que en este caso son las credenciales de inicio de sesión. 
Esto es lo que se ve en el intruder y el primer ataque que haré será el **Sniper Attack**.

![4 7](https://github.com/user-attachments/assets/ca374f4d-8ef6-4782-b3f3-7525fe2fccef)


Tomamos el campo de la contraseña como objetivo y le pasamos una serie de contraseñas para que las compare.

![4 10](https://github.com/user-attachments/assets/eb951f37-46d6-427f-9ad6-c04212b45368)


El resultado del ataque es el siguiente:

![4 11](https://github.com/user-attachments/assets/c46ab525-e50f-4c25-805d-72bc5630624c)



Si alguna contraseña fuera real, el valor Lenght se diferenciaría del resto. 
Por ejemplo si ahora hago lo mismo, pero con mi cuenta real y le paso mi contraseña real, el campo cambia de longitud:

![4 12](https://github.com/user-attachments/assets/b101beaf-9ca9-42e2-b687-214426135ba9)


También se puede hacer este ataque pero añadiendo también la dirección de correo y no solo con la contraseña – las contraseñas y correos que se intentan se cargan desde un archivo.

![4 14 1](https://github.com/user-attachments/assets/74cbbce1-9163-4a1b-a44f-ae51caef5707)


↓

![4 15](https://github.com/user-attachments/assets/fe81f97c-24e7-4cfa-90c3-e783daaaf2e9)



#### Cluster Bomb

El siguiente ataque que voy a hacer es un **Cluster Bomb**. 

Este ataque prueba todas las contraseñas con todos los correos, antes no, antes solo se probaba la primera contraseña con el primer correo, el segundo con el segundo y así hasta acabar. 

Este tipo de ataque aunque es más lento, genera mucho menos tráfico y se suele hacer cuando se filtran credenciales de cuentas.

![4 16](https://github.com/user-attachments/assets/2f92a8ab-b039-4240-8b19-dc011e66386c)


Como se genera mucho tráfico, tan solo voy a probar 2 correos con 2 contraseñas:

![4 17](https://github.com/user-attachments/assets/3679d9cb-fdb5-4bba-9578-9d85c86851f1)


---

### Otras herramientas
#### Target

Otra cosa que se puede hacer es en **Target>URL View** se pueden ver todas las páginas que hemos visto o todas las búsquedas que se han realizado en el navegador.

![9 1](https://github.com/user-attachments/assets/e871a46d-e4db-4905-a4f5-a4a2b9b745ce)


Podemos coger uno de los iconos de la izquierda y ver el **Site Map Documentation**

![9 2 scope](https://github.com/user-attachments/assets/4cc72cb7-2d54-4849-a430-fde49f45fccd)


Al mandarlo a esta opción se intentará ver documentación sobre le mapa del sitio web.

![9 3](https://github.com/user-attachments/assets/c1b32719-62f4-4ccb-9603-aed5453c11bd)


Si con esto vamos a **Intruder** se puede hacer un **Sniper Attack** de 2 formas:

**Simple List**
- Se pasan valores directamente
**Runtime file**
- Se pasa un archivo con pocas opciones a probar

![9 4](https://github.com/user-attachments/assets/2e9754d8-8104-45a3-b48b-3ea6bdda3781)


Pasaremos el valor 17 para que lo pruebe.

![9 5](https://github.com/user-attachments/assets/2dc4e7d0-e275-474c-a353-1866fa65563a)


Y vemos como se ha ejecutado.

![9 6](https://github.com/user-attachments/assets/73c39286-11e8-4d42-ba9a-1d462bb5c87d)


Este “ataque” no ha servido para nada, simplemente para ver estas 2 opciones.

#### XSS

Ahora se va a hacer un ataque XSS Este ataque consiste en la inyección y ejecución de código java en la propia web.

Modifico la url:

![9 9 1](https://github.com/user-attachments/assets/7681d51b-5ebf-4c4a-afe0-1b9f92008e33)


Y mando el paquete:

![9 7](https://github.com/user-attachments/assets/3d3167ba-4754-403a-89c9-d3762ab002b7)


La página devuelve el siguiente resultado, indicando que si es vulnerable a XSS:

![9 8](https://github.com/user-attachments/assets/133415d4-4d19-4fa3-ac4e-522d3c79293f)


Al igual que burpsuite puede capturar el envio de una petición **– Request –** también puede capturar la respuesta de uno **– Response –.** 
Y desde la opción **Repeater** se pueden modificar parámetros (se usa mucho en XSS).

![9 9](https://github.com/user-attachments/assets/b9032efc-7437-4eed-878d-c2f92db4bc45)


#### Collaborator

También nos encontramos con **Collaborator** que es una opción muy usada en el robo de cookies. 

Esta herramienta también es utilizada para detectar vulnerabilidades en aplicaciones web que requieren interacción con servicios externos.

![9 10 colaorator - sirve para hacer ataques de robo de cookies](https://github.com/user-attachments/assets/c117b225-e97c-46d3-9210-7e6135b6f496)


Se pueden hacer ataques de **Hijacking (hacerse pasar por un usuario)** con el robo de cookies.

#### Sequencer

Otra opción relacionada con las cookies es Sequencer que nos permite medir la aleatoriedad de una cookie y poder anticiparnos a la creación de una.

![9 11](https://github.com/user-attachments/assets/bc16b6d8-6a98-4b32-93d3-06b037c42b3b)


No es muy utilizado.

#### Decoder

Es utilizado principalmente para decodificar/codificar contenido:

![9 12](https://github.com/user-attachments/assets/4c720b6a-f3a3-474d-82c5-ab378bd22a08)


↓

![9 13](https://github.com/user-attachments/assets/b529c711-708a-41b4-802f-0124caf168e9)


#### Comparer

Otra herramienta es el **Comparer** usada para (como dice su nombre) comparar contenidos. 
Para ver su funcionamiento antes, vamos a hacer otra cosa. 
Como podemos capturar envíos y repuestas, vamos a hacer 2 envíos al mismo sitio, pero un envió será con GET y otro con POST.

Para poder hacer esto, mando primero un mensaje al **Comparer**


![9 16](https://github.com/user-attachments/assets/996b33fb-d0b4-43b9-8607-5c3e60ce5f0e)



Mientras que el otro lo mando al Repeater para poder cambiar le método de envío.

![9 17 1](https://github.com/user-attachments/assets/dbf3196a-d0b5-460d-a3f1-dd70684e9d10)


↓

![9 18](https://github.com/user-attachments/assets/b7158384-7bc2-4d5c-9f6d-251bef3d4c15)

Ahora la respuesta que me ha dado la página es diferente a la que me hizo con **GET**.

![9 19](https://github.com/user-attachments/assets/73bdb56a-d0be-4129-94f4-43ca99c3bc53)


↓

![9 17](https://github.com/user-attachments/assets/67edffc3-a80a-455a-8b80-31e347600e26)


Lo mando al **Comparer** y los comparo:

![9 20](https://github.com/user-attachments/assets/bc2467fc-a876-4fd8-9de4-1aec416f297a)


↓

![9 21](https://github.com/user-attachments/assets/8e16cfbc-01ed-4190-a446-3c28b0b42968)


#### Logger

Otros apartados menos importantes son Logger el cual lleva un registro de las páginas y las solicitudes:

![9 22](https://github.com/user-attachments/assets/67126f42-2d07-4a02-be73-93a24e641cb6)


#### Organizer

Y el **Organizer** que nos permite organizar paquetes.

![9 24](https://github.com/user-attachments/assets/2ae69ec6-cfef-4cf9-85ba-ef7de3201c3c)


