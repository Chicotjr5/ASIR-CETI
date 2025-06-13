<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Reconocimiento](#reconocimiento)
 - [Escaneo](#escaneo)
 - [Obtener acceso](#obtener-acceso)
 - [Ataque](#ataque)
 - [Limpiar rastro](#limpiar-rastro)
 - [Como protegerse](#como-protegerse)
</details>

---

## Introducción

En esta práctica se va a realziar un ataque a un equipo vulnerable a **eternalblue**

Esta fue una vulnerbalidad descubierta por la [NSA](https://es.wikipedia.org/wiki/Agencia_de_Seguridad_Nacional) la cual no notificaron a Microsoft.
Años después de descubrirla, la NSA fue atacada por **Shadow Brokers** un grupo de ciberdelincuentes que filtró y uso la vulnerabilidad para atacar los equipos afectados por esta vulnerabilidad.

Esta vulnerabilidad afecta a SMBv1.

En el siguiente enlace hay más información sobre eternalblue: [Etenalblue](https://www.avast.com/es-es/c-eternalblue)

Esta práctica tiene un procedimiento similar a las que se encuentran en **Hacking ético**.

---

### Reconocimiento

Antes de empezar, veré a ver quiénes somos: 
Visualizo con que usuario vamos a realizar las acciones y que IP estamos usando. 
Para ello, uso los comandos:

```bash
whoami
ip a
```

![image](https://github.com/user-attachments/assets/f664f24c-d9e8-4127-9297-e2f942d484a8)

Soy el usuario **root** y estamos usando la IP **10.0.2.4/24** que se encuentra dentro de la red 10.0.2.0/24.

Voy a hacer un escaneo de la red, para ver que equipos están conectados. 
Usaré el comando:

```bash
netdiscover -r 10.0.2.0/24.  
```

![image](https://github.com/user-attachments/assets/8decb578-a86d-476f-a1f6-325c10b34d1c)

Las 3 primeras ip que se ven, son el Gateway, DNS y DHCP de la propia red virtual de VirtualBox, mientras que la IP 10.0.2.6 pertenece al equipo objetivo.

Lanzo un ping a esa máquina para ver si puedo conectarme con ella.

```bash
ping 10.0.2.6 -c2
```

![1 3](https://github.com/user-attachments/assets/bc900b3c-e2dc-4490-81c4-ee03d4b367c2)

---

### Escaneo

Una vez probada la conexión con el objetivo, empezará la fase de escaneo, donde se intentará encontrar vulnerabilidades a explotar. 
Para ver los puertos abiertos que tiene un equipo, se usará la herramienta nmap, más concretamente, la siguiente línea de comando: 

```bash
nmap 10.0.2.6 -Pn -n
```

![2 1](https://github.com/user-attachments/assets/f691b504-8b5b-45cc-ab66-970d51a8831b)

Se observan 10 puertos / servicios abiertos. 
El **puerto objetivo es  el puerto 445, el cual lo usa el servicio smb**, este es un protocolo de uso compartido de archivos de red, comúnmente usado por los ordenadores para comunicarse con impresoras (también se usa para compartir archivos entre equipos).

Seguiremos con **nmap**, ahora ejecutando el siguiente comando:

```bash
nmap 10.0.2.6 -Pn -n -p445 -A
```

![image](https://github.com/user-attachments/assets/27ff2eb1-66bd-4e3b-be63-e9e6995ffb1d)


La información obtenida es la siguiente:

**Versión del sistema operativo**
- Windows 7 SP1

**Saltos de red**
- 1 salto

**Workgroup**
- MATRIX

**Nombre del equipo**
- sion

**Nombre de dominio**
- matrix.local
  - Esto nos indica que no esta dentro de un dominio
 
**Nombre del bosque**
- matrix.local
  - Esto nos indica que no esta dentro de un bosque
 
**Nivel de autenticación del usuario**
- usuario

Nmap tiene scripts **(/usr/share/nmap/scripts)** los cuales se pueden usar para buscar información específica. 

El script **smb-os-discover.nse** muestra información de un sistema a través del protocolo smb.

![2 3](https://github.com/user-attachments/assets/2ec050a5-a2d7-4129-ba7d-61b382edb80c)


Otro script es **smb2.security-mode.nse** el cual muestra la versión del servicio smb.

![2 4](https://github.com/user-attachments/assets/4483b3a4-1455-4d6f-ac0c-a3d262b1653d)


Otro script es  **smb2.security-mode.nse** el cual muestra la versión del servicio smb.

![2 4](https://github.com/user-attachments/assets/7787965f-8bbc-4acf-a37b-83238a2ce761)


Para terminar con esta fase, se ejecuta el comando:
```bash
crackmapexec smb  10.0.2.6. 
```
Este comando sin ningún argumento intentará conectarse al servicio smb en el equipo 10.0.2.6, proporcionando información del sistema.

![2 5](https://github.com/user-attachments/assets/7c1716d8-c141-4e48-a482-74485b704cde)

Se ha visto que la versión de smb es la 2.1la cual cuenta con bastantes [vulnerabilidades](https://support.microsoft.com/es-es/topic/ms17-010-actualizaci%C3%B3n-de-seguridad-para-windows-server-de-smb-14-de-marzo-de-2017-435c22fb-5f9b-f0b3-3c4b-b605f4e6a655).

---

### Obtener acceso

Ya con toda la información recopilada, podemos obtener acceso al equipo.
Lo primero será realizar un ataque de fuerza bruta, así que creo un diccionario con difernetes contraseñas:

![image](https://github.com/user-attachments/assets/e31503dd-866c-45ba-a7ab-12d1067e5c36)

Ya con el archivo de contraseñas listo, se procede a realizar el ataque de fuerza bruta. 
Se usará el siguiente comando:

```bash
medusa -h 10.0.2.6 -u amadapa -P dicci.txt -M smbnt
```

- medusa es la herramienta con la que se va a realizar el ataque.
- -h 10.0.2.6 es le host que va a ser atacado.
- -u amadapa es el usuario que va a ser vulnerado.
- -P dicci.txt es el diccionario de contraseñas que he creado.
- -M smbnt es el servicio mediante el cual se va a realizar el ataque.

Se ejecuta el comando y se ve como ha encontrado las credenciales: 
amadapa:amadapa.

![image](https://github.com/user-attachments/assets/d11227d6-a6db-44cf-970a-dcef5fc885b2)

Ya con las credenciales del usuario en nuestro poder, se va a explotar la vulnerabilidad. 
Se usará Metasploit la cual es una herramienta usada para descubrir y explotar vulnerabilidades. 
Se usa mucho en auditorias y pruebas de pentesting. 
Para ejecutarlo, ponemos **mfsconsole** en la línea de comandos.

```bash
msfconsole
```

Una vez iniciado, ejecuto el comando **search ms17-010** que lo que hace es buscar todos los módulos relacionados con esa vulnerabilidad. 

```bash
search ms17-010
```

![image](https://github.com/user-attachments/assets/0f09515f-34a6-4f52-ae0c-de3fc9655a54)


En este caso, usaré el primer módulo:

![3 4](https://github.com/user-attachments/assets/4e091a6a-d807-48d5-b5eb-ecaeee8ca5e3)


Ya usando el módulo, veré la forma en la que se configura con un show options.

![3 5](https://github.com/user-attachments/assets/e8d5ba01-94d6-4aed-8baf-fd99917415e9)


El único parámetro obligatorio que falta es **rhosts**. 
Con este parámetro le indicamos el objetivo al que vamos a atacar.

![3 6](https://github.com/user-attachments/assets/538d8435-4cbd-499a-b3e7-947510555a7d)


Ya está todo listo para lanzar el ataque, pero antes, con el comando check se puede visualizar si el ataque va a ser exitoso o no. 
En este caso, sí. 

![image](https://github.com/user-attachments/assets/52c14417-b373-4ecd-9d8e-7978f2b350a2)

Con todo listo, se lanza el ataque: 

![image](https://github.com/user-attachments/assets/9f5a9de7-be2b-4687-8866-61342e22b9f7)

Se ha abierto una sesión, por lo que estoy conectado al equipo:

![3 10_shell_inversa](https://github.com/user-attachments/assets/9033469e-6a53-4992-8bd8-f92b079c8076)

Ejecutando un **?** se pueden ver los comandos y acciones que se pueden realizar, por ejemplo, estas de aqui:

![3 12 1](https://github.com/user-attachments/assets/a0eda12b-9a41-4f33-805e-dfb89c4f3082)


---

### Ataque

Ya dentro del equipo, trasteo un poco y por ejemplo, veo el hash de las contraseñas de los usuarios:

![image](https://github.com/user-attachments/assets/14720183-9ffa-4d0f-96ba-13bc80050956)

Debido a la longitud del hash, se puede pensar que se trata de un MD5,  el cual es un algoritmo que ya ha sido roto. 
Cojo el hash del usuario amadapa y lo paso por un deshaseador, obteniendo como resultado su contraseña.

![3 13](https://github.com/user-attachments/assets/44df8dfd-aa4c-4f6d-bc19-98aea0ae40e1)

Otra cosa que se podría hacer es conectarse a la consola de comandos del equipo vulnerado y ejecutar comandos desde allí. 

Se hace con el comando **shell**.

![image](https://github.com/user-attachments/assets/eb694a00-1425-44e0-96da-7b23f7851b0d)

Ya conectado, puedo ejecutar cualquier comando de Windows. 
Puedo crear nuevos usuarios, nuevos archivos, nuevos directorios, borrarlos, cifrarlos, etc. 
Puedo cambiar contraseñas, cualquier cosa que se pueda hacer por comandos de Windows, lo puedo hacer. 
De momento voy a ser bueno y solo voy a ver que archivos tiene en el escritorio. 

![image](https://github.com/user-attachments/assets/5b03615a-14e1-47aa-8523-19d4cbd9de78)

Voy a dejar un archivo a nuestra víctima, para que sepa que ha sido hackeado. 

```bash
type null > Te_he_hackeado.txt
echo Has sido hackeado > Te_he_hackeado.txt
```

![image](https://github.com/user-attachments/assets/7601a2c6-0150-4017-b6bb-e6b8184d88b8)

---

### Limpiar rastro

Una vez realizado el ataque, no hay que dejar ningún tipo de rastro, así, cuando el usuario de la máquina se entere de lo que ha pasado, realizará un análisis forense e intentará descubrir quienes somos, como lo hemos hecho, cuando, desde donde 
etc.

Una forma de eliminar todo rastro que hayamos dejado es ejecutando el comando **clearev** que lo que hace, es eliminar los registros de eventos del sistema vulnerado.

```bash
clearev
```

![image](https://github.com/user-attachments/assets/4b24782f-ae3e-4f5e-a040-b10c7067f093)

---

### Como protegerse

El equipo al que he atacado era un Windows 7 sin el Firewall activado y sin actualizaciones:


![image](https://github.com/user-attachments/assets/9869afca-19bd-4672-9c47-aa610169bda0)

↓

![image](https://github.com/user-attachments/assets/36b9ee1c-0c05-4b8b-b74c-188e5c314dff)

Actualizando el equipo y activando el Firewall, el ataque ya no se puede realizar:

![image](https://github.com/user-attachments/assets/847c7405-f760-4177-b36b-23715df14a10)












