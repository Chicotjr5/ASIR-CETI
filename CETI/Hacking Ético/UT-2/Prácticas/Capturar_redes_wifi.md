<details>
  <summary><h2>Índice</h2></summary>
  
- [Introducción](#introducción)
- [Wigle Web](#wigle-web)
- [Wigle App](#wigle-app)
  
</details>

### Introducción

En esta práctica se va a ver la herramienta **Wigle** que permite obtener información de redes Wifi.


---
### Wigle Web

https://wigle.net es una herramienta que obtiene información sobre diferentes redes, como:

- SSID
- BSSID
- Canal
- Encriptación
- Calidad de la señal
- Dirección GPS

En esta página hay un mapa con todas las redes que han sido descubiertas en un sitio, así que busco redes por Burgos y elijo un objetivo.

![1 1](https://github.com/user-attachments/assets/478e3caa-ee6c-4c4e-b3c9-595ca4574508)


Esta red se llama/tiene el SSID MIWIFI_2G_sPAw, su BSSID es F4:B5:AA:96:ED:13, la primera y última vez que se vio esta red fue el 14-01-2025 a las 18:00:00 el cifrado que usa es WPA2 y la dirección es C\ Ana María Lopidana – Burgos – Castilla y León – España – 09004

Con el SSID puedo saber de que operadora es esa red, en este caso, MIWIFI puede ser de Yoigo o Pepephone, que son parte del grupo Más Móvil. 

Este grupo suele poner los siguientes routers:

- ZTE ZXHN F680
- ZTE H367A
- Huawei HG659
- Comtrend GRG-4280us
- NUCOM NC-WR764TGV

En específico el router ZTE ZXHN F680 tiene la siguiente vulnerabilidad:

- [CVE Record: CVE-2020-6868](https://www.cve.org/CVERecord?id=CVE-2020-6868)

En resumen, esta vulnerabilidad describe un caso de **validación de entrada insuficiente** en un producto terminal **PON (Passive Optical Network)** de ZTE, específicamente en el **ZTE F680 V9.0.10P1N6**. La vulnerabilidad se origina en una limitación de longitud del **nombre de conexión WAN** que se crea a través de la interfaz web de administración del dispositivo, la cual no es correctamente aplicada en todas las partes del sistema.

Por culpa de esto, puede pasar:

**Ejecución remota de código**
- Si un atacante puede manipular las solicitudes HTTP y afectar la configuración del dispositivo, podría ejecutar comandos o código malicioso en el terminal PON.

**Desbordamiento de búfer**
- Al permitir un nombre de conexión WAN demasiado largo, es posible que se cause un desbordamiento de búfer en el dispositivo, lo cual podría llevar a la **ejecución arbitraria de código.**

**Acceso no autorizado**
- Manipular los parámetros podría permitir al atacante cambiar configuraciones críticas del dispositivo, lo que puede permitir acceso no autorizado o interrumpir los servicios de red.

Así que con esta vulnerabilidad descubierta, se podría intentar atacar esta red e intentar explotar esta vulnerabilidad.


---

### Wigle App

Wigle también tiene una aplicación donde puedo escanear redes Wifi que se encuentren cerca de mi ubicación

La descargué y analicé todas las redes wifis desde el CIFP Juan de Colonia hasta mi casa, pasando por algunos puntos clave. 
Cuando finalizo el escaneo exporto todas las wifis en 2 formatos: .kml y .csv.
Con él .kml puedo hacer un mapa con todas las redes wifi que he capturado:

[Mapa_Wifi - Google My Maps](https://www.google.com/maps/d/viewer?mid=1BMZwYaM2N8IunGlRz4eJTABa1AGQb_8&ll=42.34882718250293%2C-3.6897225000000144&z=15)


Y dentro del archivo .csv se podría filtrar la información para acotar los resultados, por ejemplo, buscando información de las redes **Vodafone** o aquellas redes con cifrado **WEP**

