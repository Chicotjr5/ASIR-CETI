## Gestión de credenciales

Las credenciales son esenciales para poder acceder a aplicaciones, información, recursos en red etc, en un SO así que es nuestro deber protegerlos debidamente.
Solo los usuarios con mayores privilegios deberían de poder acceder a estas credenciales

### Windows

#### Credenciales Web
A partir de W8 las credenciales web de Microsoft Edge se almacenan en el almacén de Windows.
Ninguna otro navegador usa este almacén.

#### Credenciales de Windows

Se almacenan:
- Contraseñas
- Usuarios
- Certificados

Este almacén de credenciales se encuentra cifrado aunque hay programas internos que pueden acceder sin ningún problema y herramientas como **Network Password Recovery** permiten verlas.

Se debe valorar si es necesario guardar credenciales en este almacén debido a que si un virus infecta el PC y escala privilegios, verá esas credenciales.

Para evitar esto, se usan sistemas **Data Diode** 
Un sistema **Data Diode** se instala entre 2 redes, una de mayor seguridad que la otra permitiendo que la información vaya de la red de alta a baja seguridad, pero nunca en viceversa.


La ubicación del almacén de credenciales depende de si el usuario forma parte de un dominio o no

**Si no** 
- %localappdata%\Microsoft\Vault
**Si si**
- %appdata%\Microsoft\Vault

### Linux

En Linux no hay ningún gestor por defecto, en su lugar está el paquete **passwordsafe**

Las credenciales se almacenan en un directorio **.pwsafe** con las extensiones **.psafe3** y **.plk**

El único problema de este sistema, es que de se depende de un programa y si no se conoce el algoritmo de seguridad que se utiliza, no se puede extraer esa información.


### Infraestructura de clave pública

Conjunto de 
- Equipos 
- Servicios
- Procedimientos cuya función principal es la de 
	- Crear
	- Administrar
	- Almacenar
	- Gestionar la
		- Generación
		- Exportación
		- Validación de certificados digitales

Para poder hacer esto, la infraestructura necesita un nivel de confianza público (reconocido en cualquier parte del mundo) o privada (reconocida en la organización).

Esto permite a los usuarios autenticarse o reconocerse distinguiendose de otros o pueden usar claves públicas de otros usuarios para 
- Cifrar/descifrar archivos
- Firmar documentos garantizando el **no repudio**

**Usos de los sistemas PKI**

- Cifrado / autenticación de mensajes de correo
- Cifrado / autenticación de documentos
- Autenticación de usuarios
- No repudio
- Bootstraping de protocolos seguros

### Infraestructura PKI

Para mantener una infraestructura, esta deberá de estar integrada por los siguientes componentes

**Autoridad de certificación - CA** 
Componente de confianza emisor de los certificados

**Autoridad de registro**
Actúa de intermediario entre el usuario y la CA para expedir o revocar los certificados

**Repositorios**
Almacenan información relativa al PKI .
Repositorio de certificados y las listas de revocación de certificados (CRL)

**Autoridad de validación**
Administra la lista de los certificados caducados y revocados
 
**Autoridad de sellado de tiempo**
Es la encargada de firmar los documentos electrónicos con el objetivo de dejar constancia de la existencia de esos documentos y que no han sido alterados (integridad).

**Entidades finales**
Con claves públicas y privadas, además de un certificado asociado a su PuK podrán usar apps que requieran por seguridad estos elementos.


#### Diferencias entre PKI y SSL

SSL usa una PKI por loq ue neecsita de una CA que emita certificados y que los navegadores lo roconbozcan


### Certificados digitales

Documento cuya finalidad es crear un vínculo entre la identidad de un sujeto y una clave pública
Esta garantía la proporciona un CA.

Para la generación de los certificados se usa el estándar X.509 y está basado en la norma RFC5280

 **Tipos de certificados** 

- Personal 
	- Identifica a una persona
- Como miembro de empresa
	- Vincula una persona a una organización
- Como persona jurídica
	- Confirma la identidad legal de una entidad
- De atributo
	- Aporta información adicional sobre una persona / entidad
- De servidor seguro
	- Garanbtiza la seguridad de un servidor web
- De firma de código
	- Verifica la integridad de software y apps

**Funciones de los certificados**

- Autenticar
- Firma digital
- Cifrado

**Propiedades**

- Confidencialidad
- Caducidad
- Integridad
- No repudio
- No reenvio
- Autenticación

