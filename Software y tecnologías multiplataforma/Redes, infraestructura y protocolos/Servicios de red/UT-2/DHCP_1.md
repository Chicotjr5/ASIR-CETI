## Configurar las tarjetas de la red interna para que los clientes cojan la dirección automáticamente por DHCP. El equipo SERVER tendrá la dirección 10.11.XX.254. Tras arrancarlas.

Lo primero que hay que hacer en esta práctica, es, en todas las máquinas poner una nueva interfaz de red, en modo red interna, para que las máquinas puedan comunicarse entre sí sin interferir con la red real. 
Así que añadimos un adaptador de red nuevo para cada máquina. 

<img width="668" height="184" alt="image" src="https://github.com/user-attachments/assets/64165b5b-3a2e-4e67-ac43-7bc939c62a7c" />

↓

<img width="668" height="179" alt="image" src="https://github.com/user-attachments/assets/9bfec814-05bb-442c-b245-f744fdce75ed" />

↓

<img width="667" height="180" alt="image" src="https://github.com/user-attachments/assets/cb8ee2b6-800b-4292-9e2a-b1879783e1ce" />

Una vez añadido el adaptador de red interna, encendemos las máquinas y configuramos el adaptador, para que la IP se la asigne un servidor DHCP.

<img width="432" height="156" alt="image" src="https://github.com/user-attachments/assets/2a2e2b22-5756-4ee7-bec3-46b2d339cb19" />

↓

<img width="251" height="62" alt="image" src="https://github.com/user-attachments/assets/7c1785be-e561-4965-a522-6989710e838c" />

Y en el servidor, ponemos la siguiente IP. 

<img width="480" height="309" alt="image" src="https://github.com/user-attachments/assets/cce998ed-413a-4180-92a5-4e46e3017b9d" />

Al poner la IP me equivoque y en vez de poner la 10.11.3.254 puse la 31 sin querer y como no me di cuenta, lo deje así. 
Pero no cambia nada en el procedimiento de hacer la práctica.

---

## Justificar en la red interna si tienen dirección de red. 

Si que tienen, se les asigna una dirección APIPA, debido a que aún no hemos configurado el servidor DHCP 
En Windows 7 se ve muy fácil, solo hay que hacer un:

```bash
ipconfig.
```

<img width="691" height="194" alt="image" src="https://github.com/user-attachments/assets/57d5092f-3755-4bc4-acd1-817a3a93f7bc" />

Pero en Ubuntu, para que salga, tenemos que ir a **/etc/netplan/01-network-manager-all.yaml** y añadir lo siguiente: 

<img width="814" height="20" alt="image" src="https://github.com/user-attachments/assets/c5854ef3-ebd6-4ab7-a9dc-818481604484" />

<img width="282" height="85" alt="image" src="https://github.com/user-attachments/assets/8068e67f-8b8b-42ce-84e0-2b8525a9457f" />

Obviamente, después de realizar cualquier configuración en este archivo, luego hay que ejecutar un 
```bash
sudo netplan apply 
```
para que se guarden los cambios. 

Y ya nos sale la dirección **APIPA**

<img width="851" height="280" alt="image" src="https://github.com/user-attachments/assets/26272656-a28c-415c-bed0-0ec683b4c160" />

### ¿De dónde se ha obtenido? 

Se obtiene del propio equipo, ya que como nadie le da una IP al equipo, este se la autodiagnostica, dándose una IP del rango 169.254.0.0/16. 
En una red, no puede haber 2 direcciones APIPA iguales, debido a que cuando un equipo va a tener una APIPA, primero la difunde por la red comprobando si alguien más la tiene. 
Si nadie la tiene, la usa. 

### ¿Pueden hacerse ping entre ellas?

Obviamente, al estar en la misma red, se pueden comunicar. 

<img width="543" height="187" alt="image" src="https://github.com/user-attachments/assets/b6603116-7e29-48a1-91f3-29fc78ae5d41" />

↓

<img width="664" height="91" alt="image" src="https://github.com/user-attachments/assets/75a98e79-2743-45dd-8727-cd390f63f60a" />

