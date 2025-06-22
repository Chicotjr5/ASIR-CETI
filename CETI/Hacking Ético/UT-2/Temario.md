Wifi es una tecnología de redes inalámbricas que permite a los dispositivos electrónicos conectarse entre sí a una red mediante frecuencias de radio.


Una gran cantidad de ataques a objetivos se realizan desde las conexiones wifi, ya sea de forma directa atacando a la wifi del objetivo o indirecta, usando una wifi externa para conseguir datos del objetivo (redes abiertas).

## Comunicación  inalámbrica

Los móviles tienen la funcionalidad de poder guardar la contraseña de acceso a un SSID sin pedir autorización para conectarse. Así, al llegar a esa red wifi, el móvil se conecta automáticamente.

Esta funcionalidad es muy práctica pero conlleva una serie de riesgos

- Si el móvil se conecta a la wifi de un restaurante cada vez que su usuario va, podemos saber a que días va, a que horas, el tiempo que está etc
- Un atacante puede levantar una red wifi con un SSID y contraseña conocida por el móvil de la victima. Cuando se conecte el móvil a la red, el tráfico que genera será visto por el atacante.
- Se puede trazar un mapa con la actividad del usuario.

### Estándar 802.11

Protocolo usado para especificar las normas de funcionamiento de las redes inalámbricas
**Estándares**
- 802.11a
	- 54 mbps
	- 5GHz
- 802.11b
	- 11Mbps
	- 2,4GHz
- 802.11g
	- 54Mbps
	- 2,4GHz
- 802.11e
	- Especifica los mecanismos en la capa "MAC".

### Wifi Certificado 7 basado en IEEE 802.11be

Facilitará la interoperabilidad mundial y brindará WIFI avanzado, mejorando el rendimiento de las redes WLAN en las bandas 2.4, 5 y 6 GHZ .

**Beneficios**
- Mayor rendimiento
- Soporte mejorado para la latencia
- Eficiencia mejorada
- Mayor robustez y confiabilidad
- Consumo de energía menor

#### Wifi 7 - IEEE 802.11be

Es la más reciente generación en la evolución de las normas de las redes inalámbricas

**Mejoras**
- Mayor velocidad
- Mayor ancho de banda
- Latencia reducida
- Mejor eficiencia
- Menos consumo de energía 
- Mayor confiabilidad
- Soporte  para aplicaciones de baja latencia y alta capacidad

**Características avanzadas de WIFI 7**

- Canales de 320 MHz
- Operación de Enlace Múltiple
	- Mejora el rendimiento al equilibrar el tráfico entre múltiples enlaces, reduciendo la latencia y mejorando la fiabilidad.
- 4K QAM

**Aplicaciones para WIFI 7**

WIFI 7 está diseñado para satisfacer las demandas de conectividad de tecnologías emergentes y de gran capacidad.
Es perfecto para tecnologías como AR/VR, IoT industrial y la computación en la nube.


## Modo infraestructura, ad-hoc y monitor

### Infraestructura
#### BSS

Estructura de red inalámbrica que cuenta con un **punto de acceso (AP)** WLAN como "corazón" de la red.
En este modo, los dispositivos se comunican el uno con el otro a través del punto de acceso y no lo hacen de forma directa (los unos con los otros).

El AP también puede actuar como un puente a una red cableada, donde los equipos inalámbricos también podrán comunicarse con los equipos de la red cableada.



#### ESS

Conjunto de BSS conectadas mediante un sistema de distribución.
Los AP se comunican entre sí para permitir que las estaciones puedan pasar de un BSS a otro sin perder la comunicación - **roaming**

Este sistema puede ser cableado o inalámbrico.




### Ad-Hoc

El modo AD-HOC (IBSS) también es conocido como modo "igual a igual".
Estas redes no requieren de un punto de acceso centralizado.
Si se configuran 2 equipos en modo inalámbrico Ad-Hoc estos se conectarían directamente entré si.

**Comandos:**
```bash
iwconfig <interfaz de red> mode ad-hoc
iwconfig <interfaz de red> channel <igual pa todos> 
iwconfig <interfaz de red> essid <igual pa todos>
```


### Monitor

Este modo permite a un ordenador con una interfaz de red inalámbrica ver el tráfico recibido en uno o varios canales inalámbricos.

El modo monitor captura paquetes sin estar asociados a un punto de acceso o a una red Ad-Hoc, mientras que el modo promiscuo no.

### Asociación y autenticación

Junto con la seguridad, la asociación y la autenticación son temas fundamentales para el entendimiento de las redes inalámbricas.
Cuando un cliente quiere conectarse a una WLAN se requieren una serie de pasos:

- Los AP transmiten "beacon frames" cada x tiempo
	Para asociarse con un AP y conectarse a una red BSS, el cliente busca esos "beacon frames" para identificar los AP
	O también puede enviar tramas "prove request" que contengan un ESSID en específico para ver si le responde el AP con el mismo ESSID
	
- Después de identificar al AP el cliente y el AP realizan una autenticación mutua.
  Entonces el cliente pasa a estar en estado **autenticado, pero no asociado**
   
- El cliente manda una trama "association request" y el AP responde con una trama "association response" y así el cliente se convierte en un host más de la red.

Además de que existen 2 herramientas que nos permiten estudiar los paquetes 802.11:

- Ethereal
	- Analizador de protocolos de redes para Windows y Linux
- Aircrack
	- Colección de herramientas para la auditoría de redes inalámbricas


## Análisis y recolección de datos en redes inalámbricas

### OWISAM Open Wireless Security Assesment Methodology

