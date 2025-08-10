## Instalación del servidor DNS. 

### Configuración previa 

Antes de instalar el servidor DNS, vamos a configurar el equipo. 
El nombre del equipo será **SERVER-03** 

<img width="180" height="78" alt="image" src="https://github.com/user-attachments/assets/0e1378b1-104c-4745-86a5-ed258e41f645" />

Y el sufijo DNS **sri-03.net**

<img width="469" height="280" alt="image" src="https://github.com/user-attachments/assets/15f89605-ad92-4a9e-be76-ac1063a4db47" />

Y tendrán la siguiente configuración TCP/IP

<img width="469" height="274" alt="image" src="https://github.com/user-attachments/assets/c1d3b0d2-6d28-4ee0-b160-ba3187a975b3" />

Obviamente, ponemos que el servidor DNS principal del servidor sea el mismo y por si acaso ponemos el servidor DNS de Google, para que en caso de que falle el servidor principal, el servidor alternativo nos resuelva las peticiones.

---

## En el servidor de Windows Server instalar el servicio DNS.  

Pasamos a la instalación, vamos a **Administrador del servidor>Agregar roles y características**. 

<img width="444" height="132" alt="image" src="https://github.com/user-attachments/assets/1cca06a9-2daf-4787-800e-7b8c91beb8f3" />

Especificamos que la instalación estará basada en roles o características.

<img width="524" height="59" alt="image" src="https://github.com/user-attachments/assets/29cf0958-2dc7-420e-be86-7a3cd9770f6d" />

Elegimos el Servidor DNS para instalarlo.

<img width="136" height="25" alt="image" src="https://github.com/user-attachments/assets/fa16d070-e8de-4975-b647-8b79dadc906d" />

Pasamos las pantallas siguientes, pues no son importantes y llegamos al resumen de la instalación.

Damos al botón **Instalar** y se instala el servidor.

<img width="667" height="379" alt="image" src="https://github.com/user-attachments/assets/8a19b8a3-26b4-43cc-a668-fc231370d114" />

### Comprobar con “netstat –a –n” 

ara poder comprobar que el servidor DNS se ha instalado, podemos ir a **Administrador del servidor>Herramientas** y ver que está instalado. 

<img width="306" height="279" alt="image" src="https://github.com/user-attachments/assets/bd633d6f-d616-4e00-8a32-51e0b1c3b8d5" />

O con los siguientes comandos:

```bash
netstat -a -n 
```

```bash
netstat -aon | findstr ":53" 
```

<img width="664" height="199" alt="image" src="https://github.com/user-attachments/assets/4f2098a2-127b-4e7e-865d-6a056e56af98" />

Y por último, veremos que en el Firewall se han creado la reglas correspondientes.

<img width="901" height="37" alt="image" src="https://github.com/user-attachments/assets/b931e44b-0b58-4e06-b271-a40fbab6fe89" />

Ya lo tenemos todo instalado y funcionando, así que podemos empezar a hacer la práctica. 

---

## Crear la zona DNS autoritativa permitiendo actualizaciones dinámicas no seguras y comprobar donde se almacena. Visualizar el fichero texto de la zona con el bloc de notas. 

Entramos al servidor DNS y en **Zona de búsqueda directa** creamos una **Zona nueva**

<img width="267" height="84" alt="image" src="https://github.com/user-attachments/assets/79680c37-14f5-45ba-b50f-fe34b085d159" />

Se nos abre un asistente para crear la zona.
Elegimos una **Zona principal**.

<img width="458" height="290" alt="image" src="https://github.com/user-attachments/assets/0c0be5e8-d68a-42b5-8413-4a54260437bc" />

Como nombre de zona, pondremos **sri-03.net**

<img width="523" height="248" alt="image" src="https://github.com/user-attachments/assets/41518602-bfbb-47ee-a109-97648983e235" />

Especificaremos que cree un archivo de zona, donde se guardará la información sobre la zona.

<img width="448" height="260" alt="image" src="https://github.com/user-attachments/assets/1f341749-8520-4c0c-b7a4-1fe7cf69de07" />

Y permitiremos las actualizaciones dinámicas seguras y no seguras.

<img width="466" height="301" alt="image" src="https://github.com/user-attachments/assets/b0bf0e35-f8ff-438a-ad1e-c378b7f970f3" />

