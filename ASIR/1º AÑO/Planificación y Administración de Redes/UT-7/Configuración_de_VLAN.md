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

#### Una vez hayas accedido a la pantalla de configuración, via ayuda o manual busca y prueba el funcionamiento de al menos 4 comandos y entre ellos estará el de visualizar la configuración de IP y el de dar la nueva configuración

Una vez establecemos conexión nos saldrá la siguiente pantalla, en la cual podemos configurar todos los aspectos del switch:

![image](https://github.com/user-attachments/assets/68f6e373-cb8e-427d-aca8-cdf498164bdc)

Podemos ver la configuración de las VLAN.
Estos puertos están etiquetados, por lo que habrá que configurarlos a no etiquetados, dejando solo el del enlace troncal, osea el Puerto 24.

![image](https://github.com/user-attachments/assets/405c1b8a-7ec3-4857-b25a-4aa12b227976)

También podemos ver la configuración del protocolo **Spanning Tree**

Vemos que está desactivado.

![image](https://github.com/user-attachments/assets/37cf11d5-e761-4b90-b0a0-3ef924d04a10)

Podemos ver la configuración IP que tiene los parámetros de fábrica.

![image](https://github.com/user-attachments/assets/76e43414-5498-4249-a87d-99843775c1db)

Y cambiarla.

![image](https://github.com/user-attachments/assets/af13ce8a-bba4-43b5-9b16-c47e1bed2c38)

Y volvemos a verla, después de haber realizado los cambios.
Tiene los parámetros que le pondremos más adelante 

![image](https://github.com/user-attachments/assets/ed0b481a-68f7-44a6-b939-7fbc9a9c65e8)

#### Configuración de los switches. switch1: 10.X.Y.90/8, switch2: 10.X.Y.91/8. Siendo X el año que hacemos la práctica e Y el día. No se nos olvide grabar la configuración. 

Como hemos visto antes, para poder cambiar la IP del Switch ejecutaremos el comando: 

```bash
config ipif System ipaddress 10.23.19.90/8
```

Y para que estos cambios se guarden, ejecutaremos el comando:

```bash
sabe
```

Una vez se ha guardado la configuración, la volveremos a visualizar. 

![image](https://github.com/user-attachments/assets/f2309c81-cf64-42f3-8888-323d17f28abf)

### Interconexión de la estación que acabas de utilizar, ahora al puerto ethernet que coincida con el nº de estación.gráfico que identifique a la estacióny al puerto del switch.

#### Hacer una conexión telnet utilizando la aplicación Putty y comprobar vía comando la configuración IP dada. Se trata de una conexión TCP/IP por lo tanto necesitas conectar desde la estación al switch utilizando una interface virtual (VLAN1). Reflexiona sobre la IP que tiene el switch y la IP que debe de tener la estación para que la conexión sea factible 

Ahora, haremos una conexión  via telnet, osea que necesitamos una IP. 

Esta IP tiene que estar dentro del rango de la red que le dimos al Switch. Así, que haremos un subinterface con esa IP

![image](https://github.com/user-attachments/assets/58513ad8-63ab-4bdc-b28c-6ae31ca30628)

Y abriremos una nueva conexión Putty.

![image](https://github.com/user-attachments/assets/48fb3ba6-9c49-4f31-8d26-702ccc679ef5)

↓

![image](https://github.com/user-attachments/assets/05fedfa6-48ac-402d-9ff4-6e385f0b8a9f)

#### Hacer lo mismo, pero ahora vía conexión WEB o HTTP. Si no has guardado la configuración utilizando comando, hazlo ahora en el entorno gráfico. Si tienes problemas con el navegador prueba con otro. Prueba también a refrescar varias veces. 

Para poder acceder via WEB/HTTP solo temenos que abrir un navegador y escribir la IP del Switch. 

![image](https://github.com/user-attachments/assets/a1647132-f7e7-41df-a0b4-2cdb510d8fdf)

### Interconexión física de otras 2 estaciones al conmutador (sin configurar VLANs y sin interconectar físicamente los switchs todavía) integrándolas en la red lógica 192.168.32.0/24. Estas 2 estaciones inicialmente las conectarás al nº de puerto que coincida con el nº de identificación de la estación. Gráfico que lo represente e identifique.

Anteriormente, configuramos 2 estaciones para que estuvieran en la   red 192.168.32.0/24. 
Ahora tendremos que conectarlos al Switch, para despues comprobar la conectividad entre ellos

![image](https://github.com/user-attachments/assets/670b77b1-e860-43de-90a5-fcc8371e8ecb)

↓

![image](https://github.com/user-attachments/assets/8f4da3e5-f1eb-4998-9b36-44170b7bc7b7)

### Comprobar conectividad entre las 2 estaciones. Cuando documentes este apartado que quede claro el nombre y la IP de las estaciones origen (ipconfig) y destino(ping).

Ahora haremos un PING entre las dos máquinas. 
Veremos que no Podemos realizer el PING 

![image](https://github.com/user-attachments/assets/43487286-c03c-4a0d-99e9-bcc44f253140)

↓

![image](https://github.com/user-attachments/assets/43487286-c03c-4a0d-99e9-bcc44f253140)

### Determinar en cada switch cuantos y cuales son los puertos que se usaran para cada VLAN (10 primeros para una y 10 siguientes para la otra) y cuál será el puerto que se configurará como troncal (el ultimo y/o mayor velocidad). 

Para la **VLAN 1**, dejaremos los puertos **22,23,24,25,26** y el Puerto 24 (el último) será el Puerto truncal, el cual usaremos para conectar los switches entre si. 
Para la **VLAN Roja2** dejaremos los puertos **1-10**. 
Y para la **VLAN Azul2** dejaremos los puertos **11-20**.

![image](https://github.com/user-attachments/assets/7a6ef0c3-8bae-450c-9d0e-583b2d9a155f)

### Vía Telnet o WEB, crear y asignar puertos para las 2 siguientes VLANs ROJAx (20) y AZULx (23)).(x será el nº del grupo al que perteneces. En los gráficos las identificarás con esos colores (rojo y azul). Cuidado con quitar la asignación de la VLAN 1 al puerto del switch donde tienes conectada la estación desde la cual estas configurando el switch, PERDERIAS LA CONECTIVIDAD CON EL SWITCH

Una vez ya sabemos como vamos a distribuir las VLAN, deberemos configurarlas. Haremos una conexión via WEB e iremos al apartado **VLAN Configuration** donde añadiremos cada VLAN. 

![image](https://github.com/user-attachments/assets/5bf576d4-612b-4b9c-979e-80e212f21b61)

↓

![image](https://github.com/user-attachments/assets/a6c9005e-8f74-4382-b450-0672c94500a1)

↓

![image](https://github.com/user-attachments/assets/f305520f-2121-41ba-9f44-9f4c31c60063)


### Comprobar conectividad (nivel 2). Cuando documentes este apartado que quede claro el nombre y la IP de las estaciones origen y destino. Justificar el resultado. (se puede poner la letra de la consola CMD con el color de la VLAN a la que pertenece esa estación)

Ahora, conectaremos los 2 host a la misma VLAN (Puerto 13 y 14 correspondientes a las VLAN AZUL23).
Y veremos como ahora si hacen PING entre sí, debido a que están en la misma VLAN. 

![image](https://github.com/user-attachments/assets/c7dce855-a1b3-4d34-8532-a08b19fce780)

↓

![image](https://github.com/user-attachments/assets/57341405-3c1d-4b8d-acfd-295fea358d39)

### Buscar posibilidades de configurar otros parámetros vistos en clase (STP, agregación de canales, monitorización, cambio de VLAn de administración y nativa, contraseñas de acceso, seguridad de puertos por MAC estáticas...Documenta 3 de ellas 

Dentro de la interfaz WEB, no solo podemos configurar la IP, VLAN y poco más, si no que podemos configurar otros parámetros, como por ejemplo:

![image](https://github.com/user-attachments/assets/ef23f2fb-6af7-404e-96c0-c7673cba282e)

↓

![image](https://github.com/user-attachments/assets/b712523c-7bf4-48d9-868a-a9428753afa1)

↓

![image](https://github.com/user-attachments/assets/78f69c04-e834-4195-bc27-9b209c690b46)


### Conectar los 2 switchs físicamente por el puerto troncal (último o el de alta velocidad si procede).

Ahora, conectaremos los 2 switches entre sí, a traves del Puerto Troncal, el cual nos dispondremos a configurar ahora. 

![image](https://github.com/user-attachments/assets/b73370b7-9a19-48af-899a-feb589d080c6)

↓

![image](https://github.com/user-attachments/assets/e431cc22-90e6-4b1f-ae7a-f6b6566ec0e1)

### Configurar el puerto troncal en cada uno de los dos switches 

Ahora, configuraremos el puerto troncal de cada Switch, para que estos puedan comunicarse entre sí y conectar cada VLAN.

![image](https://github.com/user-attachments/assets/97325aa5-177e-42b1-a0da-08eca8ac2542)

↓

![image](https://github.com/user-attachments/assets/4d8419a2-2590-4c7f-b5c1-5611bd629fd5)

### Probar conectividad entre estaciones conectadas a diferente switch y pertenecientes a la misma y a diferentes VLANs. Explicar claramente los resultados e indicar las estaciones (nombre e IP) con las que se prueba la conectividad. (se puede poner la letra de la consola CMD con el color de la VLAN a la que pertenece esa estación)

Ahora, haremos un PING a un equipo de la VLAN AZUL2 . 
Como Podemos ver, se realiza de manera correcta.

![image](https://github.com/user-attachments/assets/1e6b3df3-0783-4706-87fa-6bacffc70f59)

↓

![image](https://github.com/user-attachments/assets/1e2c1ecd-c2fb-4f75-9b55-8b0101ba9dc8)

Y si metemos nuestro ordenador a la VLAN Roja23 e intentamos hacer un PING al equipo IB09, el cual sigue en la VLAN Azul23, veremos que no podemos. 

![image](https://github.com/user-attachments/assets/8f9cfc23-b6cb-427b-b164-f124089e76af)

### Al terminar la práctica, dejar al switch con la misma configuración que venía de fábrica. Este apartado deberá comprobarlo la profesora in situ

Para dejar el Switch con la configuración de fábrica, será tan sencillo como ir a la opción Reset Config>Apply>Esperar y ya tendremos nuestro Switch desconfigurado. 

![image](https://github.com/user-attachments/assets/8f26dc52-34b9-4de3-bda2-1bfd6d71c670)

↓

![image](https://github.com/user-attachments/assets/72ad40d1-35ee-4786-ace4-48d329d1d93e)

De hecho, si volvemos a hacer una conexión serie e intentamos ver los parámetros IP del Switch, veremos que son los de fábrica. 

![image](https://github.com/user-attachments/assets/400a93c2-f4d2-4640-b716-e445f3533b1a)

### Se pide hacer gráfico de la red a implementar en cada uno de los apartados y documentar todos los procedimientos a seguir. 

![image](https://github.com/user-attachments/assets/3b84ad30-3533-4930-8b15-586a9213b721)
