---

### Explicar detalladamente la configuración de todas las tarjetas de red de las MV usadas.

Al final, la configuración de las tarjetas de red en los equipos quedó de la siguiente manera: 

**Windows Server**

- Adaptador 1
  - Modo Puente
    - IP - 192.168.203.31/16
    - GW - 192.168.200.1
   
- Adaptador 2
  -  Modo Red Interna
    - IP - 192.168.31.254/24
    - GW - 

**Windows 7**

- Adaptador 1
  - Modo puente
    - IP - 192.168.203.32/16
    - GW - 192.168.200.1
   
- Adaptador 2 
  - Modo Red Interna
    - IP - DHCP
    - GW  - DHCP
   
**Ubuntu cliente**

- Adaptador 1
  - Modo Puente
    - IP - 192.168.203.34/16
    - GW - 192.168.200.1
   
- Adaptador 2
  - Modo Red Interna
    - IP - DHCP
    - GW - DHCP

---

## Instalación y configuración DHCP 

### Documentar la instalación del servicio DHCP en el servidor

Ya que tenemos todas las máquinas configuradas, vamos a lo mejor de la práctica, instalar el servidor DHCP. 
Para poder instalarlo, vamos a **Administrador del servidor>Agregar roles y características**.

<img width="606" height="192" alt="image" src="https://github.com/user-attachments/assets/27a2111c-18ec-48fa-aed4-7a2e5b021717" />

Así, inicia un asistente, el cual nos ayudará en la instalación del servidor DHCP. 
Especificaremos que es una instalación basada en características o roles.

<img width="624" height="171" alt="image" src="https://github.com/user-attachments/assets/57aa18e3-babc-49f1-9b84-10b424e09e24" />

Y seleccionaremos el servidor donde instalaremos el servidor DHCP. 

<img width="632" height="219" alt="image" src="https://github.com/user-attachments/assets/a1a0ff41-69de-4a8c-b2ad-1a8a0160cd93" />

Especificamos, que instalaremos el servidor DHCP. 

<img width="667" height="404" alt="image" src="https://github.com/user-attachments/assets/5fe550e0-508f-4153-852f-b7625ef2f4a1" />

Y dejamos que se instale. 

<img width="667" height="251" alt="image" src="https://github.com/user-attachments/assets/9d93c497-3fcb-4f49-ad3b-c0a3b93e5674" />

Una vez instalado, ya podemos usarlo.

<img width="319" height="205" alt="image" src="https://github.com/user-attachments/assets/4fabb4f1-5006-457f-9c1e-48fec3dd5191" />

### Crear un ámbito con parte de las direcciones disponibles y con las siguientes características:


- Rango a partir de 10.11.XX.1 cogiendo al menos 50 direcciones
- Crear exclusiones para los servidores antes enumerados
- Opciones de ámbito la del gateway (suponer que es 10.11.XX.254).
- Opciones de ámbito la de los servidores DNS.
- Opciones de ámbito del sufijo DNS a sri-XX.net 

En el servidor, damos clic derecho>Ámbito nuevo.

<img width="267" height="110" alt="image" src="https://github.com/user-attachments/assets/3cbf129b-fb8e-40b3-9da2-5eedb0e500f9" />

Y se inicia un asistente para la creación del ámbito. 
Lo primero será especificar el nombre.

<img width="587" height="204" alt="image" src="https://github.com/user-attachments/assets/4df34c56-b9ec-4e41-a983-273ad090f913" />

Ahora toca especificar cual será el rango de IP de nuestro ámbito. 

Tienen que ser mínimo 50 direcciones del rango 10.11.31.1, así que vamos a coger de la **IP 10.11.31.1-10.11.31.100** con la máscara **/24**.

<img width="582" height="352" alt="image" src="https://github.com/user-attachments/assets/f3c9dc96-c9f8-4c76-972b-6579ab9365f3" />

Y agregaremos 2 exclusiones en este rango: 
10.11.31.21-10.11.31.22 para los servidores DNS. 

