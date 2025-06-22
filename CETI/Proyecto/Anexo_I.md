## Emular un móvil 

Al abrir el software de Android Studio, esto es lo primero que vemos:

![image](https://github.com/user-attachments/assets/d1349f42-9e90-4982-9850-511540b5d2e9)

Tenemos un terminal donde podremos usar la herramienta adb, ya que esta viene instalada con Android Studio. Lo único que, para poder usarla, habrá que añadir su ruta a la variable de entorno **PATH**. 

En la columna de la izquierda, hay varios iconos y hay uno de ellos que es el **Device Manager**:

Desde aquí se pueden administrar los diferentes móviles emulados.

![image](https://github.com/user-attachments/assets/3b529172-3912-49da-8438-af485ebb001d)

Por defecto ya viene uno, el Medium Phone, aunque yo cree otros dos. 
Ambos son dos Google Pixel 8, pero uno permite el root y el otro no, ahora explicaré el porqué.

![image](https://github.com/user-attachments/assets/c5fda908-96f1-41a3-85ea-dd93f01aac0e)

Para poder crear un nuevo dispositivo, le damos al icono del más que se encuentra en la parte superior: 

![image](https://github.com/user-attachments/assets/8d505d05-e5c3-4211-9c7c-cafd35c27197)

Nos sale una lista con los diferentes móviles que podemos emular y como dije previamente, solo se pueden Google Pixel. 

También se puede observar que podemos emular otra clase de dispositivos. 

![image](https://github.com/user-attachments/assets/78f16111-e84c-43f5-9b66-a1931f4877c5)

Y es que Android no solo se encuentra presenta en dispositivos móviles, sino que también lo está en sistemas operativos de teles, de wearables (que son las pulseras de actividad como las Xiaomi mi band), en tablets, en sistemas operativos para coches etc.

Siguiendo, después de elegir el dispositivo, se nos muestra una pantalla, donde podemos configurarlo:

![image](https://github.com/user-attachments/assets/3fa0697c-c47f-4431-ab71-bdc02dc0344e)

Aquí podemos elegir la versión del sistema operativo que llevará. 
Para este dispositivo, tenemos Android 16.0, Android 15.0 y Android 14.0 

![image](https://github.com/user-attachments/assets/6d835b82-2a0a-4e73-b5f9-9c27a28db258)

Y para cada una de estas versiones, hay otras 3 “versiones”:

![image](https://github.com/user-attachments/assets/2828c7a9-db4a-4de4-b88b-a13eaab81a3b)

**Google Play Store**

Esta versión cuenta con todos los servicios de Google, incluyendo la Play Store y al ser la versión en producción del sistema operativo, no permite hacer root. 

Es la versión con la experiencia más real que tendría una persona con ese dispositivo

**Google APIs**

Incluye los Google Play Services (API de ubicación, In-App Billing,) pero no la Play Store asi que nos permite acceder como root. 

**Android Open Source**

Es la versión más pura de Android, ya que no viene con ningún servicio de Google, asi que también permite ser root. 

De los 2 dispositivos que se vieron al principio, uno tiene la versión Android 16.0-Google Play Store, mientras que el otro tiene Android 15.0-Google Api. 

Otra cosa que se puede hacer es modificar el “hardware” del dispositivo, pero solo en las versiones en las que se puede hacer root:

![image](https://github.com/user-attachments/assets/75ac256b-bd00-4f73-8c65-579929c2580e)

Con ambos dispositivos creados, los arrancamos

![image](https://github.com/user-attachments/assets/80670102-bef7-4b1e-b550-a846c55fdba2)

El móvil de la izquierda es el que cuenta con los servicios de Google (no root), mientras que el de la derecha, no (root). 

A través del terminal uso la herramienta adb y con ella puedo ver ambos dispositivos:

```bash
adb devices
```

![image](https://github.com/user-attachments/assets/f04adf40-c132-411f-af3a-71bb819f9e42)

Si intento ser root en el primer móvil, no me dejará:

![image](https://github.com/user-attachments/assets/fb333966-ccb3-4ccc-ae35-c58a9d29f121)

Mientras que en el otro sí:

![image](https://github.com/user-attachments/assets/2d5be158-b1fa-4943-9407-8183dc968c30)

En este segundo móvil, al ser root, puedo acceder a cualquier parte del dispositivo:

```bash
adb shell 
ls data/data 
```

![image](https://github.com/user-attachments/assets/369516d3-c659-4a23-a3b4-a9b6a7c5ad7a)

En cualquier otro dispositivo, al hacer un ls data/data, sale un error, donde se remarca que 
no tenemos los permisos necesarios para poder acceder
















































































