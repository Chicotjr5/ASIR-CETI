## Hacer una copia de los ficheros hosts de cada Máquina Virtual

En esta práctica, vamos a crear un sistema de resolución de nombres planos. 
Que consiste en un sistema, donde no hay ninguna jerarquía y cada equipo se identifica por su nombre y se guarda su IP para comunicarse con él. 
Antes de realizar ninguna configuración, vamos a crear una copia de seguridad del archivo **hosts** de cada una de nuestras máquinas. 
En Linux, este archivo se encuentra en **/etc/hosts** 
Y en Windows, se encuentra en **C:\Windows\System32\drivers\etc\hosts**. 
Entramos a cada directorio y creamos la copia.

<img width="422" height="177" alt="image" src="https://github.com/user-attachments/assets/61a55746-3067-416e-ae53-bba89e8f1495" />

↓

<img width="135" height="56" alt="image" src="https://github.com/user-attachments/assets/1f3a27c4-9a5b-4d79-bfe3-a12113c5a3bd" />

↓

<img width="436" height="181" alt="image" src="https://github.com/user-attachments/assets/bc814437-9f5c-4247-a25e-7b59b9db7f95" />

↓

<img width="571" height="206" alt="image" src="https://github.com/user-attachments/assets/dd16d750-8318-489e-b988-0b3472c2756e" />

---

## Haz una captura que muestre en cada equipo su nombre en el prompt y sus direcciones TCP/IP 

En cada máquina, abriremos un terminal y ejecutaremos un 

```bash
ipconfig / ifconfig 
```

<img width="563" height="247" alt="image" src="https://github.com/user-attachments/assets/aa3bdc8a-657f-43c4-acc8-5fad8ea094cb" />

↓

<img width="567" height="246" alt="image" src="https://github.com/user-attachments/assets/7642faea-8bdf-4a7f-b4e5-0dbde2d600d3" />

↓

<img width="661" height="295" alt="image" src="https://github.com/user-attachments/assets/2976bf34-757b-4aa9-a882-a2e9e1459fbf" />

---

## En cada equipo hacer ping a los restantes equipos por IP y por nombre. Justificar lo que ocurre. 

Si hacemos un PING  a los equipos a través de su IP, obviamente nos dejará y la conexión se hará de forma correcta. 
Pero si lo hacemos a través de su nombre de equipo, no nos dejará. 
Esto es debido a que los ordenadores, se comunican a través de direcciones IP y no a través de nombres. 
Pero para eso se creó DNS, para permitir a los equipos el poder comunicarse con nombres, en vez de con su dirección IP. 
Y ahora lo comprobamos.

<img width="677" height="612" alt="image" src="https://github.com/user-attachments/assets/1e6619b4-562e-42b5-8ed3-f5544f2177b7" />

Vemos que para el equipo W7 si nos responde, pero esto es debido a que se está usando NetBBIOS, aún así, no hay que fiarse y configurar el archivo hosts

<img width="691" height="483" alt="image" src="https://github.com/user-attachments/assets/2b00b4be-4850-4d44-b9cf-d305de9596aa" />

↓

<img width="660" height="507" alt="image" src="https://github.com/user-attachments/assets/2d79e8b5-63c6-49be-a938-68c006654fe9" />

---

## Usando un sistema de nombres plano, conseguir que entre los tres equipos puedan hacerse ping por su nombre.

Vamos al archivo **hosts** de cada equipo y ponemos el nombre e IP de cada equipo. 
Esto hay que hacerlo en todos los equipos que queremos comunicar.

**W7**

<img width="428" height="245" alt="image" src="https://github.com/user-attachments/assets/912f3d40-c057-4cf9-9f3b-63b537d3b361" />

**Wserver 2012**

<img width="382" height="277" alt="image" src="https://github.com/user-attachments/assets/aa020e6d-5c42-4f55-bdb9-2c4393d08127" />

**Ubuntu Cliente**

<img width="510" height="218" alt="image" src="https://github.com/user-attachments/assets/b61f0435-03ac-49d9-a9fd-b55019f72b50" />

Guardamos la configuración de cada archivo y ahora si podemos hacer PING a través del nombre de la máquina.

**Demostración**

<img width="559" height="318" alt="image" src="https://github.com/user-attachments/assets/32440e7e-b5f5-4235-bf9d-efe7863a27fd" />

↓

<img width="411" height="285" alt="image" src="https://github.com/user-attachments/assets/533b6247-32c4-448c-ad31-32e4d4221972" />

↓

<img width="412" height="283" alt="image" src="https://github.com/user-attachments/assets/0dbff082-0c7c-45d4-a9fb-495c24acb23c" />

---

## Si hago ping a las direcciones IP de las otras máquinas, ¿me devuelve su nombre?. Justificar por qué

No, no saldrá el nombre de la máquina, debido a que el protocolo ICMP, que es el protocolo que utiliza el comando ping, no incluye una funcionalidad para resolver un nombre de host a partir de una dirección IP. 

<img width="548" height="387" alt="image" src="https://github.com/user-attachments/assets/75686759-5477-40f8-908a-ca58bec03734" />

No pongo el resto de equipos, porque sale lo mismo

---

## Justifica si usarías este sistema en una pequeña empresa, ¿y en una mediana? 

En una empresa pequeña si podría llegar a usarlo, al fin y al cabo serían muy pocos equipos y es un método muy sencillo de comunicar los equipos, sin tener que configurar un servidor DNS. 

Pero para una empresa más grande no, esa simplicidad que caracteriza al archivo hosts se acabaría, debido a que habría que ir equipo por equipo editando este archivo constantemente, lo que supondría una pérdida de tiempo.













































