<details>
  <summary><h2>Índice</h2></summary>
  
- [Introducción](#introducción)
- [Modo promiscuo](#modo-promiscuo)
- [Función principal](#función-principal)
- [Cambiar fecha y hora](#cambiar-fecha-y-hora)
- [Filtros predeterminados](#filtros-predeterminados)
- [Conversación](#conversación)
- [Estadísticas](#estadísticas)
- [Usar herramientas externas](#usar-herramientas-externas)
- [Capturar tráfico HTTP](#capturar-tráfico-http)
- [Capturar tráfico HTTPS](#capturar-tráfico-https)

</details>

---

## Introducción

En esta práctica se va a investigar sobre la herramienta Wireshark. 
Esta herramienta sirve para monitorizar y capturar tráfico que se encuentra en la red. 
Pero no solo lo captura sino que este software incluye funcionalidades que permiten analizar ese tráfico. 
Así se puede obtener información sobre qué ha pasado en la red durante la captura, si se han establecido conexiones sospechosas si se ha mandado tráfico malicioso etc. 

---

### Modo promiscuo

Una forma de ver si nuestra tarjeta de red se encuentra en modo promiscuo es revisando las opciones de captura de Wireshark.

![image](https://github.com/user-attachments/assets/99cac4e4-5209-4c4b-8251-79010a403a73)

↓

Dentro de estas opciones se puede ver si nuestras tarjetas están en modo 
promiscuo o no. 

![1 1 tarjeta en modo promiscuo](https://github.com/user-attachments/assets/fa80e2dc-10e6-4cd3-9d5c-98f0962037fd)

---

### Función principal

Como ya dije, la función principal de Wireshark es la de capturar tráfico. 
Para ello, selecciono la interfaz para que Wireshark comience a capturar.

![image](https://github.com/user-attachments/assets/ecbac8ae-0acb-443d-9673-a80cde9895f2)

Navego un poco por internet y genero tráfico, el cual captura Wireshark.

![1 2 1](https://github.com/user-attachments/assets/1f680020-5f78-4dbb-92bf-e2c2d531f89d)

De cada paquete obtenemos información como:

- Nº de paquete
- Hora a la que se capturo
- IP fuente
- IP destino
- Protocolo usado
- Información 

Además de que se puede ver la información del paquete siguiendo las capas OSI: 

![image](https://github.com/user-attachments/assets/1b386d84-410d-4517-8f44-8a7bc3a03a97)

Ethernet II – Capa de Enlace de datos / Capa 2 
IPv4 – Capa de Red / Capa 3 
TCP – Capa de Transporte / Capa 4 
TCP – Capa de Presentacion / Capa 6 

Además de ver la información del paquete en formato hexadecimal:

![image](https://github.com/user-attachments/assets/f1c91d9b-2b26-477d-ad82-f8954d00016b)

Dentro de una captura también ese puede observar el nombre del archivo generado y el nº de paquetes que se han capturado. 

![1 2](https://github.com/user-attachments/assets/f7f65f43-9fd3-4a9b-b0c5-eb3f66faeef3)

↓

![1 3](https://github.com/user-attachments/assets/6092c34b-3b69-4015-9f7e-72f99e35f865)

---

### Cambiar fecha y hroa

Al capturar los paquetes, en el campo Time se ve cuando se capturo el paquete, pero el formato predeterminado es en que segundo desde que se inicio la captura, capturo el paquete, lo cual puede resultar muy confuso a la hora de analizar una 
captura. 

Para cambiarlo vamos a **View>Time Display Format** y elijo el formato **Date and Time of Day.**

![1 4](https://github.com/user-attachments/assets/9ecdbe99-21c5-4d04-982a-6317854e6f04)

---

### Filtros predeterminados

A la hora de analizar una captura, Wireshark nos permite poner filtros para acotar mejor la busqueda de información. 
Estos filtros ponemos ponerlos nosotros mismos o usar los que Wireshark nos proporciona. 
Para usarlos vamos a **Analyze>Display Filters**

![1 5](https://github.com/user-attachments/assets/e9170ef1-808d-4671-87ab-e7745cc16337)

↓

![1 6](https://github.com/user-attachments/assets/2101f82b-9894-460b-8652-3a25937359fd)

---

### Conversación

Otra forma de ver más información sobre un paquete es haciendo **clic derecho sobre el paquete>Follow>TCP Stream**.

![2 1](https://github.com/user-attachments/assets/643ac48b-a6c1-41b1-9797-d1d283fd49f8)

Esto abre una nueva ventana donde se puede ver la conversación completa entre cliente y servidor para ese paquete. 

Esta información incluye: 

- Datos transmitidos
- Dirección y puertos
- Formato de visualización
- Filtrado automático

![image](https://github.com/user-attachments/assets/83a59814-f1a3-4caf-8d5f-e7342a4244a4)

---

### Estadisticas

Otra forma de ver información sobre una captura de Wireshark es viendo las estadísticas.
Para verlas, vamos a Stadistics>Protocol Hierarchy

![3 1](https://github.com/user-attachments/assets/f34e5756-c529-4d1c-a775-ad797f61bdf1)

↓

![3 2](https://github.com/user-attachments/assets/9296d36b-dc7d-47ae-971d-99a1dc88dc94)

En esta captura se ven

**Protocolos**

- Ethernet
- IPv4
- UDP
- TCP
- DNS
- TLS
- HTTP
- SMB

**Estadísticas de tráfico**

- Porcentaje de paquetes
- Porcentaje de Bytes
- Paquetes y Bytes totales

En **Stadistics>Resolver Addresses** se puede ver las direcciones que se han resuelto. 

![3 4](https://github.com/user-attachments/assets/250e3ed4-229d-4dd1-a50f-4d662a19ab23)

↓

![image](https://github.com/user-attachments/assets/82d9a509-c57b-4b37-953a-97fb7f2c4c08)

En **Stadistics>Conversations** se puede observar las interacciones enytre las IP y protocolos de red.

![image](https://github.com/user-attachments/assets/0eaf98af-fac6-476a-8127-51083ae67be6)

↓

![image](https://github.com/user-attachments/assets/ce0c2401-a17f-4ec5-bc02-170e81adc438)

Información proporcionada: 

- Protocolos involucrados
- Direcciones IP
- Estadísticas de tráfico
- Conversaciones específicas

---

### Usar herramientas externas

En la siguiente [página](https://malware-traffic-analysis.net/) se puede obtener capturas de red maliciosas, que contienen datos sobre ataques que se han realizado. 
(Toda la información que se ha visto proviene de una de estas capturas)

Ahora voy a exportar objetos HTTP para poder analizarlos con virustotal. 
Estos objetos son archivos que se transfirieron a través del protocolo HTTP. 

Para exportarlos: **File>Export Objects>HTTP**

![4 1](https://github.com/user-attachments/assets/7315be10-af8b-41a0-a331-e6626fa78645)

Los objetos son los siguientes: 

![4 2](https://github.com/user-attachments/assets/2b09a0dd-bd5e-4725-ae74-d3c182ec97e1)

Los guardo en un directorio y los ire subiendo uno a uno en Wireshark para ver si so 
maliciosos o no. 

![4 3](https://github.com/user-attachments/assets/470cb4d6-3538-4c8c-b5de-95c2681d87f2)

Según virustotal el archivo **esetnod(2).msi** es malicioso debido a que más de 30 antivirus estipulan que es malicioso, clasificándolo como un troyano.

![image](https://github.com/user-attachments/assets/1ffdea4c-873a-424e-94e1-f408baaab37d)

---

### Capturar tráfico HTTP 

Este tipo de tráfico no va cifrado, por lo que si se transmite información sensible mientras Wireshark esta capturando el tráfico, también capturara esa información. 

Para probarlo, meto unas credenciales de inicio de sesión en un sitio web http.

![image](https://github.com/user-attachments/assets/0d3e9d8e-c3f5-4b40-b97e-64ffb021fc85)

Con Wireshark, filtro los paquetes por el protocolo HTTP  y busco el paquete que contiene las credenciales. 

![image](https://github.com/user-attachments/assets/e33d8e82-3115-4e22-a0cc-9401616c8a5c)

Como se puede ver, las credenciales coinciden.

---

### Capturar tráfico HTTPS 

Descifrar tráfico HTTPS y obtener información sensible es bastante más complicado que hacerlo con HTTP debido a que la información viaja cifrada. 
Para descifarla hay que iomportar el contenido de la variable SSLKEYLOGFILE a un archivo. Esta variable es usada por navegadores y contiene claves maestras de sesión TLS/SSL. 
Si se pasa el contenido de esta variable a un archivo, podríamos ser capaces de descifrar información HTTPS. 
Los pasos son los siguientes: 

**Importar contenido:**

```bash
export SSLKEYLOGFILE=sslkeylogfile.log 
```

![image](https://github.com/user-attachments/assets/924a1e32-4607-43f7-bc70-6ebd9ccdbf42)

**Configurar Wireshark para que use ese archivo**

Vamos a Edit>Preferences>Protocols>TLS y en el campo (Pre)-Master-Secret log 
filename especifico la ruta al archivo que acabo de generar. 

![image](https://github.com/user-attachments/assets/15dc396b-36d6-4ccc-b3c8-2600f35b50c2)

Ahora filtro la captura por tráfico HTTP pero no se ha descifrado el contenido del 
paquete.

![image](https://github.com/user-attachments/assets/88f15662-148b-4acb-a3f5-484515cbd7f9)













