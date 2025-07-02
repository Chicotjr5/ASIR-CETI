## Configurar una red Ethernet con múltiples VLANs, sobre 2 conmutadores de gama alta y sin propósito de interconectarlas

### Acceder al manual de los switches

#### Describir el switch, indicar sus características y un pequeño comentario de su significado

Nuestro Switch era un switch **DLink DES-3526**

Este, según el manual, es un switch apilable (permite la apilación de 32 switches, dando como resultado uno de 768 puertos) que es capaz de funcionar en las capas 2, 3 y 4 del modelo OSI. 

Además de que implementa: 

-24 puertos 10/100 Mbps 
- 2 Puertos 10/100/1000  
- 2 Ranuras SFP 
- QoS – Prioriza el tráfico de voz y video sobre el de datos 
- ACL – Listas de control de acceso 
- Seguridad de Puerto

#### Observar e identificar todos los puertos y conectores. Muéstralos identificándolos en una imagen del switch que incluyas.

![image](https://github.com/user-attachments/assets/00e6e292-3fb4-4d46-be95-66d0cc4fe755)

↓

![image](https://github.com/user-attachments/assets/02473963-9803-49d8-81a5-35e956a34cde)

#### Identificar el significado de las conexiones: color de los leds 

Cuando conectamos el equipo a un Puerto del Switch, el LED correspondiente se pondrá de color verde, pues se ha establecido al conexión Switch-PC de forma correcta.

![image](https://github.com/user-attachments/assets/27f34d60-f026-401d-b9e5-4db529f52759)


Si estuviera verde-intermitente, significaria que se están transmitiendo datos 
Si estuviera de color ámbar/naranja, significaria que ese Puerto esta bloqueado. 
Si fuera naranja-intermitente, significaría que habría problemas de conexión 
Y si estuviera apagado, significaría que no habría conexión. 

Al encender el Switch, e LED RPS estará de color ámbar y el de POWER estará verde. 
Y el LED de console no se encenderá si no accedemos al Switch en modo consola

![image](https://github.com/user-attachments/assets/4f239eb2-c563-45d1-a6ff-83014a2ba4c2)


### Recordar e indicar las tres formas de acceder a la onfiguración y documentarlo

A un Switch podemos acceder de varias formas: 

- A través del puerto consola
  - Conexión serie
  - Comandos
 
![image](https://github.com/user-attachments/assets/35b35899-1af6-4900-8af0-947d055926e5)

↓

![image](https://github.com/user-attachments/assets/fa4d13a1-e59c-4c61-bf91-5cfec3efa1a4)

A través de un puerto Ethernet:

- Conexión a través de la red
- Comandos e interfaz gráfica via web

![image](https://github.com/user-attachments/assets/39c1b63b-651c-404c-b1ba-d419afe52faa)

↓

![image](https://github.com/user-attachments/assets/eda52304-f108-4232-ad4f-a750cf49d458)

Administración remota

- Conexión a través de la red
- Interfaz gráfica

### En la red que vamos a configurar todas las estaciones de la red pertenecerán a la misma red lógica o de nivel 3 (192.168.32.0/24) 

Configuraremos los equipos, para que pertenezcan a la red **192.168.32.0/24**


Este es el equipo IB14
![image](https://github.com/user-attachments/assets/0ca03bf2-2190-4820-91a0-8886616a4e8e)



↓

![image](https://github.com/user-attachments/assets/73af0903-5b5a-4677-93b7-5503c5b8c602)
Este es el equipo IB13


### Averiguar la IP que tiene el switch de fábrica buscándola en los manuales. Anótala. 

En la portada del manual viene la IP de fabrica del Switch

![image](https://github.com/user-attachments/assets/72d3982f-d6eb-40b5-94a9-e69af3799969)

### Interconexión de una estación al conmutador vía consola, para darle la configuración IP básica

#### Ejecutar la aplicación Putty y con la opción conexión serie acceder al conmutador

Estableceremos los parámetros necesarios y realizaremos la conexión via Puerto serie. 
Este tipo de conexión, es una conexión asíncrona, debido a que se usan bits de inicio y parada 

![image](https://github.com/user-attachments/assets/2f4929de-c662-46d2-8fd3-17a9c7ce085e)

↓

![image](https://github.com/user-attachments/assets/fcd5725a-4349-470b-95cc-d5b6a703ce4f)

Conectar el conmutador a corriente

![image](https://github.com/user-attachments/assets/9a071098-3c3c-414d-ae83-06be6505a53e)










































