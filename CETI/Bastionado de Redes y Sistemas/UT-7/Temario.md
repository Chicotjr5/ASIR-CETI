## Reducción del número de servicios

Para ver los servicios en Windows, se usa 
- Services.msc
Y en Linux
- systemctl list-unit-files

### Telnet

- Protocolo que permite hacer una conexión cli-serv 
- Permite ejecutar comandos en el servidor
- Puerto 23/TCP
- Interactúa con protocolos de aplicación
	- SMTP - 25/TCP
	- HTTP - 80/TCP
- Las transmisiones se realizan sin cifrar
- Lo mejor es no tenerlo y usar SSH o SFTP

### RSSH

Shell restringido para usarse con
- SCP
- SFTP

Incluye soporte de paquetes rdist, rsync y cvs
Si la política de seguridad de la empresa permite transferir archivos, pero no por consola, 
se podrán transferir por este protocolo.

**Recomendaciones de seguridad**
- Mínimos privilegios a la hora de acceder a la máquina
- Incluir un certificado digital
- Limitar el nº de intentos de conexión
- No usar SSHI
- Políticas de acceso
- Algoritmos de cifrado robustos

### TFTP - Trivial File Transfer Protocol

Protocolo de transferencia de archivos similar a FTP
Esta pensado para la transferencia de archivos pequeños y usa el puerto 69/UDP.

La transferencia se realiza bloque por bloque y esta se dará por finalizada cuando se transmita un bloque de un tamaño menor al establecido.
No hay un rol de Cli-serv, el equipo que este a la escucha del puerto 69/UDP será el servidor.


## Hardening de procesos

Antes e poner en producción un equipo , se han de tomar una serie de acciones sobre este:
- Eliminar usuarios por defecto
- Modificar contraseñas por defecto
- Activar logs del sistema
- Asignar la gestión de usuarios por privilegios heredados a través de roles y grupos.
- Programar apagados del equipo
- Implementar Antimalware en el equipo.
- Realizar actualizaciones automáticas de las aplicaciones.


Microsoft dispone de 2 herramientas que recopilan eventos:

**Procmon**
Monitoriza
- Procesos
- Hilos
- Logs
- Archivos
**TCPview**
Monitoriza
- Conexiones E/S
- Procesos asociados a las conexiones E/S

### ASLR
Técnica que evita la explotación de vulnerabilidades usando la memoria.
Un atacante podría cambiar una dirección de memoria y explotar una vulnerabilidad.

### DEP - Prevención de ejecución de datos

Tecnología integrada en Windows cuyo objetivo es protegerse del inicio del código malicioso desde lugares donde no se espera la ejecución de ese código.

Se marcan zonas de memoria como zonas de memoria exclusivas, así no se permitirá la ejecución de código en esas áreas de memoria.


### Contenedores/Sandbox

Tecnologías que permiten crear entornos de pruebas con un mayor control sobre fallos.
**Tecnologías**
- Docker
- Flatpak
- LXC
- Firejail

**SUID**
Set Owner User ID up on Execution

Tipo especial de permisos de archivos.
Al ejecutar un programa, este hereda los permisos de acceso del usuario y SUID definirá como se otorgarán esos permisos temporales a un usuarios para ejecutar el programa con los permisos del propietario, en lugar del usuario que lo ejecuta.

## Eliminación de protocolos de red innecesarios

#### ICMP
El protocolo ICMP usa la capa 3.

##### Mensajes comunes

- Confirmación de host
- Destino o servicio inaccesible
- Tiempo excedido
- Redireccionamiento de ruta

Este protocolo solo se usa para ver si un equipo esta en una red o no.
Es un protocolo peligroso, ya que no necesita ningún tipo de autenticación y los atacantes pueden realizar DDoS o desbordamiento de ping.


## Securizar los sistemas de administración remota

**Vulnerabilidades**
- Credenciales débiles
- Acceso a puertos sin restricciones

**Medidas**
- Autenticación multifactorial
- Definir el nivel de acceso
- Bloquear puerto 3389 - Conexiones RDP
- FW
- Lista negra/blanca

Estas son medidas en una infraestructura cli/ser, las medidas a nivel corporativo:

**Nivel de seguridad alto**
- Acceso a los sistemas a través de VDI
**Nivel de seguridad medio**
- Acceso con RDP
**Nivel de seguridad bajo**
- Acceso al puesto de trabajo en la infraestructura

### Sistemas de prevención y protección frente a virus e intrusiones

### HIDS

Sistemas de detecciones de intrusiones en host.
Similar a un IDS, pero contiene agentes que envían información de lo que ocurre al servidor para analizarla en búsqueda de incidentes.

#### HIPS
Complemento de HIDS que busca actividades sospechosas en apps y servicios.
Basa su efectividad en conocer el comportamiento del malware conociendo su código.

Si un usuario realiza x cambios, HIPS podría bloquearlo, dando un falso positivo.

## Configuración de actualizaciones y parches automáticos

**Arquitectura distribuida**
- Los equipos se actualizan de forma independiente 
- Habitual en redes pequeñas
**Arquitectura centralizada**
- Un servidor gestiona las actualizaciones
- Con políticas de grupos, se puede establecer una serie de reglas para que las actualizaciones sean transparentes parea los usuarios.

A la hora de bastionar, habrá que realizar escaneos de la infraestructura para ver si existen vulnerabilidades o no.

**Herramientas**
- Nessus
- OpenVAS

## Sistemas de copias de seguridad

**Políticas de copias de seguridad**
- Contenido a transferir
- Destino final de la copia
- Frecuencia de las copias
- Centralización del proceso de copias

**Tipos de copias**
- Copia de archivos
	- Se copian los archivos tal cual están en el sistema
- Copia de imágenes
	- Copias de particiones o discos
	- Se realizan bit a bit

## Shadow IT y políticas de seguridad en SaaS

Shadow IT es cunado usuarios implementan aplicaciones conectadas a las nube (sin querer).
No significa que sea malo, pero los admins deberían de saberlo, para poder evaluar esa aplicación.

Para poder mitigar estos riesgos:
- NAC
- Control de software instalado
- Servicios centralizados sobre control de configuración

---
### Políticas de seguridad:

- No autorizar la descarga de ejecutables ni acceso a sus páginas
- Revisar apps instaladas y eliminar las sospechosas
- Al eliminar archivos maliciosos, revisar si queda algún tipo de malware
- Concienciar a los usuarios

Al dejar de usar un programa que ya no tiene soporte, se deberá:

- Desinstalar de todos los equipos
- Eliminar 
	- Protocolos
	- Puertos
	- Normas que use
- Destruir dispositivos que tuvieran información
- Si al app tiene datos ilegibles por otra app, reconvertirlos a un formato
- comprensible por otras apps.

---
### Nube
En el caso de seguridad en nube, se usa la matriz RACI:
- Responsables
- Autoridad
- Consultores
- Informadores

La responsabilidad de mantener un sistema de copias de seguridad recaerá sobre el proveedor de los servicios.

**Medidas de seguridad de las copias**
- Tiempo re retención
- Cifrado
- Procedimiento en caso de recuperación
- Simulacros de recuperación
- Fiabilidad de las copias
- Etiquetado de las copias