### Acceso por firma electrónica

Es el equivalente digital de la firma manual
Se pueden considerar firmar electrónicas
- Biometrícas
- Realizadas con un lapiz electronico
- Identificación usuario:contraseña
- Firma con tarjeta de coordenadas

### Gestión de accesos y sistemas NAC

NAC - Control de acceso a la red
**Funciones** 
- Asegurar los nodos que compondrán la red antes de que los clientes accedan a ella
- Corregir nodos que no cumplan con las políticas de acceso a la red

Otra cosa que hay que hacer es aplicar políticas de acceso, las cuales se llevarán a cabo en las siguientes fases:

- Preadmisión
	- Se evaluan las políticas en el usuario final
- Postadmisión
	- Se realizan controles

**Objetivos de estos sistemas**

- Reducir y mitigar ataques de día 0
- Reforzar las políticas de la organización

### Gestión de las cuentas privilegiadas

La mayoría de ataques van dirigidos a la obtención de credenciales de acceso y gestión, por lo que las brechas de seguridad se centran en obtener ususario:contraseña. Estas contraseñas pueden no detectarse hasta meses después.

**Problemas**
- Gestión manual de cuentas privilegiadas
- Falta de formación de empleados
- Falta de implementación de una política de minimización de riesgos
- No proteger las contraseñas de las cuentas privilegiadas


#### Soluciones PAM
PAM - Privileged Access Management

Conjunto de herrmeintas tecnológicas diseñadas para gestionar las cuentas privilegiadas de las organizaciones y así evitar problemas.

Estas herramientas acotan  los permisos de las cuentas privilegiadas, garantizando que accedan solo a los recursos a los que deben acceder, además de que realizaran un seguimiento.

Este seguimiento también lo tienen los servidores y se llaman logs


### Protocolos 

#### Radius
Remote Authentication Dial-In User Service

Protocolo de autenticación y autorización para aplicaciones de acceso a la red.
Se basa en un modelo cliente - servidor donde un servidor RADIUS central autentica y autoriza a los usuarios que intentan acceder a la red.

RADIUS ofrece una amplia gama de opciones de autenticación:
- Contraseñas
- Tokens
- Certificados digitales

Permite un acceso granular a los recursos en función de
- Usuario
- Hora
- Ubicacion etc

Trabaja en el modelo TCP/IP capa 3 usando el protocolo UDP y el puerto 1812

#### TACACS+

Terminal Access Controller Access Control System

Sistema de control de acceso mediante terminales.
Es un protocolo de autenticación y autorización remoto más robusto y seguro que RADIUS.
También se basa en un modelo cliente-servidor y permite más opciones de autenticación.

Tacacs+ es más seguro ya que cifra la autenticación y autorización durante la transmisión
Usa el puerto 49 TCP/UDP

#### Kerberos

Protocolo fundamental para la seguridad en las redes informáticas, sobre todo en entornos cliente - servidor.

Permite que los equipos se comuniquen de forma segura a través de internet, incluso si la red no es segura.
Funciona mediante un 3º de confianza - KDC - Centro de Distribución de Claves

**Proceso:**

- El cliente solicita al AS un ticket de concesión de tickets que acredita su indentidad
- El cliente presente le TGT al TGS para solicitar un ticket kerberos para x servicio específico
- El cliente envía el ticket Kerberos al servidor para demostrar su autorización 

Kerberos usa el puerto 88 UDP


**Peligros**
- Pass the ticket
	- Se obtiene el ticket del usuarrio para obtener acceso a los recursos a los que el usuario tiene acceso
- Overpass the hash
	- Se usa el hash del usuario para suplantarlo
- Fuerza bruta


#### PAM

Módulos de Autenticación Conectables

PAM proporciona mecanismos independientes al desarrollo de programas o apps con el fin de integrar la aplicación como sistema de autenticación sin preocuparse de como se realiza.


Para ello, dispone de módulos que permiten parametrizar los datos necesarios para obtener una respuesta de validación de las credenciales del usuario, por lo que será positiva si las credenciales son validad o negativas si no lo son.

En Debian existe el directorio /etc/pam.d donde se encuentran los parámetros de configuración usados.


Un inconveniente de PAM es la estructura de este tipo de acceso.
Si el gestor de arranque no tiene un sistema de autenticación, un intruso puede meter un live cd y alterar las credenciales.
