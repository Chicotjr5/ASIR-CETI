## Identifica cada uno de los componentes de red estudiados 

![image](https://github.com/user-attachments/assets/375433a6-84ec-4224-a247-050b5ea8668c)

---

## Diseña una red utilizando un HUB

### Diseño de la red

Haremos una red conectada por un HUB.  
Seleccionamos los elementos, los añadimos a la red y los conectamos. 

![image](https://github.com/user-attachments/assets/9714b4eb-113f-40fb-bdcd-a96a6cdd031b)

Hacemos clic sobre el HUB y vemos que tiene 10 puertos, que pueden ser de distinto tipo.  

![image](https://github.com/user-attachments/assets/b5bb447d-5c29-4ebb-97d3-8b5d47d2b43c)

---

### Configuración del HUB y presentación del entorno simulación

Entramos al apartado **Config** y vemos que tan solo podemos cambiar el nombre, esto es porque el HUB no es un dispositivo inteligente, así que no sabe filtrar los paquetes que hay por la red y los manda a todos los equipos.

![image](https://github.com/user-attachments/assets/f68e2cf7-3b72-4e8d-a0cc-4b6d3b66168e)

Ahora comprobaremos que la red funciona, dando a este icono y entrando al modo Simulación.  

![image](https://github.com/user-attachments/assets/8ec40e2f-3966-42b6-98e7-994a6c1e5b36)

En el cual, nos sale lo siguiente

![image](https://github.com/user-attachments/assets/8a24c08e-5f16-41af-878b-f566d5322633)

---

### Configuración de los equipos

Pero antes de mandar nada, tenemos que configurar los ordenadores. 
Hacemos clic sobre ellos y los configuramos. 
Así que damos una IP estática a cada uno. 

![image](https://github.com/user-attachments/assets/2bbcef17-c2d3-48d7-b25c-992ecae06fe6)

Y para comprobar que los configuramos bien, hacemos un ping a cada uno de ellos. 
Vamos a **Desktop>crompt y escribimos: ping 10.0.0.2/3/4** 
Como podemos ver, cada ordenador responde.

![image](https://github.com/user-attachments/assets/f92aa660-2ec9-4bfa-8392-33585da0f85d)

---

### Mandar paquetes

Como ya tenemos conectividad en todos los ordenadores, es hora de mandar los paquetes. 

![image](https://github.com/user-attachments/assets/2c89e036-a029-4d15-a611-0bd08adc0bb9)

Primero mandaremos un paquete del PCA al PC3. 
Como dijimos anteriormente, al mandar un paquete a través de un HUB, este no lo filtra y lo manda por toda la red.

![image](https://github.com/user-attachments/assets/e320b176-d276-4acf-b9c7-504e73606a0c)

Ahora haremos lo que nos manda el apartado, que es comprobar que al mandar 2 paquetes a la vez, estos colisionan

![image](https://github.com/user-attachments/assets/a4f2facf-fe5a-4d17-9cba-abd3e6157fe0)

Como podemos ver, al mandar los 2 a la vez al HUB, colisionaron y se mando solo un paquete a toda la red (aunque este paquete se mando mal).

![image](https://github.com/user-attachments/assets/8b311597-2bb6-4356-8fc8-41ace343795a)

↓

![image](https://github.com/user-attachments/assets/f90ec76d-d57c-4ffa-9bbb-916fb16a4e7f)

---

## Diseñar una red utilizando un Switch

### Presentación de la red

Un Switch y un HUB se podría decir que son lo mismo. 

Ambos son dispositivos que permiten tantas conexiones a la red como puertos tengan, además de que reenvían y regeneran la señal. 
La diferencia radica en que el HUB no sabe filtrar los paquetes y los manda a toda la red, mientras que el Switch si puede filtrarlos y los manda a su debido destino. 

Además, con un Switch no tendremos colisión a la hora de mandar más de 2 paquetes a la vez

![image](https://github.com/user-attachments/assets/7ff5b9ba-3c32-47ac-84b7-9e92159df755)

--

### Mandar paquetes

Usaremos la configuración de los ordenadores de antes. 

Así que volvemos al entorno Simulación y hacemos lo mismo de antes, seleccionamos dos ordenadores con el icono del sobre. 

![image](https://github.com/user-attachments/assets/5c4ca7bb-7e2e-44ed-a6cb-8c99855a3f4d)

Uno será el emisor y otro el receptor. 

Y como podemos ver, el paquete se manda a un solo ordenador y no a todos como en el caso anterior. 

![image](https://github.com/user-attachments/assets/4e768ce9-a451-4726-b324-561c1871a9ab)

Ahora mandaremos 2 paquetes a la vez. 

![image](https://github.com/user-attachments/assets/0beed829-454d-4c89-bd71-9a96ca5c7a51)

Al enviarse al Switch, estos no producen una colisión y se mandan a sus respectivos ordenadores. 

![image](https://github.com/user-attachments/assets/de331d94-6090-4d66-bb94-85adae1b2cff)

↓

![image](https://github.com/user-attachments/assets/fb55289d-dbcf-457c-94c4-4eda8686b6c5)

Y una cosa que no mencione, es que el Switch trabaja en el nivel 2 del modelo OSI, como podemos ver aquí. 

![image](https://github.com/user-attachments/assets/3e362b78-f31b-4d51-9182-041631d66b63)

---

## Diseño de una red con parte cableada y parte inalámbrica

### Presentación de la red 

Ahora, vamos a interconectar 2 redes, una red cableada y una red inalámbrica. 
Por la parte de la red cableada, tendremos 3 ordenadores y por la parte inalámbrica tendremos 2 portátiles.

![image](https://github.com/user-attachments/assets/66e80acb-92bc-4513-a901-5d14ca9326c0)

Para interconectarlos, tendremos que hacer uso de un Switch y de un punto ºde acceso (Access Point) 

Los portátiles, obviamente no se conectan por cable, estos los configuraremos para que se conecten al punto de acceso. 

![image](https://github.com/user-attachments/assets/f20e84f8-cd5c-4185-be54-77cbd297b2bc)

---

### Configuración de la red inalámbrica 

Empezamos entrando a configurar el Access Point. 

Al dar clic sobre el Access Point, vemos que tan solo tenemos un solo puerto. 

Al tener solo un puerto para 3 ordenadores, nos vemos obligados a añadir un Switch. 

![image](https://github.com/user-attachments/assets/05811a69-8cce-4e87-a514-a8936458954d)

Ahora para configurarlo, vamos a **Config>Interfaz>Port1** y en autenticación ponemos **WPA2-PSK** y una contraseña.

![image](https://github.com/user-attachments/assets/862ef998-69dd-44c8-9c12-e737c8709463)

---

### Configuración de los portátiles 

Ahora toca configurar los portátiles. 
Lo primero que haremos será dar clic sobre el portátil y cambiar la tarjeta de red:

![image](https://github.com/user-attachments/assets/1d20694d-c683-4c10-adb0-446ff0cdd71a)

↓

![image](https://github.com/user-attachments/assets/e3189b45-1d31-4720-94ac-ef60bb5d09be)

Seguimos, yendo a **Config>Interface>Wireless 0** poniendo la contraseña que pusios antes al Access Point y poniendo una IP estática. (Hacemos lo mismo en el otro portátil.)

![image](https://github.com/user-attachments/assets/a4ac47bd-9def-4895-919d-eba0cf209061)

---

### Mandar paquetes

Como podemos ver, ya tenemos los portátiles conectados, así que ya es hora de mandar los paquetes

![image](https://github.com/user-attachments/assets/10222c20-7c15-4f6d-8711-72d0573d8a9f)

Hacemos clic con el icono del sobre en los dos ordenadores que queremos. 

![image](https://github.com/user-attachments/assets/4ae5539f-bf8e-4be1-8ae1-2560e5ba1bdc)

Y mandamos los paquetes. 
Como podemos ver, el paquete que fue del PCA se mando al Laptop1 de forma exitosa.

![image](https://github.com/user-attachments/assets/0478844e-54ec-456a-bbc8-cc6d674fe106)

---

## Diseño de dos redes conectadas por router

### Presentación de la red 

Para acabar con esta actividad, vamos a interconectar dos redes a través de un router. 
Cada red tendrá 3 host. 

![image](https://github.com/user-attachments/assets/0cadb21b-f586-4e1b-923e-f2dd58508573)

Ok, tenemos la red, pero así no va a funcionar, la tenemos que configurar. 
Primero configuramos las IP de cada ordenador de las 2 redes.

![image](https://github.com/user-attachments/assets/4af95c08-ed61-49cb-9c23-68ee0ba242ba)

↓

![image](https://github.com/user-attachments/assets/a8f0cb2d-568f-42ec-91e8-45d8994df330)

---

### Configuración de la red

Una vez tenemos configurados los ordenadores, comprobamos que hay conectividad entre ellos en su respectiva red.

![image](https://github.com/user-attachments/assets/8ba20a69-3e04-485c-bfa3-4799db6f3882)

↓

![image](https://github.com/user-attachments/assets/74359a6c-84e1-41ba-a40f-01662e9fbc21)

Pero, aun teniendo las redes configuradas, si el router no lo está, no podremos hacer nada. 

Así que entramos en el **router>Config>Interfaz** y configuramos los **FastEthernet** respectivos para cada red. 

![image](https://github.com/user-attachments/assets/7bff4d7d-8c6e-4e10-91b0-cae36c2c4199)

↓

![image](https://github.com/user-attachments/assets/7435ddc5-ffbf-4bc4-b9d9-dcb607f9b19a)

---

### Probar red 

Ahora con todo configurado, procedemos a enviar un paquete desde un ordenador de la red 1 hasta un ordenador de la red 2. 

Pero al intentarlo, nos dice que no se puede. 

Esto es porque aún nos queda de configurar un parámetro en los ordenadores, el cuál es la Gateway. 

![image](https://github.com/user-attachments/assets/41a2154b-fef1-4b33-a36b-2dc1d4e031fa)

Para configurarla en los ordenadores vamos a **Desktop>IP Configuration**.

![image](https://github.com/user-attachments/assets/c4b22e8f-cdbd-4386-b058-95fbd50b6a74)

↓

![image](https://github.com/user-attachments/assets/98c869a5-9cca-43f4-8e3e-799cd8e0cb5c)

---

### Configurar router y mandar paquetes

Ahora, en el router metemos las Gateway de cada red en el apartado **IP Address** en cada **Fast/Ethernet** correspondiente.

![image](https://github.com/user-attachments/assets/a5d3257c-1c35-4f93-b56d-07433b5e1122)

↓

![image](https://github.com/user-attachments/assets/5da9041a-5d56-4460-8c5b-f523ec687fe0)

Ahora, ya podemos compartir un paquete desde el ordenador PC2 al PC5 

![image](https://github.com/user-attachments/assets/f8066530-7443-4ebe-adb6-86e5e155f5c9)