- **Descubrimiento de dispositivos**
	- Identificar los AP y estaciones activos
- **Fingerprinting**
	- Recopilar información sobre los dispositivos
		- Marcas
		- Modelos
		- Versiones de firmware
		- Configuraciones
- **Pruebas de autenticación**
	- Verificar la robustez de los métodos de autenticación implementados (WPA2)
- **Cifrado de las comunicaciones**
	- Evaluar los algoritmos de cifrado usados y comprobar si hay vulnerabilidades
- **Configuraciones de la plataforma**
	- Inspeccionar la configuración general del AP y sus dispositivos conectados
- **Pruebas de la infraestructura**
	- Evaluar la red subyacente (VLAN, Firewalls, RADIUS) para detectar configuraciones inseguras
- **Pruebas de DoS**
	- Simular ataques que intenten interrumpir la disponibilidad de la red
- **Pruebas de directivas y normativas**
	- Comprobar si las políticas de seguridad cumplen con los estándares y con las normas aplicables
- **Pruebas de los clientes inalámbricos**
	- Evaluar la seguridad de los dispositivos conectados a la red para detectar configuraciones poco seguras o vulnerabilidades
- **Pruebas de hotspot**
	- Analizar la seguridad de los AP públicos y las interfaces utiilizadas para la autenticación en portales cautivos.

### Herramientas para el análisis y recolección de datos

**Airodump-ng**

- **Captura de paquetes inalámbricos**
	- Capaz de monitorizar redes WIFI y capturar tráfico, lo que nos permite analizar la actividad de una red o realizar ataques específicos (recuperación de contraseñas)
- **Identificación de los AP y clientes conectados**
	- La herramientas muestra información como el ESSID, el BSSID, tipo de cifrado, N.º de clientes conectados y canal utilizado
- **Compatibilidad con receptores GPS**
	- Airodump-ng puede registrar las coordenadas de los AP detectados

## Ataques a otros sistemas inalámbricos

Los sistemas de control industrial demandan ciertas características de seguridad y robustez para que las comunicaciones inalámbricas sean los suficientemente seguras como para usarlas.

- Comunicación fiable y robusta
- Funciones avanzadas de seguridad
- Configuración y funcionamiento similares a herramientas de automatización 
- Comportamiento en tiempo real y determinista
- Gran rango de temperatura
- Convivencia bajo otras tecnologías inalámbricas existentes sin interferencias
- Bajo consumo de energia

**Ataques típicos a sistemas inlámbricos**
- Escuchas de la red
- Reenvío de paquetes
- Suplantación 

## Principales sistemas inalámbricos

- **Trusted Wireless**
	- Usada en sistemas de control industriales
- **Bluetooth**
	- Desarrollada en 1994 por Ericsson para sustituir al cable
- **Zigbee**
	- Adopta el estándar 802.15.4 para capas bajas del modelo OSI
- **WirelessHART**
	- Basada en 802.15.4 y es usada para la conexión inalámbrica de dispositivos de campo HART para la industria
- **WiMax**
	- Permite la recepción de datos de microondas y retransmitirlos por ondas de radio
- **Redes móviles**
- **Radiocomunicaciones**
	- Usadas para comunicaciones a largas distancias
		- Via satélite
		- Microondas
		- Radioenlaces terrestres
- **RFID**
	- Tecnología de identificación y captura de datos automáticos basada en campos eléctricos o magnéticos de frecuencia de radio para transmitir información.
- **ISA 100.11a / ISA100 Wireless**
	- Estandar internacional que define un método de comunicación inalámbrica bajo IPv6 para el IoT industrial.
	- Adopta el estándar IEEE 802.15.4 para las capas bajas del modelo OSI y agrega la capa de enlace y aplicación

---

#### Marauder

Firmware de ciberseguridad diseñado para ejecutarse en dispositivos ESP32 usado para realizar auditorías y pruebas de redes inalámbricas

Su propósito es identificar vulnerabilidades en redes wifi mediante ataques y exploración masiva.

**Funciones**
- Escaneo de redes Wifi
- Ataques de desautenticación para desconectar dispositivos de redes wifi
- Sniffing
- Identificar y enumerar dispositivos Wifi

#### ESP32

Microcontrolador con conectividad Wifi y bluetooth.

**Características**
- Versatil
- Compatible con muchos firmware
- Facil de usar
- Precio accesible

Usado para auditorías wifi, analisis de redes y pruebas de intrusión

#### Wifi Pineapple

Dispositivo de hardware creado por HAK5 diseñado para pruebas de penetración en redes wifi.

**Características**
- Realiza ataques MITM
- Crea redes maliciosas
- Sniffing
- Tiene scripts preconfigurados que permiten automatizar tareas de hacking
- Permite usarla y administrarla a través de una interfaz web

## Comandos

```
Poner modo monitor
airmon-ng start wlan0

Monitorizar redes
airodump-ng wlan 0

Hacer ataque handshake
airodump-ng –bssid 5C:A6:E6:AC:EF:B7 –channel 11 –write hand_shake wlan0

Desautenticar clientes
aireplay-ng –deauth 10 -a 5C:A6:E6:AC:EF:B7 -c f6:80:5e:75:b3:9c wlan0

Verificar handshake
aircrack-ng hand-shake1-01.cap

Ataque fuerza bruta
aircrack-ng -b 5C:A6:E6:AC:EF:B7 -w /usr/share/wordlists/rockyou.txt hand_shake1- 01.cap
hashcat -m 22000 -a 0 output.hc22000 /usr/share/wordlists/rockyou.txt

Cambiar MAC
machanger -m 06:27:3g:ae:fa:33

```