<img width="578" height="249" alt="image" src="https://github.com/user-attachments/assets/28128ae9-3880-4343-908d-cffc339a304e" />

El siguiente apartado, es especificar la duración de la concesión, nosotros no lo vamos a cambiar por ahora, así que dejamos el valor por defecto. 

<img width="581" height="330" alt="image" src="https://github.com/user-attachments/assets/391c2be1-6377-4567-9d9e-05966ac1e517" />

Ahora solo nos faltarían 2 cositas. 
Configurar la Gateway de este ámbito, la cual es la 10.11.31.254.


<img width="586" height="203" alt="image" src="https://github.com/user-attachments/assets/e82351da-075f-464f-a298-3606cb20ee2e" />

Y por último, establecer los DNS de ámbito. 
Como estos DNS y este servidor no están creados, ni existen, el asistente intenta validarlos, pero no puede. 

<img width="349" height="123" alt="image" src="https://github.com/user-attachments/assets/61af2e09-2535-4b43-9b53-abddb067f3e0" />

Aún así, nos deja ponerlos 

<img width="586" height="375" alt="image" src="https://github.com/user-attachments/assets/c50affdf-c5f0-46fc-96f0-0d3d2fa53517" />

Y activamos el ámbito. 

<img width="512" height="165" alt="image" src="https://github.com/user-attachments/assets/e02d5cff-2ef5-4abf-9411-c58db1047587" />

Este DHCP, reparte direcciones tanto en la red interna, como en la red normal (adaptador 1).
Para cambiar eso, vamos a **Servidor>Propiedades>Opciones avanzadas>Enlaces** 

<img width="240" height="413" alt="image" src="https://github.com/user-attachments/assets/2430385d-9ba7-4fe2-951a-6072f9c7eb3f" />

<img width="563" height="214" alt="image" src="https://github.com/user-attachments/assets/7606ca6b-dd29-4f19-8f97-a72ac4bba5ad" />

Aquí, especificamos que el servidor DHCP solo dará IP por el adaptador 2.

<img width="531" height="162" alt="image" src="https://github.com/user-attachments/assets/0bf7ddc0-748a-4438-9f55-72665b6df213" />

---

## Modificar la configuración de XP y de UBUNTUcli para recibir una IP dinámicamente. Comprobar si funciona  

Revisamos la configuración de las máquinas clientes y ponemos en el adaptador 2 que su IP la coja por DHCP. 
Como ahora si hay un servidor DHCP, este ya nos da las IP.

<img width="663" height="430" alt="image" src="https://github.com/user-attachments/assets/1f496411-6dc7-4568-8223-610eb83a2ad8" />

↓

<img width="732" height="339" alt="image" src="https://github.com/user-attachments/assets/e6e5a89e-fc90-423a-8501-5fef951b6056" />

Como vemos en los recuadros amarillos, el servidor DHCP le ha asignado IP, máscara, Gateway y DNS, además de que nos saca la fecha deconcesión y cuando expira esta. 

### Establecer una reserva para la MAC de XP y asignarle la dirección 
10.11.XX.25. Comprobar si la coge. 

Para establecer una nueva reserva, vamos al **ámbito>Reservas>clic derecho>reserva nueva**.

<img width="254" height="49" alt="image" src="https://github.com/user-attachments/assets/fe626f4f-828e-43b7-935f-dcdeddfff601" />

Y la configuramos, para que le de la IP 10.11.3.25 al W7. 

<img width="394" height="342" alt="image" src="https://github.com/user-attachments/assets/8efc3731-5609-466c-ad29-c94772c5919a" />

Vamos al W7 y volvemos a hacer un

```BASH
ipconfig /all. 
```

<img width="712" height="464" alt="image" src="https://github.com/user-attachments/assets/76a84314-f9d7-4105-ab12-f48165f38587" />

---

## Pruebas 

### Visualizar en el servidor las concesiones realizadas.

<img width="293" height="37" alt="image" src="https://github.com/user-attachments/assets/777d38aa-3ddd-4689-b1ee-8a7c57859c2d" />

Para verlas, vamos a **ámbito>Concesiones de direcciones**

