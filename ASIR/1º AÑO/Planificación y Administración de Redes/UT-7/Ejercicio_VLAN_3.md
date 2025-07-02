### Configuración de  VLANs  e interconexión  a través de router (1 interface físicos y tantos subinterfaces como VLANS). Probar conectividad

![image](https://github.com/user-attachments/assets/2bd8b59e-e3d7-4741-a68b-8835b2911aa2)

---

### Conectar los  equipos tal como se indica en el gráfico y la tabla.

![image](https://github.com/user-attachments/assets/21a717f9-3698-4c22-96c4-be21be49dd7b)

---

### Realizar las configuraciones básicas en el router: nombre de host 

![image](https://github.com/user-attachments/assets/07566329-a26a-4696-86b6-99635bc8d5a0)

---

### Configurar el puerto enlace troncal para VLAN en el router

#### Configurar el interface Fa0/0  del Router A como troncal para VLAN 1, VLAN 10, y VLAN 20 con  802.1Q  como etiquetado o encapsulamiento. Cada subinterface tomará la 1ª IP de la red

Configuraremos el interface fa0/0 de tal forma, que no este apagado y no tenga ninguna IP, esto, para agregar ahora los subinterfaces 

![image](https://github.com/user-attachments/assets/0c797c52-2ec7-4a82-b74c-7712d218e7b0)

Primero, configuraremos el subinterface fa0/0.1, para la VLAN 1.
Le configuraremos un encapsulamiesnto 802.1Q y un valor 1, el cual se corresponde con la VLAN 1.
Y una IP dentro de su VLAN.

![image](https://github.com/user-attachments/assets/ac9e4f12-51f2-4e6f-b7e8-73e9cb428032)

Y realizaremos la misma configuración para los **subinterfaces fa0/0.10 y fa0/0.20**

![image](https://github.com/user-attachments/assets/23a8f31c-8eba-46c2-9002-a271901276b2)

↓

![image](https://github.com/user-attachments/assets/41f3fe1e-c9d6-4f39-a8f2-9d565da17196)

---

### Configurar  el Switch 1

**Configurar  el Switch 1 con su nombre y habilitar una clave para entrar en modo privilegiado**

Establacemos una password al de acceso al modo privilegiado al Switch.

![image](https://github.com/user-attachments/assets/39a4114f-0375-44b3-aac7-b9d38c435a8b)

↓

![image](https://github.com/user-attachments/assets/f241d9fe-0020-44c1-8698-35b51bb79c5f)

**Configurar el Switch 1 con la dirección IP  que figura en la tabla  y el gateway predeterminado (la asignación de una dirección IP al switch permite realizar la configuración remota via Telnet, SSH o web)**

Le asignamos al router la IP que se muestra en la tabla.

![image](https://github.com/user-attachments/assets/3d62be80-de1c-4176-9509-df662c8f2873)

**En el Switch 1, crear la VLAN 10,  con nombre Profes, y la VLAN 20, con nombre alumnos.**

Creamos ambas VLAN. 

![image](https://github.com/user-attachments/assets/59394750-5c0e-40da-8b3c-c3fd36344a94)

**Configurar el Switch 1 con la interfaces Fa0/5 and Fa0/6 en  la VLAN 10. Configuramos los interfaces fa0/5-6 para que tengan acceso a la VLAN 10**

![image](https://github.com/user-attachments/assets/3ee913a6-515a-4548-82c3-73a934421f93)

**Configurar  Switch 1 con la interfaces Fa0/7 and Fa0/8 en  la VLAN 20.**

Realizamos la misma configuración para los interfaces fa0/7-8

![image](https://github.com/user-attachments/assets/1d576f6d-b3aa-4141-993a-0f3cbc33d5f8)

**Indicar la diferencia que hay entre estos dos comandos show vlan brief y show vlan**

![image](https://github.com/user-attachments/assets/28d0d2ec-18d0-4ebe-b136-4d70eb42c213)

---

### Configurar VLAN trunking en Switch 1

**Configurar la troncal entre el Switch 1 y Switch 2 con 802.1 encapsulation usando el puerto Fa0/1 en ambos switches.**

Entraremos al interface fa0/1 y usaremos el comando

```bash
switchport mode trunk 
```

![image](https://github.com/user-attachments/assets/22be2088-ba5a-4c45-aecb-102f2602a6a9)

Haremos lo mismo en el Switch 2 con el mismo puerto 

![image](https://github.com/user-attachments/assets/a163d875-d48c-4a29-b020-6ddb44c743eb)

**Desde el Switch 1, indica el resultado del comando show interfaces trunk**

![image](https://github.com/user-attachments/assets/70e91fa6-31cd-4066-85c2-6f152a0781ec)

**Configurar Switch 2 siguiendo los mismos pasos que en el switch 1**

![image](https://github.com/user-attachments/assets/3263a091-688e-4765-ac01-b107f5e399ab)

Primero, será configurar los interfaces con sus respectivas VLAN: 
Y hacemos un **show vlan** para comprobar que lo hemos realizado de manera correcta.

![image](https://github.com/user-attachments/assets/f29fe6ca-4908-48e0-83c2-1507760225b2)

**Configurar la troncal entre el Switch 2 y el Router A con 802.1 encapsulation usando el Puerto Fa0/2 en el Switch 2.**

![image](https://github.com/user-attachments/assets/5113c1dc-00fa-4d6a-8732-50dd7e175605)

---

### Dar configuración IP a los Host

![image](https://github.com/user-attachments/assets/1cdfeb56-819a-4d5b-b091-f20c20df1b1d)

---

### Verificar la conectividad.

**El router debe poder hacer ping a las interfaces de los demás dispositivos.**

Ahora, iremos al modo consola del router y haremos un ping a cada una de las VLAN.

![image](https://github.com/user-attachments/assets/50f37496-679b-4bca-bb28-273b79818ff4)

El Host 1 debe poder hacer ping a todos los demás dispositivos. 

![image](https://github.com/user-attachments/assets/4935f5a6-5d5a-4c65-a08f-2cd2ad26d61f)

↓

![image](https://github.com/user-attachments/assets/7fe0040a-5408-4350-b7d7-ec062216017b)