Y saldrá un resumen de la zona.

<img width="387" height="287" alt="image" src="https://github.com/user-attachments/assets/056798c5-bac1-40c2-90bf-b25c6e62b001" />

Una vez la zona creada, vamos a **C:\Windows\System32\dns** para comprobar que se ha creado el archivo que hemos especificado anteriormente. 

<img width="471" height="229" alt="image" src="https://github.com/user-attachments/assets/f42ff3a0-ea8f-473c-bc5f-c3fe09a6944a" />

Este es el contenido del archivo.

<img width="667" height="434" alt="image" src="https://github.com/user-attachments/assets/311c8849-3814-4306-b20b-5922e802c6ad" />

---

## Crear las asociaciones para los equipos

En la zona que acabamos a crear, vamos a crear una asociación para nuestros equipos Ubuntu, para las máquinas y equipo de nuestro compañero (Javier Moral) y para los clientes aulapcXX 

Para crearlas, damos clic derecho en la **Zona>Agregar Host**

Ponemos el nombre del equipo y su IP.

<img width="391" height="204" alt="image" src="https://github.com/user-attachments/assets/94b4a120-dd2c-490a-9dec-b33be82ebe98" />

Y así lo hacemos con todos los equipos.

<img width="639" height="475" alt="image" src="https://github.com/user-attachments/assets/d259960a-3581-4e50-b64d-e1a4355e1068" />

---

## Crear también su correspondiente registro en la zona de resolución inversa para todos salvo para los equipos desde aulapc05 a aulapc10. 

Vamos a **Zonas de búsqueda inversa** y creamos una nueva zona.

<img width="300" height="49" alt="image" src="https://github.com/user-attachments/assets/532c3159-9bcf-4c95-a82e-edd7b22e07db" />

Será una zona principal. 

<img width="563" height="153" alt="image" src="https://github.com/user-attachments/assets/13e57c10-f445-4b3c-8355-720ce95caefa" />

Para IPV4 

<img width="558" height="174" alt="image" src="https://github.com/user-attachments/assets/f4b2bfc7-b6c7-4a9c-9440-8daf4b48c47c" />

El nombre de la zona de búsqueda inversa será **203.168.192.in-addr.arpa** 

<img width="560" height="321" alt="image" src="https://github.com/user-attachments/assets/8aa29286-b169-4928-9bb6-b73c724374f9" />

Se creará un archivo en la misma ruta que el anterior, que contendrá la configuración de la zona. 

<img width="562" height="187" alt="image" src="https://github.com/user-attachments/assets/909dfce7-d380-4af0-8302-48db4a8218c4" />

Permitiremos actualizaciones no seguras. 

<img width="463" height="290" alt="image" src="https://github.com/user-attachments/assets/45bdbd03-b318-44c8-977b-50ea0101671e" />

Y nos sale un resumen de la zona.

<img width="366" height="291" alt="image" src="https://github.com/user-attachments/assets/0a402263-6a5a-4b8a-8e4e-3c3ca468aec7" />

Para crear el registro en la zona inversa, tenemos que marcar la opción  
**Crear registro del puntero (PTR)** asociado en cada registro de la zona directa (menos en los registros de aulapc05-aulapc10) 

<img width="391" height="206" alt="image" src="https://github.com/user-attachments/assets/ac6c856f-3cdf-47fd-b378-c754efe5f779" />

↓

<img width="689" height="245" alt="image" src="https://github.com/user-attachments/assets/cd61f250-1ab4-42d3-baef-610a06900d53" />

---

## El tiempo en caché de los registros de recursos será de 3 horas 

Para cambiar el tiempo en cache de los registros, vamos a las **propiedades de la zona>Inicio de autoridad (SOA) y ponemos TTL mínimo 3 horas | TTL para este registro 3 horas.**

<img width="472" height="608" alt="image" src="https://github.com/user-attachments/assets/79c0fd47-7496-4954-bf66-a512e1277ff5" />

---

## Modificar la zona de búsqueda inversa correspondiente que permita actualizaciones dinámicas no seguras y comprobar donde se almacena

Esto realmente lo hemos activado ya en la creación de la zona, pero si lo quisiéramos cambiar, sería en las propiedades de la zona inversa>General.

