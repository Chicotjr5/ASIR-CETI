### Crear la siguiente topología con el Packet Trace

![image](https://github.com/user-attachments/assets/b5192ec5-ba4a-497b-bc86-202f9bbe171a)

↓

![image](https://github.com/user-attachments/assets/4b01ea8f-8246-4ce7-8328-d8b8fe7e617a)

---

### Todas las  E.T. Pertenecerán a la red 192.168.X.0/24 (siendo X el nº de tu PC y nombre tu nombre de pila) 

![image](https://github.com/user-attachments/assets/60df3f7f-3209-465c-ab12-28f1f18464d4)

---

### Configura el switch  modelo 2950T para darle el nombre que aparece en el gráfico 

![image](https://github.com/user-attachments/assets/c2a2c7a8-616c-449a-a667-611746ab15a6)

---

### Da al switch la IP que aparece en el gráfico y comprueba el resultado 

![image](https://github.com/user-attachments/assets/f14741e6-1164-44fb-8dcb-a67a40675752)

---

### Crear en el conmutador 3 redes virtuales y configura los enlaces de acceso según los PC conectados a los puertos:

**VLAN 20 – ADMI**

![image](https://github.com/user-attachments/assets/65b67cc5-7989-45ac-b11b-914970a5983a)

**.VLAN 30 – PRO**

![image](https://github.com/user-attachments/assets/2cf79426-80b4-4ddb-970e-bf41e21b1610)

**VLAN 40 – MARK**

![image](https://github.com/user-attachments/assets/cc28d643-e2aa-45f8-bfd2-3a5b15b094fb)

---

### Verificar la creación de las nuevas VLANs y la asignación de puertos 

Para poder ver el resultado de la creación de las VLAN, usaremos el comando: 

```bash
show vlan
```

![image](https://github.com/user-attachments/assets/c8e10cee-74d5-40c2-8c7b-d25157ed9d36)

---

### Comprobamos que cada VLAN es un dominio de difusión diferente.

#### Enviando un broadcast desde el PC nombre1-pro con IP 192.168.x.2. Analizar a que equipos afecta y justifica el resultado (filtrar tráfico  a solo ICMP)

Ahora mandaremos un broadcast del PC Marcos1-pro y veremos que le paquete solo lo recibe el equipo Marcos2-pro, debido a que esta dentro de su misma VLAN. 

![image](https://github.com/user-attachments/assets/e69c9d56-b188-4b12-bba1-f6d34c92ad70)

Si vemos un paquete de los que se han mandado, podremos observar que se manda con la trama Ethernet II. 

Esto es debido a que la comunicación es entre equipos pertenecientes a una misma VLAN y entre dispositivos que no reconocen el 802.1Q. 

#### Enviar un ping desde PC nombre1-pro con IP 192.168.x.2 al

**PC nombre2-pro con IP 192.168.x.3**

![image](https://github.com/user-attachments/assets/fbcbdb45-4222-4e87-a3c0-882a5849a706)

**PC nombre1-mark con IP 192.168.x.4**

![image](https://github.com/user-attachments/assets/c09dbfb7-96bb-40b3-865c-26df68c6d67c)

**PC nombre1-admin con IP 192.168.x.1**

![image](https://github.com/user-attachments/assets/ae31d44e-77c9-4eee-9785-8cafbf6ee4ba)

---

### Ampliamos nuestra red para que quede como en el siguiente gráfico 

![image](https://github.com/user-attachments/assets/5dc73657-0fba-482d-a7d7-e4afa6a3ac70)

---

### Configura los PCs (nombre e IP) 

![image](https://github.com/user-attachments/assets/8d882f4e-87e4-43fd-8288-701096ea0af4)

---

### Cuales son enlaces troncales

![image](https://github.com/user-attachments/assets/c02eaac7-a9d1-4c6b-af8f-c371827f8a02)

---

### Crear en el nuevo conmutador 3 redes virtuales y configura los enlaces de acceso según los PC conectados a los puertos: 

**VLAN 20 – ADMI**

![image](https://github.com/user-attachments/assets/b440e68a-1954-47aa-b621-cc56d406b542)

**VLAN30 - PRO**

![image](https://github.com/user-attachments/assets/5269a82f-a35c-4f5c-bddf-93a967810564)

**VLAN40 - MARK**

![image](https://github.com/user-attachments/assets/9330cbb6-73c4-467e-8c76-47dd8079e0ab)

Una vez configuradas las VLAN, comprobamos que se hayan creado correctamente.

![image](https://github.com/user-attachments/assets/3730175b-15d7-4641-9806-a00233a8b136)

---

### Configura el switch  modelo 2950T para darle el nombre que aparece en el gráfico

![image](https://github.com/user-attachments/assets/67b79703-1975-4536-b655-41e71b74b093)

---

### Crea y configura el enlace troncal entre los dos SWITCHES por el puerto GigabitEthernet1/1 

Entraremos al modo de configuración del terminal y usaremos los siguientes comandos

![image](https://github.com/user-attachments/assets/12acf3aa-cf51-418c-9ca1-e6b24f4a3443)

Y comprobaremos su creación.

![image](https://github.com/user-attachments/assets/2c766cfb-0ebd-45d6-8935-668073a760b9)

Haremos la misma configuración en el otro Switch

---

### Comprobar que solo hay conectividad entre equipos de la misma VLAN, aunque estén en diferentes switch 

**Enviando un broadcast desde el PC nombre1-pro con IP 192.168.x.2. Analizar a que equipos afecta y justifica el resultado (filtrar tráfico  a solo ICMP)**

Creamos una nueva PDU Broadcast y la enviamos. 
Como resultado, veremos que este broadcast solo se manda a los equipos pertenecientes a la misma VLAN, incluyendo los que están conectados a otro Switch.

![image](https://github.com/user-attachments/assets/6e771542-9864-4a22-98b1-e9c3e8461ea7)

Como vemos, el paquete solo llega a los switches y a los equipos de la VLAN 30 PRO.

**Enviar un ping desde PC nombre1-pro con IP 192.168.x.2 al**

- PC nombre3-pro con IP 192.168.x.6
- PC nombre3-mark con IP 192.168.x.8 

![image](https://github.com/user-attachments/assets/0411dd08-3682-4205-ad05-d9a4ecb3ea87)

---

### Ver en un switch los puertos con enlace troncal en el switch y las VLANs permitidas

![image](https://github.com/user-attachments/assets/7a9e689d-4756-4bb1-a586-9af338cf27dc)

---

### Borrar la VLAN 20  y comprobar que lo hemos hecho

![image](https://github.com/user-attachments/assets/dfaedfae-b58e-4fa5-b183-2f095c165988)

---

###  Eliminar del enlace troncal esta VLAN y comprobar que está hecho.

![image](https://github.com/user-attachments/assets/0f894ad4-53a2-453c-b251-a69b20338582)

↓

![image](https://github.com/user-attachments/assets/dcc3e0bb-76ca-4bed-8cca-9003ea9f3cde)


















