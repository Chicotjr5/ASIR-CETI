## Seguridad en BIOS - UEFI

Son los primeros programas que se ejecutan al arrancar el equipo y suele estar desarrollado por el propio fabricante del equipo - OEM - Original Equipment Manufacturer.

La UEFI añade nuevas funcionalidades como el acceso remoto, lo que es un nuevo vector de ataque.

La UEFI y BIOS realizan un proceso de inicio de carga de arranque, el cual consiste en:

- Comprobar el hardware del equipo - POST
	- RAM
	- Disco Duro
	- Periféricos
	- Si el POST detecta un problema, mostrara mensajes de error o pitará
- Iniciar el hardware
- Iniciar el SO

### Secuencia de arranque

#### UEFI

**Fase del SO**
- POST
- Se carga la UEFI
- información de arranque

**SO - Gestor de arranque**
- Lanzamiento del gestor de arranque del SO
- Lectura del archivo BCD
- Carga del núcleo del SO en memoria

**SO - Cargador de arranque**
- Carga del núcleo del SO
- Control de acceso al SO

#### BIOS
**Fase del SO**
- POST
- Búsqueda del dispositivo de arranque
- Cargar MBR en memoria
- Código de arranque del MBR
- Buscar y ejecutar bootmgr

---
### Como proteger la BIOS

- No dejar la configuración por defecto
- Ponerle una contraseña a la BIOS
	- Set User Password - Proteger BIOS
	- Password on Boot - Proteger acceso al equipo
	- Set Supervisor Password

- Si se retira la pila, se puede resetear la BIOS.

### Como proteger la UEFI
- Inhabilitar la selección de medio de arranque, junto con x medios de arranque
	- CD
	- PXE - Tarjetas de red
- Por defecto, la UEFI es más segura que la BIOS ya que no deja que se cargue software malicioso.

Aún con estas medidas de protección para la BIOS y la UEFI, no es suficiente, ya que un atacante con acceso al equipo podría quitar la pila y gg.

La mejor medida sería configurar el gestor de arranque, los cuales se encuentran en la NVRAM y se puede sobrescribir.

## Seguridad en el arranque del SO

Es muy complicado de gestionar, ya que ha de ser seguro y eficiente, además de no ser muy complicado para usuarios sin conocimientos técnicos.

#### Rootkit
Programa que permite a los ciberdelincuentes:
- Acceder y robar la información del equipo
- Mantener el equipo cautivo sin ser detectado

Los antivirus no son capaces de detectarlo, debido a que estos se ejecutan justo después del 
rootkit.

La única manera de eliminarlo es arrancar en Live CD con un antivirus.

Si se reinstala el SO, se deberá de realizar con un instalador diferente, usando un USB externo.



#### Gestor de arranque en Windows

Windows 10 y 11 cuentan con una partición de arranque que ocupa entre 100-300MB la cual se crea durante su instalación y se llama **Partición del sistema**.
Esta partición cuenta con archivos relacionados con el hardware del equipo y archivos con la configuración de arranque.

Esta especialmente protegida y solo puede haber una partición de este tipo en el disco, aunque existan varios SO.

Al iniciarse el PC el gestor de arranque se dirige a la partición, al sector de inicio, el cual contiene un código que localiza la partición arrancar y ejecutará el BOOTMGR y terminará de cargar el sistema, tomando de referencia los datos del archivo BCD.log

**BCD - Boot Configuration Data**
- Contiene parámetros de inicio.
- Controla el modo en que se inicia W10 y otros programas de Microsoft
- Para poder editarlo y verlo se usa la orden **bcdedit**


#### Gestor de arranque en Linux - Grub y Grub2

Al arrancar el sistema, se ejecuta un programa que permite elegir entre el siguiente código a ejecutar en el arranque, a través de un menú.

Es muy sencillo saltarse las credenciales de acceso al servidor
- Ejecución de comandos GNU básicos
- Acceso a una shell con root
- Arranque del sistema editando las líneas de la configuración

En GRUB2, aparece una pantalla con la opción de que SO arrancar.

## Seguridad de los sistemas de fichero


Windows dispone de Bitlocker para poder cifrar las particiones.
Para Linux y Mac tenemos VeraCrypt o LUKS

**Ventajas**
- El sistema no se ve afectado, todo se comportará de forma normal
- Se puede cifrar incluso el SO

**Desventajas**
- Se pierde rendimiento del equipo
- Riesgos de interceptación de claves por el boot hijhacking
- Si se pierde la clave de cifrado, cagamos

#### Borrado seguro

**Técnicas**
- Desmagnetización
	- Se pasa un imán sobre los dispositivos de almacenamiento
	- Solo funciona con HDD y cintas magnéticas
- Destrucción física
	- No hace falta que diga nada, no?
	- Desintegración
	- Trituración
- Sobreescritura
	- Se escriben datos sobre los datos ya existentes.

Una herramienta es DBAN que contiene diferentes algoritmos de borrado.
Gutmann Wipe realiza 35 pasadas por todo el disco.