<img width="369" height="293" alt="image" src="https://github.com/user-attachments/assets/b8ac7027-b861-44ac-9f04-23ecffed0583" />

El archivo de la zona se guarda en **C:\Windows\System32\dns**

<img width="525" height="192" alt="image" src="https://github.com/user-attachments/assets/d04177c9-0fa1-495d-bb3d-79ab51ae2059" />

Contenido: 

<img width="481" height="328" alt="image" src="https://github.com/user-attachments/assets/985ab12f-7310-426e-89c3-e19fc170339b" />

---

## Realizar verificaciones directas e inversas con nslookup desde el servidor. 

Para hacer una verificación directa, pondremos el nombre del sitio con el que queremos comunicarnos. 
Y para hacer la verificación inversa, pondremos la IP del sitio. 

<img width="544" height="243" alt="image" src="https://github.com/user-attachments/assets/18b3a8c8-88a1-4743-8316-a95d8bde2e52" />

---

## Creación de servidor Web y de Correo 

Antes de proseguir con la práctica, tenemos que crear un alias para un servidor web que se encontrará en el servidor Ubuntu y para un servidor de correo. 
Para crear el alias, damos **clic derecho en la zona>Alias Nuevo**. 

<img width="194" height="35" alt="image" src="https://github.com/user-attachments/assets/6b24cbd8-3fae-4c09-af3c-bb483bd8192d" />

Y ponemos lo siguiente. 

<img width="388" height="225" alt="image" src="https://github.com/user-attachments/assets/daae00c3-9e56-42f2-8831-d3b14e0003ef" />

Para crear el servidor de correo (MX) seguimos otro procedimiento 
Creamos un nuevo host llamado mail, con la IP del equipo. 

<img width="454" height="260" alt="image" src="https://github.com/user-attachments/assets/6773849a-b630-40b1-aa83-a03a36603956" />

Y creamos un nuevo Agente de intercambio de correo, cuyo nombre de dominio completo, será el host que acabamos de crear. 

<img width="342" height="280" alt="image" src="https://github.com/user-attachments/assets/4fd3faa2-b436-4017-a6cc-0a2d7d5781b3" />

Para comprobar su funcionamiento, ponemos los siguientes comandos:

```bash
nslookup -q=mx mail.sri-03.net 
nslookup -q=mx sri-03.net
```

<img width="640" height="271" alt="image" src="https://github.com/user-attachments/assets/13d858b1-e686-4c49-b9fa-700fb78245bf" />

---

## Configurar el cliente para que utilice este servidor DNS.

Ahora vamos a configurar el equipo W7 para que use el servidor DNS que acabamos de crear. 
Lo primero es, que en la configuración TCP/IP, en el servidor DNS primario tengamos el servidor DNS que acabamos de configurar.

<img width="369" height="224" alt="image" src="https://github.com/user-attachments/assets/a3aca925-fa6b-4c3c-ad2c-6482a8f15168" />

Y en el sufijo DNS principal, ponemos **sri-03.net** 

<img width="414" height="239" alt="image" src="https://github.com/user-attachments/assets/7447eccd-154f-49c8-9410-a811e394d96e" />

---

## Con nslookup probar si conoce aulapc02. Justifícalo 

Abrimos un terminal y ponemos: 

```bash
nslookup aulapc02
```

De primeras, esto no debería de funcionar, pero a mi si me funciona. 
Esto ocurre porque mi sistema está configurado para buscar automáticamente en el dominio DNS especificado cuando se proporciona un nombre de dominio no completamente calificado, pudiendo resolver nombres de dominio parciales gracias a la configuración de búsqueda de DNS en tu sistema.

<img width="619" height="145" alt="image" src="https://github.com/user-attachments/assets/a987f4ae-16ac-4a85-ada3-c76134fa8294" />

---

## Con nslookup probar si conoce aulapc02. Justifícalo 

Y si ahora hacemos un nslookup poniendo todo el nombre, obviamente que nos funcionará, si funciona poniendo el nombre de forma parcial, también funcionará si ponemos el nombre completo. 

<img width="490" height="95" alt="image" src="https://github.com/user-attachments/assets/2b573c78-8a10-4a33-81ab-d4c7fed2998e" />


















































































