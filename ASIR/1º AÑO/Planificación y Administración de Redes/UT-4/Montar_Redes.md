## Primera parte 

### Gráfico correspondiente al diseño de red anterior en PKT y personalizado con todos los datos de IPs de interfaces, nombres de PCs, Ip y mascara de la red, departamento al que pertenece la red 

![image](https://github.com/user-attachments/assets/ff9f6371-2a0c-4107-886d-6c7203878003)

↓

![image](https://github.com/user-attachments/assets/cb6a92af-61b8-4dd8-8b8a-38a04cedfaa3)

---

### Tablas de rutas 

#### ROUTER 1

**Sin ruta default**

| RED           | MÁSCARA | GATEWAY       | INTERFACE     |
| ------------- | ------- | ------------- | ------------- |
| 172.27.14.0   | /25     | -             | 172.27.14.1   |
| 172.27.14.224 | /28     | -             | 172.27.14.225 |
| 172.27.14.128 | /26     | 172.27.14.238 | 172.27.14.225 |
| 172.27.14.192 | /27     | 172.27.14.238 | 172.27.14.225 |
| 172.27.14.240 | /29     | 172.27.14.238 | 172.27.14.255 |

**Con ruta default**

| RED           | MÁSCARA | GATEWAY       | INTERFACE     |
| ------------- | ------- | ------------- | ------------- |
| 172.27.14.0   | /25     | -             | 172.27.14.1   |
| 172.27.14.224 | /28     | -             | 172.27.14.225 |
| Default       | 0.0.0.0 | 172.27.14.238 | 172.27.14.225 |

#### ROUTER 2

| RED           | MÁSCARA | GATEWAY       | INTERFACE     |
| ------------- | ------- | ------------- | ------------- |
| 172.27.14.128 | /25     | -             | 172.27.14.129 |
| 172.27.14.224 | /28     | -             | 172.27.14.238 |
| 172.27.14.248 | /30     | -             | 172.27.14.250 |
| 172.27.14.0   | /25     | 172.27.14.225 | 172.27.14.238 |
| 172.27.14.192 | /27     | 172.27.14.249 | 172.27.14.250 |
| 172.27.14.240 | /29     | 172.27.14.249 | 172.27.14.250 |
| Default       | 0.0.0.0 | 172.27.14.249 | 172.27.14.238 |

#### ROUTER 3

| RED           | MÁSCARA | GATEWAY       | INTERFACE     |
| ------------- | ------- | ------------- | ------------- |
| 172.27.14.192 | /27     | -             | 172.27.14.241 |
| 172.27.14.240 | /29     | -             | 172.27.14.193 |
| 172.27.14.248 | /30     | -             | 172.27.14.249 |
| 172.27.14.0   | /25     | 172.27.14.238 | 172.27.14.249 |
| 172.27.14.128 | /26     | 172.27.14.250 | 172.27.14.249 |
| 172.27.14.224 | /28     | 172.27.14.250 | 172.27.14.249 |

| RED           | MÁSCARA | GATEWAY       | INTERFACE     |
| ------------- | ------- | ------------- | ------------- |
| 172.27.14.192 | /27     | -             | 172.27.14.193 |
| 172.27.14.240 | /29     | -             | 172.27.14.241 |
| 172.27.14.248 | /30     | -             | 172.27.14.249 |
| Default       | 0.0.0.0 | 172.27.14.250 | 172.27.14.249 |

---

## Segunda parte

#### Pantallazo de configuración del PC1

![image](https://github.com/user-attachments/assets/8579235a-b032-41b9-9a05-558980f1264d)

### Pantallazo de configuración del interface fa0/0 del ROUTER1

![image](https://github.com/user-attachments/assets/e8010c8c-1572-4261-a401-9add365dd71c)

---

### Pantallazo de configuración del enrutamiento estático en el ROUTER2

![image](https://github.com/user-attachments/assets/bc4ff5a7-807f-4ef1-b356-ec4de0f7f5dd)

---

### Pantallazo de las tablas de rutas de los 3 routers 

#### Router 1

![image](https://github.com/user-attachments/assets/235c97e9-8d4e-4a80-a1a0-b45299e192ea)

↓

![image](https://github.com/user-attachments/assets/cd558d4f-91d4-45d2-b69e-65ad192a59e2)

#### Router 2

![image](https://github.com/user-attachments/assets/03edfa96-59cd-4ec3-abf5-de94e951b044)

#### Router 3 

![image](https://github.com/user-attachments/assets/526007e7-3df7-4fd4-b5cb-f53cb8600518)

↓

![image](https://github.com/user-attachments/assets/d659241e-fc19-4c44-8a74-0e08ff029362)

---

### Pantallazo de las tablas de rutas de los 3 routers

![image](https://github.com/user-attachments/assets/95e1e7aa-d2bc-4316-8dc3-502f852c8352)

↓

![image](https://github.com/user-attachments/assets/5fae9133-2b3b-469d-b1fa-0c88252ea070)

↓

![image](https://github.com/user-attachments/assets/0b886fab-a32c-4e7d-bc06-6f8506593ff6)

---

## Tercera parte

### Hacer un tracert del PC5 al PC1

Ahora, para poder comprobar el funcionamiento de nuestra red, vamos a hacer un tracer del PC5 al PC1. 

Con este comando podemos ver por donde va el paquete hasta llegar a su destino. 

![image](https://github.com/user-attachments/assets/4903d6f4-e2db-4ea3-aea2-5c8ad9715576)


---

### Crear 2 escenarios donde se vea la conexión entre diferentes redes.

Aquí he hecho que un paquete se envíe desde el MCHI5 al MCHI3.

En la lista de eventos se puede apreciar por donde ha ido el paquete (aunque no se ve todo el camino).

![image](https://github.com/user-attachments/assets/2a36c793-1bdd-4828-9712-baef25cc1565)

En el segundo escenario, he mandado un paquete desde el **MCHI4** al **MCH1** .
Como vemos, todas las redes se comunican entre sí.

![image](https://github.com/user-attachments/assets/2d64475b-3a7e-4ef4-ab1d-15dd2b7bddb8)


