Y nos salen todas las direcciones que ha dado el servidor DHCP, además de algo de información.

<img width="748" height="64" alt="image" src="https://github.com/user-attachments/assets/fe47d0d9-daeb-4c79-aa58-d716cd5b34fd" />

---

### Verificar que el servicio está funcionando

Para poder ver si el servidor esta funcionando o no, podemos ir a los servicios de Windows y buscar si el servidor DHCP este iniciado. 

<img width="218" height="34" alt="image" src="https://github.com/user-attachments/assets/fa81bd69-90b7-4d8a-9a19-c63a2cd51ff6" />

↓

<img width="474" height="351" alt="image" src="https://github.com/user-attachments/assets/cdd08c04-bc59-46e5-a3eb-546ffe9894a9" />

### Comprobar el LOG

Para ver el LOG del servidor DHCP, tenemos que buscar el archivo **DhcpSrvLog-Lun**, el cual se encuentra en la ruta **C:\Windows\System32\dhcp**

<img width="625" height="254" alt="image" src="https://github.com/user-attachments/assets/828953a7-e014-4bba-ab33-8d553e795f3f" />

Abrimos el archivo y vemos lo siguiente.

<img width="823" height="525" alt="image" src="https://github.com/user-attachments/assets/04d3aa9c-ed22-4401-9217-dfdcc83560e7" />

### Comprobar las estadísticas

Para ver las estadísticas del servidor, vamos a **IPv4>clic derecho>Mostrar estadísticas**.

<img width="244" height="46" alt="image" src="https://github.com/user-attachments/assets/6694c341-29aa-4f83-b534-ccd54ce12602" />

Y podemos ver información como el tiempo que lleva activo el servidor, el nº de solicitudes, el nº de ámbitos, el nº de direcciones disponibles etc. 

<img width="505" height="310" alt="image" src="https://github.com/user-attachments/assets/983dad69-2cb4-412f-9a1b-a82636f5a70c" />

### Limitar el tiempo de concesión a 3 minutos. Antes y después de que transcurra dicho tiempo, actualizar el ámbito y observar qué ocurre con las concesiones. 

En las propiedades del ámbito, podemos modificar algunos datos, uno de ellos es el tiempo de concesión. Como dijimos anteriormente, el tiempo por defecto es de 8 días, pero ahora lo vamos a cambiar a un máximo de 3 minutos. 

<img width="590" height="397" alt="image" src="https://github.com/user-attachments/assets/bcfe602e-57ed-4a55-bd5b-9a5eec8bb5a9" />

Como tenemos las 2 máquinas con una IP dada, con una fecha de concesión de 8 días, vamos a liberar una de las IP, para que ahora, la máquina pida otra y el tiempo máximo de concesión sea de 3 minutos.

<img width="445" height="77" alt="image" src="https://github.com/user-attachments/assets/5b7845b6-7e2d-498a-95aa-546e9ce321f8" />

Cuando pasa el tiempo de concesión, el equipo pide de nuevo una IP al servidor, el cual le vuelve a dar una. 

<img width="432" height="70" alt="image" src="https://github.com/user-attachments/assets/4621c963-58a5-4bcb-a552-1233c8cab276" />

### Detener el servidor DHCP. Tras ello en el cliente XP, liberar la IP y tras ello renovarla y observar qué ocurre

Ahora, vamos a detener el servidor DHCP y ver que pasa con la IP de W7. 

<img width="294" height="77" alt="image" src="https://github.com/user-attachments/assets/cebf7802-8403-4cda-aee6-0109065fe939" />

Liberamos la IP de W7 con un 

```BASH
ipconfig /release
```
vemos la configuración del adaptador volviendola a pedir con un 

```bash
ipconfig /renew.
```

<img width="658" height="248" alt="image" src="https://github.com/user-attachments/assets/d7e0fc47-3f8a-4c26-b4a0-5f00b2f7eaef" />

Al pedirla, como el servidor DHCP no esta activo, el equipo se pondrá una APIPA

<img width="631" height="176" alt="image" src="https://github.com/user-attachments/assets/eb848f1e-556a-42c7-ade2-15aed5c7a60f" />

