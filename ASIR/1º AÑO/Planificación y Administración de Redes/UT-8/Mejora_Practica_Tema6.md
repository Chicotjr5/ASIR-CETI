## Diseña la siguiente topología de red

Esta topología de red es la misma que la de la práctica del Tema6, en esta práctica se mejorará, configurando las tabvlas de rutas de los routers.

![image](https://github.com/user-attachments/assets/5c1e5da1-efdf-4eaa-a515-1fe840edc8bd)

---

## Configura los Routers

### Router 1

![image](https://github.com/user-attachments/assets/122d42b8-e197-4097-aef6-6877822d7cb1)

### Router 2

![image](https://github.com/user-attachments/assets/d47b5c6d-e0ef-43aa-a456-b663522f169d)

### Router 3

![image](https://github.com/user-attachments/assets/c4fa0c1d-0f2d-4b04-891c-5ff91879e76a)

---

## Configurar tablas de rutas

Una vez tenemos todos los routers configurados, tendremos que hacer que se comuniquen entre ellos, para ello, configuraremos las tablas de rutas. 
Las cuales, quedarán de la siguiente manera: 

### Router 1

![image](https://github.com/user-attachments/assets/9499113a-9d50-4f97-92c3-eec1e51b2235)

### Router 2

![image](https://github.com/user-attachments/assets/c5aba427-d3c7-498e-8ba6-4801a4c9d002)

### Router 3

![image](https://github.com/user-attachments/assets/ab91c269-57de-482a-862d-dd29baeba1c6)

---

## Configurar ACL 

Ahora, tendremos que hacer una ACL, para bloquear todo el tráfico de la red 192.168.1.0/24 que vaya a la red 192.168.2.0/24, pero dejar que los equipos puedan comunicarse con el servidor WEB. 

Además, si podrán comunicarse con el resto de la red. 

Primero, creamos una ACL extendida identificándola con el nº 100. 

La primera entrada que configuraremos, será permitiendo el tráfico TCP para el servidor WEB 

La segunda, denegará todo el tráfico de la red 192.168.1.0 a la 192.168.2.0 

Y por último, permitiremos todo el tráfico para el resto de redes.

![image](https://github.com/user-attachments/assets/9311044c-8ab0-446a-92b4-88e0b52619f3)

Y para poder ver como ha quedado nuestra querida ACL, usamos el comando

```bash
show Access-list 
```

![image](https://github.com/user-attachments/assets/c96738f2-500e-40ac-bfa1-45cb1e634afe)

---

## Comprobación 

Si intentamos hacer un PING desde el ordenador que se encuentra en la red 192.168.1.0/24 al ordenador y al servidor que se encuentran en la red 192.168.2.0/24, veremos que no llega el PING, pues el Router no deja que pase, debido a que este tráfico, esta bloqueado.

![image](https://github.com/user-attachments/assets/8d7e4034-9509-4417-8a72-d25f1d2f6a4e)

Pero el tráfico TCP no lo está para el servidor, así que si podremos conectarnos a la WEB del servidor desde el equipo de la red 192.168.1.0/24.

![image](https://github.com/user-attachments/assets/b0fefdb9-b9b8-499c-8230-71e544ac3fa1)

Y si hacemos PING del resto de ordenadores a la red 192.168.2.0/24, veremos que si podemos.

![image](https://github.com/user-attachments/assets/23255550-0a7b-4650-8b7d-39510b02b086)









































































