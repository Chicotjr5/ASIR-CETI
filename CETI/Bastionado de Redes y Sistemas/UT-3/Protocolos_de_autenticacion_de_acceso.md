## Índice

- [Introducción](#introducción)

- [KERBEROS](#kerberos)
  - [Explicación](#explicación)
  - [Proceso de autenticación](#proceso-de-autenticación)
  - [Riesgos asociados a Kerberos](#riesgos-asociados-a-kerberos)
  - [Preparación](#preparación)
  - [Instalación](#instalación)
  - [Configuración](#configuración)
  - [Cliente](#cliente)

- [RADIUS](#radius)
  - [Explicación](#explicación-1)
  - [Proceso de autenticación](#proceso-de-autenticación-1)
  - [Riesgos asociados a RADIUS](#riesgos-asociados-a-radius)
  - [Instalación](#instalación-1)
  - [Configuración](#configuración-1)
  - [Cliente](#cliente-1)



## Introducción

En esta práctica se van a tratar 2 protocolos y métodos de autenticación diferentes:

- Kerberos
- RADIUS

Se explicará teoricamente en que consiste cada uno, además de realizar un caso práctico con cada uno de ellos:

---

### KERBEROS
#### Explicación

Protocolo de autenticación de red diseñado para proporcionar una comunicación segura en entornos Cliente – Servidor. 
Esta basado en un modelo de “tercero de confianza” mediante el uso de un KDC (Centro de Distribución de Claves). 

Este consta de 2 componentes principales:

- **AS - Centro de autenticación**
	- Verifica la identidad del usuario
- **TGS - Servidor de Concesión de Tickets**
	- Emite un ticket de servicio si el usuario esta autorizado a acceder al servicio autorizado.

Este protocolo usa criptografía de clave simétrica para proteger las comunicaciones.

#### Proceso de autenticación

1. **Solicitud de TGT**
	1. El cliente solicita la AS un TGT (Ticket Granting Ticket) el cual acredita su integridad.
2. **Obtención de Ticket de Servicio**
	1. El cliente presenta el TGT al TGS para solicitar un ticket de Kerberos para el servicio específico que desea utilizar (SSH, FTP).
3. **Acceso al servicio**
	1. El cliente envía el ticket Kerberos al servidor de destino para demostrar su autorización y acceder al servicio.

Este Ticket de Kerberos tiene una vida limitada (la cual es configurable) que permite al cliente reutilizarlo para conectarse a un mismo servicio sin necesidad de autenticarse de nuevo.

#### Riesgos asociados a Kerberos

- **Pass The Ticket**
	- Consiste en obtener un ticket de usuario para acceder a los recursos a los que el usuario tiene autorización, permitiendo al atacante falsificar la clave de sesión y usar credenciales falsas.
- **Overpass the hash**
	- Usa el hash de la contraseña de un usuario para suplantarlo, permitiendo al atacante autenticarse sin saber la contraseña original
- **Ataques de fuerza bruta**
- **Degradación del cifrado**

---

#### Preparación
Para realizar la creación del servidor kerberos y del servidor Radius voy a usar 2 equipos Ubuntu, uno con la versión 18.04 y otro con la versión 24.04. 
El primer paso que hay que hacer es actualizar el equipo:

```bash
apt update -y && apt upgrade -y
```

![0 1](https://github.com/user-attachments/assets/ce1354f4-14ff-498b-b590-46eb9f6ff7c9)


El siguiente paso es configurar el fichero **/etc/hosts** en el servidor. 
Estableceré un nuevo dominio que se llamará **servidor.dominio.local** además de poner la IP del equipo cliente.

![1 1](https://github.com/user-attachments/assets/9001e10f-b373-49df-b683-1da2130d294c)


**En esta y en la siguiente captura se ve que el nombre es servidor.dominio.com ya que esta práctica la realice varias veces, así que la captura no la cambie**

---
#### Instalación

Con todo listo, instalo en el equipo Ubuntu 24.04 (que hará de servidor en ambos casos) el servidor Kerberos:

```bash
apt install krb5-kdc krb5-admin-server krb5-config -y
```

![1 3](https://github.com/user-attachments/assets/7d93a14d-e3d2-4ec0-8984-667f2a5aaa5e)


Nos saldrán varias pantalla de instalación, en estas deberemos de especificar la configuración que tendrá nuestro servidor. 
El primer paso es definir el reino Kerberos, que en mi caso será **DOMINIO.LOCAL** (la captura la realice en un punto anterior)

![1 4](https://github.com/user-attachments/assets/e1799505-d5f8-42c7-b797-2132e268c627)


Y ahora toca especificar los servidores que usará nuestro reino. 
En mi caso es solo uno – **servidor.dominio.local**

![1 5](https://github.com/user-attachments/assets/3718a86a-407e-40b0-9fb7-dc737888a036)


Además de esto, hay que definir el servidor administrativo (esto debido a que podríamos tener varios servidores, así que hay que especificar cual es el importante).
Como solo tengo uno, pues será ese mismo.

![1 6](https://github.com/user-attachments/assets/cb8bff78-c49f-4d29-b780-1a9e0868ec4c)


Para finalizar nos sale este mensaje, donde se nos describe que para configurar el servidor, hay que ejecutar el comando **krb5_newrealm**

![1 7](https://github.com/user-attachments/assets/7da6a0ed-142f-4d70-9f4e-6747cc85e3e5)


Ejecuto ese comando y me pide la contraseña maestra para la base de datos KDC.

![1 8](https://github.com/user-attachments/assets/5bf710c8-d654-4732-882c-fff69df0f65f)


----
#### Configuración

Para ver que se ha configurado todo correctamente reviso el archivo **/etc/krb5conf.**
Dentro de este archivo también salían reinos de ejemplo, así que los he borrado todos para que no molesten

![1 9 1](https://github.com/user-attachments/assets/a8cbe668-8221-4fbb-82e1-0bbbe08ee64b)


**(aqui tambien se ve el error del dominio.com)**

Para hacer que le cliente se pueda autenticar, creo un usuario con el comando:

```bash
kadmin.local
``` 
```bash
addprinc usuario1/admin
```

![1 12](https://github.com/user-attachments/assets/d1d99e62-a1e6-4f92-a43e-6a0fbaa3ea13)


Para que se guarden los cambios reinicio los servicios:

![1 13](https://github.com/user-attachments/assets/63e5e82f-0ddf-412c-a0d3-faef510ba179)


---

#### Cliente

En el cliente instalaré el paquete cliente de Kerberos:

```bash
apt install krb5-user
```

![2 1](https://github.com/user-attachments/assets/a3a34852-dcd9-4ad2-9fa2-910fb15995b9)


Al hacer la instalación vuelven a salir las pantallas para la configuración del reino:

![2 2](https://github.com/user-attachments/assets/8f4cf380-62b7-47c6-868e-50d1282d9af7)


↓

![2 3](https://github.com/user-attachments/assets/488a9944-eb95-447d-ab9a-c09d023f7dd2)


Se genera el archivo krb5.conf con la configuración bien puesta:

![2 4](https://github.com/user-attachments/assets/fc3bf0d9-326d-4f09-a87a-49e1b61f34e5)



Ahora para poder ver si el cliente se conecta con el servidor voy a solicitar un ticket del usuario “usuario1”

```bash
kinit usuario1@DOMINIO.COM
```

![2 6](https://github.com/user-attachments/assets/64c0ae3d-6fd1-4207-873e-a9137ef54285)


Y visualizo si el cliente tiene el ticket:

![2 7](https://github.com/user-attachments/assets/92e1bc09-2088-4714-98f7-f308c83f0451)


---

### RADIUS

#### Explicación

**Remote Authentication Dial-In User Service** 
Protocolo de autenticación, autorización y contabilidad (AAA) usado para gestionar le acceso a redes y servicios. 
Es empleado en redes empresariales, ISP y sistemas de acceso remoto.

RADIUS funciona mediante 3 componentes principales:

- Cliente RADIUS
	- Dispositivo de red (switch, router, AP) que enviar solicitudes de autenticación
- Servidor RADIUS
	- Valida las credenciales del usuario y determina los permisos de acceso
- Base de datos de Autenticación
	- Contiene credenciales y políticas de acceso


RADIUS usa los puertos UDP 1812 (autenticación) y UDP 1813 (contabilidad), además de que admite múltiples métodos de autenticación (PAP, CHAP, MS-CHAP, EAP).

#### Proceso de autenticación

1. Solicitud de acceso
	1. El cliente envía las credenciales del usuario la servidor
2. Verificación de credenciales
	1. El servidor compara esas credenciales con la base de datos de autenticación
3. Respuesta del servidor
	1. Si las credenciales son válidas, el servidor permite el acceso y envía las políticas de uso


---

#### Riesgos asociados a RADIUS

- Interceptación de credenciales 
- Ataques de fuerza bruta 
- Replay Attack 
	- Captura de la reutilización de paquetes de autenticación 
- MiTM 
- Configuraciones débiles 
	- Uso de claves débiles

Para mejorar la seguridad se recomienda el uso de EAP-TLS para una autenticación segura e implementar IPSec o TLS para el cifrado en la comunicación y una configuración correcta de las políticas de acceso.

---

#### Instalación

Como ya está el equipo actualizado, instalo directamente el paquete **freeradius**

```bash
apt install freeradius -y
```

![4 1](https://github.com/user-attachments/assets/d56e3d70-4dd8-4890-92dc-b6117b50fc32)


Una vez instalado compruebo el estado del servicio para ver que todo funciona perfectamente o no:

```bash
systemctl status freeradius
```


![4 2](https://github.com/user-attachments/assets/3e61283d-1d06-4bcf-9cfa-ac5ffe0fac5d)



---

#### Configuración

Edito el fichero **clients.conf:**

```bash
nano /etc/freeradius/3.0/clients.conf
```

![4 3](https://github.com/user-attachments/assets/ff1ba26f-6500-461a-aeed-543926dd5243)



Dentro de este fichero defino un nuevo cliente. 
Este cliente tendrá como contraseña alonso33

![4 4](https://github.com/user-attachments/assets/95ec9753-b8d9-4301-88f0-e1207501221b)


Al igual que defino un cliente dentro de **Freeradius**, he de definir un usuario para que el cliente pueda usarlo. 
Edito el fichero **/etc/freeradius/3.0/users** y creo al usuario usuario1 le cual tendrá por contraseña ubuntu18. 

Cuando se conecte, le saldrá el mensaje “Bienvenido usuario1”.

![4 5](https://github.com/user-attachments/assets/de8625d6-abc6-4d55-ba4a-ec4b555db62e)


Tras estos cambios reinicio el servicio de freeradius y compruebo que esté funcionando correctamente

```bash
systemctl restart freeradius
```
```bash
systemctl status freeradius
```

![4 6](https://github.com/user-attachments/assets/ce1b3dde-f3b6-41ce-b04a-0910aeb558d2)


---

#### Cliente

Para continuar instalo el paquete **libpam-radius-auth** en el cliente el cual me permite autenticar usuarios mediante **RADIUS** a través de **PAM**.

```bash
apt install libpam-radius-auth -y
```

![5 1](https://github.com/user-attachments/assets/55378ee1-5fe9-4149-a66c-476a37eabfb4)



Para configurarlo edito el fichero **/etc/pam_radius_auth.conf** y configuro el servidor a los que consultara el sistema a la hora de realizar la autenticación de los usuarios.

![5 2](https://github.com/user-attachments/assets/614f9a31-af71-4867-98b9-9a2bf3159c61)




También he de instalar el paquete **freeradius-utils** el cual me permite interactuar con un servidor Freeradius desde un terminal.

![5 3](https://github.com/user-attachments/assets/444b1dd3-3182-45be-a540-5a0daf47ebba)


Para comprobar la conexión entre cliente y usuario a través del usuario1 uso el siguiente comando:

```bash
radtest usuario1 alonso33 192.168.1.100 1812 alonso33
```

![5 4](https://github.com/user-attachments/assets/23894e09-b348-4b08-9821-1d6bf2881cc0)


Como se puede observar en la imagen se ha realizado la conexión de forma correcta y de hecho, sale el mensaje “Bienvenido, usuario1”

