## Hacer un esquema gráfico que muestre la topología física y lógica de la red que se pretende montar

![image](https://github.com/user-attachments/assets/eac359e5-6bda-4509-aa49-d255e3f9a990)

## Documentar todas las etapas seguidas para la construcción y configuración de esta red. 

Antes de construir una red, necesitamos de un punto de acceso inalámbrico, al cual conectarnos. 
Una vez estamos conectados al router, deberemos entrar en él. 
Para ello, vamos a un buscador, **escribimos la IP del punto de acceso** y el nombre del usuario y contraseña de este (por defecto en estos routers en **admin:admin**) 
Y entramos, visualizando la página principal

![image](https://github.com/user-attachments/assets/b14aa762-d20e-4c2c-9bb4-cd816f025e57)

Y entramos, visualizando la página principal 
Una vez dentro, empezaremos a configurar nuestra red. 

![image](https://github.com/user-attachments/assets/f0ac0388-2d25-44da-95e7-31463446a2ca)

Primero tendremos que poner nuestro SSID, el cual es **WASIR1M-C23** 
Para ello, vamos a **Wireless>Wireless_Settings>Wireless_Network_Name** y guardamos los cambios.

![image](https://github.com/user-attachments/assets/11a5d492-461d-48f4-8104-da5b744a3882)

Otro cambio que tenemos que hacer, es **deshabilitar el DHCP**, debido a que configuraremos los clientes con una IP estática.

![image](https://github.com/user-attachments/assets/bdcc4dc4-f594-426a-8893-ef1ca6af8bdf)

Además, de que el puerto **WAN** debe de estar **desconectado**, debido a que no estamos configurando un router inalámbrico, si no un **Punto de Acceso** .

![image](https://github.com/user-attachments/assets/ed0040d9-d5f0-4de4-9984-01043e797cb7)

La siguiente configuración, será la de cambiar la contraseña del Wifi. 
Vamos a **Wireless>Wireless Security** y la configuramos

![image](https://github.com/user-attachments/assets/2e70102e-b3cf-4739-89a9-46f6912fb056)

El último cambio que realizaremos, será el de la IP del punto de acceso. 
Para ello, vamos a **Network>LAN>Ip Address** y pondremos la IP **192.168.32.122/23**

Y guardaremos los cambios realizados.

![image](https://github.com/user-attachments/assets/f5115aad-1d61-43b3-8fe7-47069e568594)

Al cambiar la IP, el router necesita reiniciarse para guardar los cambios. 
Así que lo hace.

![image](https://github.com/user-attachments/assets/f0f5c84f-cedb-4b03-b527-2a19e9d354ba)

Antes de volver a entrar, cambiaremos la IP de nuestro equipo por una estática, debido a que como el DHCP esta desactivado, si no configuramos una IP que esta dentro de nuestra red, no podremos acceder al router.

![image](https://github.com/user-attachments/assets/e15c9cc9-aea2-4146-a0e3-e10b2ae25f37)

Una vez reiniciado, tenemos que volver a entrar en él, pero esta vez, no lo haremos con su IP antigua, si no con su nueva IP. 

![image](https://github.com/user-attachments/assets/be957d46-3d1c-469e-b3e4-6fa8b26e4b46)

---

## Probar que la estación inalámbrica puede acceder a recursos de la red cableada. Documentar todas estas pruebas  


Ahora, deberemos conectarnos con un ordenador a nuestro punto de acceso inalámbrico. 

Para ello, **debemos de instalar un adaptador USB-WIFI**. 

Por suerte, **Windows cuenta con los drivers de este adaptador**, así que se instalan solos.
Una vez tenemos el adaptador funcionando, buscaremos la red y nos conectaremos a ella. 

![image](https://github.com/user-attachments/assets/06b2132b-cf09-4635-bdd0-feaf98214463)

Una vez conectados, comprobaremos accesibilidad a los recursos de la red. 
Primero, haremos un PING a un equipo de clase. 

![image](https://github.com/user-attachments/assets/ede2d83e-72de-497c-9fec-052dacb817bd)

Lo siguiente, será conectarnos a Internet.

![image](https://github.com/user-attachments/assets/f10426b8-5855-4878-bc62-dfc7a15d1491)

---

## Instalar software para detectar redes inalámbricas y permitir realizar mediciones de calidad de señal


Instalaremos el software de **InSSiDer**, para detectar nuestra red y el resto de redes presentes. 
En la siguiente imagen podemos ver el **SSID** de todas las redes, además de **la intensidad de su señal**, **los clientes** que están conectados, **los canales** sobre los que trabaja, **la seguridad**, el modo, y **la velocidad de transmisión**.

![image](https://github.com/user-attachments/assets/eda36731-d884-4440-a3b1-64b980c36422)

Y si seleccionamos nuestra red, podemos ver aún más información, como la intensidad de la señal en tiempo real, la MAC del AP, la dirección MAC etc.

![image](https://github.com/user-attachments/assets/b2dd973c-39d1-4dec-b02e-ad6cba507b58)

---
## Conectarse con un móvil a la red Wifi

![image](https://github.com/user-attachments/assets/e9a4434c-2331-47e0-a0bb-87547977ef04)

↓

![image](https://github.com/user-attachments/assets/f1eb3da7-537e-4dd1-9e87-1d4e16e44f2f)


### Comprobar hasta donde llega la señal Wifi

Usaremos la aplicación de **Wifi Analizer** para poder ver hasta donde llega la cobertura de nuestra red. 

![image](https://github.com/user-attachments/assets/23148363-8a28-47b6-a011-c8d4f3dd023b)

Captura tomada en dentro del aula, donde además podemos ver el resto de redes, junto con su intensidad, canal, frecuencia, fabricante del dispositivo etc

![image](https://github.com/user-attachments/assets/1042c3cc-0e9a-42cc-a8d4-b09e4c3316b4)

Captura tomada en el tercer piso del centro, podemos ver que ya perdimos conectividad con nuestra red y el como el resto de redes, han perdido intensidad

También usaremos la aplicación de **Fing**, la cual nos permite hacer un PING a la red, para poder comprobar su intensidad. 
Vamos a **Herramientas>Ping** y realizamos el PING 

![image](https://github.com/user-attachments/assets/d2eeed5a-8011-4738-b234-cb77c48636de)

Captura realizada en clase, como podemos ver, tenemos una conexión perfecta 

![image](https://github.com/user-attachments/assets/35b06424-e85c-4d9a-b3b0-3109a58c2984)

Captura realizada en el tercer piso del centro, como podemos ver, ya no tenemos conexión, así que los PING no llegan




























































