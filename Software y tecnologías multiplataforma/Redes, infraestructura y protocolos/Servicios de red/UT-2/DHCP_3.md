## Servidor DHCP FAILOVER

### Configuración inicial

En esta última práctica, crearemos un servidor DHCP Failover con 2 servidores DHCP que estén en 2 máquinas Windows Server 2012 R2. 
Como ya tenemos una instalada, solo tenemos que clonarla. 

En cada máquina, haremos los siguientes cambios:

- Cambiar nombre de las máquinas, para que no tengan el mismo y evitar problemas.

<img width="318" height="130" alt="image" src="https://github.com/user-attachments/assets/3bad5478-8d55-4b00-8070-8680f5a95f8c" />

- Usar una IP del rango **10.0.0.0/24.**

<img width="356" height="231" alt="image" src="https://github.com/user-attachments/assets/209a3e45-1afa-46b1-92c3-e9378236459c" />

↓

<img width="359" height="224" alt="image" src="https://github.com/user-attachments/assets/131cdfdf-d044-4ae1-aa51-52d5189ed0cc" />

---

### Creación de ámbito

Para poder crear el servidor **DHCP Failover**, tenemos que crear un ámbito en uno de los servidores, ojo, solo en uno, no en los 2.

<img width="463" height="169" alt="image" src="https://github.com/user-attachments/assets/de3a5cfd-8888-41e3-bea8-051b8b97a33a" />

↓

<img width="329" height="235" alt="image" src="https://github.com/user-attachments/assets/4c4b46cf-6477-4bea-a1a0-6d0cc009acb0" />

↓

<img width="244" height="140" alt="image" src="https://github.com/user-attachments/assets/0fdfe29f-63ed-4889-a178-344fdb96613d" />

No necesitamos realizar ninguna configuración más del ámbito. 
Una vez el ámbito creado, damos **clic derecho sobre el ámbito>Configurar conmutación por error**.

<img width="377" height="95" alt="image" src="https://github.com/user-attachments/assets/8eab43a6-8cbb-484e-b4a2-44a98f3e692d" />

---

### Configurar conmutación por error

Se nos iniciará un asistente, con el cual podremos crear nuestro **DHCP FAILOVER**. 
Lo primero que le decimos es que usaremos el ámbito que hemos creado. 

<img width="359" height="237" alt="image" src="https://github.com/user-attachments/assets/62862231-3ea7-4b6d-b5b9-c1a39642887c" />

Lo siguiente será especificar el otro servidor DHCP que usaremos. 
Pondremos la IP de este servidor (no hay que poner el nombre del servidor, solo la IP).

<img width="603" height="64" alt="image" src="https://github.com/user-attachments/assets/96f4c857-9394-4d39-b1e5-ea0a4e77ddd6" />

El asistente nos sacará una pantalla donde podemos configurar la conmutación. 
Aquí podemos elegir si queremos usarlo en modo **Espera Activa o Equilibrio de Carga**.

<img width="523" height="82" alt="image" src="https://github.com/user-attachments/assets/d267e40d-a7af-42f4-a00f-00d7cc195d55" />

---

### Configurar conmutación por error Equilibrio de carga

Como tenemos que usar los 2 modos, primero vamos con el modo **Equilibrio de carga**. 
La configuración sería la siguiente:

<img width="415" height="316" alt="image" src="https://github.com/user-attachments/assets/b50ae6a0-83e0-4540-88f8-4aca10216a7d" />

Damos a **Siguiente** y vemos un resumen de nuestro **DHCP FAILOVER** 
Y lo creamos. 

<img width="401" height="464" alt="image" src="https://github.com/user-attachments/assets/f18da790-b130-45b6-8b47-74be667fd57a" />

---

### Comprobar con clientes 

Dentro de las propiedades del ámbito, podemos ver la configuración del DHCP FAILOVER. 

<img width="398" height="337" alt="image" src="https://github.com/user-attachments/assets/94cc3790-0f9a-4594-90dd-d504ba270f15" />

Para comprobar su funcionamiento, en una máquina W7 vamos a liberar y renovar la IP, para ver si nos asigna una IP dentro del rango y que servidor nos la está dando. 
Realizamos un **ipconfig /release | ipconfig /renew** y por último un **ipconfig /all** para 
ver que servidor DHCP nos está dando la IP. 
En este caso, es el servidor **10.0.0.1.**

<img width="663" height="421" alt="image" src="https://github.com/user-attachments/assets/475e1806-707b-4dee-9c1e-539c60989423" />

Si vamos a Ubuntu, realizaremos el mismo procedimiento, liberar, renovar y comprobar IP. 

```bash
Dhclient –r enp0s8 
Dhclient 
Ifconfig
```

<img width="666" height="304" alt="image" src="https://github.com/user-attachments/assets/730c2b8e-2670-491b-ae0a-3fe7cc3d6dba" />

---

### Configurar conmutación por error – Espera activa

Ahora vamos a configurar el DHCP FAILOVER en modo **espera activa**. 
Para crearlo, hay que seguir los mismos pasos que en el anterior caso, pero, a la hora de crear la relación de conmutación, vamos a poner el modo en Espera Activa. 
Como podemos ver, la configuración cambia un poco.

<img width="533" height="411" alt="image" src="https://github.com/user-attachments/assets/f271fb78-3dc5-44c2-9edc-b09635ce0729" />

Y creamos el DHCP FAILOVER en modo Espera Activa. 

<img width="375" height="402" alt="image" src="https://github.com/user-attachments/assets/b3e87937-9d56-4332-a169-8c3ad0e2d563" />

---

### Comprobar con clientes

Volvemos a los equipos clientes y hacemos exactamente lo mismo que antes, liberar, renovar, ver configuración. 

<img width="589" height="371" alt="image" src="https://github.com/user-attachments/assets/53c03aec-f228-487c-b1d6-0caae16dfb23" />

↓

<img width="668" height="306" alt="image" src="https://github.com/user-attachments/assets/3b17b940-8a7a-4c77-9e60-a0fcffd0008b" />


**Pero, ¿Qué pasa si apagamos uno de los servidores?** 
Si apagamos el servidor que está dando la IP a los equipos, supuestamente el otro 
servidor, debería hacerse cargo del servicio DHCP y asignar las direcciones IP. 
Vamos a probarlo. 
Apagamos el servidor que está dando la IP al W7.

<img width="533" height="119" alt="image" src="https://github.com/user-attachments/assets/710c8664-4123-49bd-8418-0755ab1e37eb" />

Y volvemos a liberar y renovar la IP. 
Ahora, si hacemos un **ipconfig /all**, veremos que el servidor DHCP que está dando las IP es el otro. 
Por lo que nuestro **DHCP FAILOVER** está funcionando 

<img width="668" height="422" alt="image" src="https://github.com/user-attachments/assets/5b29bbd3-ceaa-4408-bb98-6b3004d5b136" />
