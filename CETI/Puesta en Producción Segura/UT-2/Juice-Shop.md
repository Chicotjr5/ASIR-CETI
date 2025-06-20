<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Instalar y acceder a JuiceShop](#ínstalar-y-acceder-a-juiceshop)
 - [Identificar y describir 3 vulnerabilidades de OWASP TOP TEN](#identificar-y-describir-3-vulnerabilidades-de-owasp-top-ten)
   - [INJECTION](#injection)
   - [BROKEN ACCESS CONTROL](#broken-access-control)
   - [SECURE MISCONFIGURATION](#secure-misconfiguration)
   - [NULL BYTE INJECTION](#null-byte-injection)
 - [Explotar cada vulnerabilidad](#explotar-cada-vulnerabilidad)
   - [INJECTION](#injection-1)
   - [BROKEN ACCESS CONTROL](#broken-access-control-1)
   - [SECURE MISCONFIGURATION](#secure-misconfiguration-1)
   - [NULL BYTE INJECTION](#null-byte-injection-1)
 - [Proponer una solucion](#proponer-una-solución)
   - [INJECTION](#injection-2)
   - [BROKEN ACCESS CONTROL](#broken-access-control-2)
   - [SECURE MISCONFIGURATION](#secure-misconfiguration-2)
   - [NULL BYTE INJECTION](#null-byte-injection-2)
</details>

---

## Introducción

En esta práctica se va a instalar y utilizar Juice-Shop, la cual es una aplicación web vulnerable creada por el OWASP y que nos permite aprender y realizar técnicas de ciberseguridad.


---

### Instalar y acceder a JuiceShop

La instalación de mi juice-shop la realice con docker y es muy sencilla: 

```bash
docker pull bkimminich/juice-shop
```

![1 1](https://github.com/user-attachments/assets/2499e705-34e3-4b44-8af9-3864f65bb89c)


```bash
docker run –rm -p 3000:3000 bkimminch/juice-shop 
```

![1 2](https://github.com/user-attachments/assets/eb496d2c-43da-401e-8c47-6302f38ff639)

Voy al navegador y accedo: http://localhost:3000

![1 3](https://github.com/user-attachments/assets/99ff27de-0db2-422f-8b28-15ecaf3415e6)

Debido a que mi instalación la hice con docker, hay algunos desafíos / vulnerabilidades que no están disponibles: 

![0 1](https://github.com/user-attachments/assets/ee73c545-3750-4557-b476-38533fc2bbb0)

---

### Identificar y describir 3 vulnerabilidades de OWASP TOP TEN

#### INJECTION

Consiste en el envio de datos maliciosos a un intérprete, como un comando o consulta. 

Estos datos pueden engañar al intérprete para que ejecute comandos no deseados o acceda a x datos sin la debida autorización. 

Hay inyecciones de varios tipos:

- SQL
- NoSQL
- XSS
- LDAP
- XPath
- CRLF

#### BROKEN ACCESS CONTROL

Un software o app web no aplica de forma adecuada las restricciones de acceso a recursos protegidos por lo que un usuario no autorizado podría acceder a recursos o realizar acciones que deberían de estar limitadas solo a usuarios autorizados. 

#### SECURE MISCONFIGURATION

Consiste en una seria de configuraciones predeterminadas inseguras o incompletas que resultan en problemas de seguridad. 

- Almacenamiento abierto en la nue
- Encabezados HTTP mal configurados
- Mensajes de erro con información adicional

#### NULL BYTE INJECTION

Vulnerabilidad en la que se usa un carácter nulo (\x00 o %00 en URL encoding) para engañar a un sistema sobre cómo interpretar una entrada. 

Esta vulnerabilidad permite ataques de: 

- Evasión de validación de extensiones
- Bypass de controles de acceso
- Inyección en bases de datos
- Inyección en rutas de archivos

---

### Explotar cada vulnerabilidad

#### INJECTION

En la parte superior derecha se puede ver un icono para poder iniciar sesión, que nos lleva a una página de Login:

![image](https://github.com/user-attachments/assets/01de276a-1ce1-4ffc-8d50-2f60abb46b49)

Aquí hay varias formas de hacer el INJECTION 

Tenemos el SQL Injection haciendo una consulta ' OR 1=1 – en el campo del usuario. 

Si la aplicación (Juice-Shop en este caso) tiene una consulta vulnerable, como por ejemplo:

```sql
SELECT * FROM users WHERE username = 'usuario' AND password = 'contraseña'; 
```

Al realizar le ataque la consulta se transforma en: 

```sql
SELECT * FROM users WHERE username = '' OR 1=1 -- ' AND password = '';
```

Se cierra el string que se esperaba para el valor username y como 1 = 1 siempre se evalúa TRUE por lo que la consulta devuelve todos los registros de la tabla, mientras que – comenta el resto de la consulta, para que no se valide la contraseña. 

En el campo de la contraseña podemos poner cualquier cosa

![image](https://github.com/user-attachments/assets/bf8db16c-d115-4664-835c-520ff63b73a1)

Al ejecutarlo, nos saldrá un mensaje de que hemos logrado resolver el desafío de Login Admin sin la contraseña del Administrador 

![2 2](https://github.com/user-attachments/assets/2c94b01e-6231-4fe4-9c9a-d465b05f00a9)

Otra inyección que se puede hacer es poner el nombre del usuario correctamente (ahora que he accedido a su cuneta, se cual es) y detrás poner ‘--. 

Esto hace que no se compruebe la contraseña, así que vuelvo a acceder:

![2 3](https://github.com/user-attachments/assets/75fca06a-38d5-455a-a58d-166520524a69)

↓

![2 4](https://github.com/user-attachments/assets/f0aee8cd-8a91-4e88-9b9b-086416d7e3b0)

También podría considerarse **BROKEN ACCESS CONTROL**

El ultimo tipo de **INJECTION** que intento es el XSS el cual consiste en la ejecución de Javascript. 
Ejecutaré el siguiente código:

```bash
<img src="x" onerror="alert('XSS en Juice-shop')"> 
```

Este código intenta cargar una imagen desde una fuente no existente y como le navegador no podrá mostrar la  imagen, se ejecutará el evento onerror el cual ejecutará la alerta en JavaScript.

![3 1 1](https://github.com/user-attachments/assets/3883df87-4c6d-4789-b694-d5bfbfd54801)

Sale el siguiente mensaje, confirmando que Juice-Shop es vulnerable a XSS:

![3 1](https://github.com/user-attachments/assets/8d65ab53-be72-4812-8a49-129b8caab8e2)

---

#### BROKEN ACCESS CONTROL

Para hacer esta vulnerabilidad he usado la herramienta dirb la cual sirve para ver los directorios expuestos de un sitio web. 

```bash
dirb “http://localhost:3000” 
```

Con ella he podido ver que dentro del sitio existen los directorios **/ftp**, **/promotion**, **/snippets**, **/video** y el fichero **/robots.txt**. 

![4 1](https://github.com/user-attachments/assets/fe8ca73f-9afd-4544-9b61-974e9f6bc568)

Si en el buscador pongo **http://localhost:300/ftp** podré acceder a ese directorio ftp y ver todos los recursos y archivos que se encuentran allí:

![4 2](https://github.com/user-attachments/assets/583959e6-74e8-4579-8968-31f06654ebd7)

↓

![4 3](https://github.com/user-attachments/assets/734144f5-0123-4c16-ba5b-0ae68ae666b4)

De hecho, he completado otro desafío

![4 4](https://github.com/user-attachments/assets/71bf5926-7f55-4dc1-87b9-2bcecee7ceb2)

En verdad, esta se podría considerar también una vulnerabilidad de **Secure Misconfiguration** debido a que estamos accediendo a un recurso, pero no hemos tenido que autenticarnos o pasar ningún método de autenticación. 

---

#### SECURE MISCONFIGURATION

En este caso voy a subir un fichero que tenga un tamaño mayor de lo permitido, que son 100KB. 

Lo primero será generar un .pdf de 99,9KB:

```bash
base64 /dev/urandom | head -c 99900 > random.pdf 
```

![8 1](https://github.com/user-attachments/assets/06344892-4389-472a-a74a-0cbf091aeb21)

Con el archivo creado, voy a la parte de las quejas / complains donde se puede subir un archivo. 

![8 2](https://github.com/user-attachments/assets/966db61f-064c-4a64-bd30-9cfea4da0f86)

Pero antes de subirlo arranco la herramientas burpsuite que me permite interceptar el tráfico del navegador web e intercepto el paquete:

![8 4](https://github.com/user-attachments/assets/7a35cd8f-96a7-4ac7-aa4d-ba89901d5e62)

Mando el paquete al Repeater donde editO el contenido del fichero .pdf para que ahora ocupe más de 100KB:

![image](https://github.com/user-attachments/assets/c47d2e14-2536-4c33-bcad-f162480a7cd6)

Al mandar el paquete la respuesta que podemos ver es la siguiente: 

![8 6](https://github.com/user-attachments/assets/e0c560fa-fe9b-4d71-aed6-ec2b13af702c)

Esto quiere decir que la página no ha generado ningún mensaje, ni de error de ni éxito, por lo que supongo que el archivo se ha subido. 

Y efectivamente, nada más recargar el Juice-shop sale un mensaje de que he superado el desafío:

![8 7](https://github.com/user-attachments/assets/95522969-9560-4da7-8268-7e9222c24986)

Otro desafío similar a este y relacionado con el SECURE MISCONFIGURATION consisten en subir un fichero sin extensión. 

El “modus operandi” es el mismo, solo que esta vez, en el Repeater le quitaremos la extensión al archivo: 

![9 2](https://github.com/user-attachments/assets/468681bc-cc9d-414f-a2cd-949fff02292c)

Vuelvo a mandar el paquete modificado y desafío completado: 

![9 3](https://github.com/user-attachments/assets/bd4de661-5a9e-4b14-85d6-4bf04973b012)

----

#### NULL BYTE INJECTION

En este ataque vuelvo al directorio FTP y esta vez voy a descargar un archivo que no debería.

![10 1](https://github.com/user-attachments/assets/d01e8a0e-9a54-4cf4-a09c-a4583c5291f3)

Dentro de **ftp** hay archivos con diferentes extensiones pero solo los archivos **.pdf** y **.md** se pueden ver/descargar: 

![image](https://github.com/user-attachments/assets/d7b1acff-772b-41bc-b241-22b0f6a9947f)

Para superar este bache, escribo lo siguiente en la url:

```bash
%2500pdf 
```

Esto lo que hace es engañar al servidor (juice-shop) para que crea que el archivo tiene la extensión .pdf por lo que nos permite visualizarlo.

![10 2](https://github.com/user-attachments/assets/7813bb7c-0e95-4c80-a088-ff27beeb736b)

El archivo al no ser .pdf pues no muestra contenido, pero podemos descargarlo.

![10 3](https://github.com/user-attachments/assets/bcb3c209-819f-4d1e-9a70-945e1639280a)

Para ver su contenido, le cambio la extensión a .bak y lo abro con un editor de texto: 

![10 4](https://github.com/user-attachments/assets/61b40e3d-4fb7-4a6a-be38-27f7fade6d26)

Y con esto he logrado completar 3 desafíos: 

![10 5](https://github.com/user-attachments/assets/c27f980a-e936-467d-bba8-9dc85cbe5560)

---

### Proporner una solución 

#### INJECTION

- Uso de consultas preparadas

```bash
const query = "SELECT * FROM users WHERE email = ? AND password = ?"; 
db.execute(query, [email, password]); 
```

- Validar y sanitizar entradas
- Restringir los privilegios de la BD
  - Así las consultas no pueden acceder / modificar / borrar datos
-  Usar un WAF
  - Que detecte y bloquee inyecciones 

#### BROKEN ACCESS CONTROL

- Principio de mínimo privilegio
- Denegar acceso por defecto
- Roles y permisos bien definidos

#### SECURE MISCONFIGURATION 

- Revisar configuraciones por defecto y cambiar contraseñas predeterminadas.
- Deshabilitar servicios innecesarios y puertos abiertos que no se usan.
- No exponer detalles de la configuración en errores o respuestas HTTP
- Utilizar herramientas de gestión de configuraciones.
- Asegurarse de que las versiones antiguas de software o servicios no estén activas en el entorno de producción.
- Registrar y auditar todas las actividades de subida de archivos

#### NULL BYTE INJECTION 

- Sanitizar todas las entradas de usuario para eliminar caracteres especiales.
- Asegurarse de que los archivos subidos tengan un control de extensión válido y que no dependan solo de la extensión para la validación.
- Filtrar caracteres no alfanuméricos y caracteres control en todos los campos de entrada, incluidos los nombres de archivos, URL y parámetros de formularios.
- No permitir la subida de archivos directamente en directorios accesibles sin una validación y una revisión estricta. 