### Repite los dos últimos apartados instalando un analizador de protocolo que permita visualizar los mensajes entre cliente y servidor.  

Repetiremos los 2 últimos puntos, pero con el programa **Wireshark** haciendo una captura del tráfico que va por el puerto **UDP 67** (el que usa el servidor DHCP) para ver los mensajes que se transmiten. 

Iniciamos la captura, con el filtro aplicándose al puerto UDP 67 en el interfaz de red interna.

<img width="251" height="175" alt="image" src="https://github.com/user-attachments/assets/82a43a7c-c4c9-4519-b053-941c80c6e7fb" />

En el punto nº9, lo que teníamos que hacer era cambiar la duración de la concesión de la dirección a 3 minutos. 
Volvemos a configurarlo y en W7, para que se aplique esta nueva duración de concesión, tenemos que liberar y renovar la IP.


**Mensajes que se han transmitido durante la liberación de la IP**

<img width="384" height="30" alt="image" src="https://github.com/user-attachments/assets/f6b98af5-8789-4876-a690-e63d3e69ce9f" />
↓

<img width="667" height="70" alt="image" src="https://github.com/user-attachments/assets/a684bfd5-29ac-40b3-b612-a073a3828834" />

**Mensajes que se han transmitido durante la renovación de la IP**

<img width="373" height="29" alt="image" src="https://github.com/user-attachments/assets/dfcd5d49-7bd2-4eae-8460-c81b55c948be" />

↓

<img width="667" height="84" alt="image" src="https://github.com/user-attachments/assets/59af0474-8f23-4941-af05-bbef0c30d94e" />

---

<img width="428" height="31" alt="image" src="https://github.com/user-attachments/assets/924b1873-ebc5-4dea-83de-1fbda48965fc" />

**Tiempo límite para la nueva concesión de la IP **

Cuando se acaba el tiempo de concesión, el W7 le pide la renovación de los parámetros y el servidor se los acepta.

<img width="884" height="40" alt="image" src="https://github.com/user-attachments/assets/57c2ec46-f6dc-497d-b8ba-711551946c77" />

Y por último, tenemos que detener el servidor DHCP, liberar y renovar otra vez la IP en W7 y ver los mensajes que manda el cliente al servidor. 
Para detener el servidor DHCP, vamos a Servicios>Servidor DHCP y lo detenemos. 

<img width="263" height="79" alt="image" src="https://github.com/user-attachments/assets/b2bfd883-8f1e-4fde-9acd-01234e61fd20" />

Una vez detenido, el cliente le manda mensajes DHCP Request al servidor todo el rato, pero sin respuesta por parte de este. 

<img width="793" height="54" alt="image" src="https://github.com/user-attachments/assets/7bc4e22b-0795-4547-8fcf-95687f3a1d60" />

Si liberamos la IP del W7 y intentamos renovarla, este mandara mensajes de DHCP Discover, buscando un servidor que le de una IP. 

<img width="787" height="71" alt="image" src="https://github.com/user-attachments/assets/b0bb46ed-9fa1-4e59-a635-b4daeff5b46d" />

### Confrontarlo con el LOG del servidor 

Si comparamos el tráfico capturado por Wireshark con el LOG del servidor, veremos que nos proporcionan la misma información, pero con un formato distinto. 

En los mensajes de Wireshark podemos ver la IP del equipo que manda el mensaje y la IP  del equipo de quien la recibe, además de que vemos el mensaje DHCP que se manda, que esto es la única dificultad que abría al entender el mensaje debido a que  tenemos que saber cuáles son y el significado de los mensajes DHCP.

<img width="668" height="326" alt="image" src="https://github.com/user-attachments/assets/7b2f06aa-ca9e-4e44-9867-d573b370b4d5" />

En cambio, en el log, podemos ver la fecha, hora, descripción, la IP y el nombre del equipo que mando el mensaje

<img width="667" height="328" alt="image" src="https://github.com/user-attachments/assets/b1952d21-d168-4242-8176-0198614f5cd4" />













