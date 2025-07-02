## Enunciado

Realiza el diseño lógico de interconexión de diferentes redes lógicas y comunicación de ellas a través de routers Windows y Linux. Configuración de red y enrutamiento en máquinas virtuales Windows y Linux. 

---

## Gráfico

![image](https://github.com/user-attachments/assets/86ad4f87-5fda-4719-b73d-a01dbf365c03)

---

## Rutas 

### Router 1


| Red     | Máscara | Salto a gateway | Interfaz de salida |
| ------- | ------- | --------------- | ------------------ |
| 102.0   | /24     | -               | Int 4              |
| 32.0    | /23     | -               | Int 3              |
| 20.0    | /24     | 32.254          | Int 3              |
| Default | 0.0.0.0 | 102.2           | Int 4              |

### Router 2

| Red     | Máscara | Salto a gateway | Interfaz de salida |
| ------- | ------- | --------------- | ------------------ |
| 32.0    | /23     | -               | Int 1              |
| 102.0   | /24     | 32.254          | Int 1              |
| 20.0    | 7/24    | -               | Int 2              |
| 20.64   | /27     | 20.29           | Int 2              |
| Default | 0.0.0.0 | 32.254          | Int 1              |

### Router 3

| Red     | Máscara | Salto a gateway | Interfaz de salida |
| ------- | ------- | --------------- | ------------------ |
| 20.64   | /27     | -               | Enp0s8             |
| 20.0    | /27     | -               | Enp0s3             |
| 32.0    | /23     | 20.30           | Enp0s3             |
| Default | 0.0.0.0 | 20.30           | Enp0s3             |

---

## Windows

### Preparativos

Antes de configurar nada, tenemos que añadir un segundo interfaz de red a la máquina. 

![image](https://github.com/user-attachments/assets/e42cef15-6a7a-4271-8a34-e779fad4e1d3)

Y tendremos un fondo de pantalla personalizado, en mi caso, el Renault R25 de Fernando Alonso que usó en la temporada 2005 de la F1. 

![image](https://github.com/user-attachments/assets/7ab30d33-8d15-4d28-8f6f-3c5ed2b36ca5)

---

### Cómo se configuran todos sus interfaces

Para poder configurar los interfaces en Windows con el entorno gráfico, tenemos que acceder a la configuración de red, mi caso, llegue desde  **Buscador de Windows>Ver conexiones de red**. 

![image](https://github.com/user-attachments/assets/1a861163-bff5-4cf3-acc0-eb731fee522c)

Para poder configurar un interfaz, hacemos **Interfaz>clic derecho>Propiedades>Protocolo IPv4 y configuramos los parámetros TCP/IP**.

![image](https://github.com/user-attachments/assets/a90c6298-254b-4212-877d-c76e87d08c8d)

Lo mismo con la otra interfaz. 

![image](https://github.com/user-attachments/assets/6930e79e-f700-47c9-982c-5505e82b86ca)

---

### Mediante comando mostrar el resultado de la configuración de los interfaces

```bash
ipconfig
```

![image](https://github.com/user-attachments/assets/0300b201-01c4-47f1-b474-306146696677)

---

### Activación del servicio de enrutamientos (entorno gráfico)

Vamos a **services.msc** y activamos el servicio Enrutamiento y acceso remoto. 

![image](https://github.com/user-attachments/assets/44e59d49-950a-4d3b-853e-fbfa251d1e34)

↓

![image](https://github.com/user-attachments/assets/871b0374-b224-4e4d-aaab-30e03114dcfd)

---

### Indicar en modo comando como añadirías en la tabla de rutas la ruta default y la ruta indirecta que figuran en las tablas que has diseñado junto al gráfico.


```bash
route add -P “IP” mask “máscara” “salto” 
```

![image](https://github.com/user-attachments/assets/611d4888-86ef-4580-afc6-7c16ca45d273)

---

### Mostrar la tabla de rutas con el comando correspondiente 

```bash
route print
```

![image](https://github.com/user-attachments/assets/a286ab51-58fa-41c1-953f-1708c284dc25)

---

## Ubuntu

### Preparativos

Antes de configurar nada, tenemos que añadir un segundo interfaz de red a la máquina.

![image](https://github.com/user-attachments/assets/e2b01214-9624-4d7a-b8bd-b6722a52cc4f)

----

### Configurar interfaces usando Netplan 

Para poder configurar los interfaces, tendremos que configurar el archivo: **/etc/netplan/01-network-manager-all.yaml**

![image](https://github.com/user-attachments/assets/77fb2fa6-d02f-4a40-90fe-d1e12bbbfea3)

Dentro del archivo, pondremos la siguiente configuración:

![image](https://github.com/user-attachments/assets/b093462e-0cdb-4f4b-be81-ed4c2aa63cab)

Y para poder aplicar los cambios, usamos el comando:

```bash
netplan apply. 
```

### Mediante comando, mostrar configuración de los interfaces:

```bash
ip a
```

![image](https://github.com/user-attachments/assets/8a888824-a100-4693-97ba-a953f043422b)

---

### Como activar servicio de enrutamiento

Para poder activar el servicio de enrutamiento, tenemos que ir al archivo **/etc/sysctl.conf** y editarlo, activando esta línea. 

![image](https://github.com/user-attachments/assets/937d0d2c-6110-4e95-be5b-913ba7960d42)

↓

![image](https://github.com/user-attachments/assets/73ddcc89-1e50-44f3-9b3d-10255f8b0ed8)

---

### Indica como añadirías en la tabla de rutas la ruta default y la ruta indirecta usando Netplan 

Volvemos al archivo **/etc/netplan/01-network-manager-all.yaml** y tendremos que añadir las rutas en el interfaz **enp0s3**.

![image](https://github.com/user-attachments/assets/0eb053af-ab7b-4c2c-ab1f-ea8c93e12a85)

---

### Mostrar las tablas de rutas con el comando que corresponda

Aplicamos los cambios y para poder ver el resultado de esta configuración, usaremos el comando:

```bash
route
```

![image](https://github.com/user-attachments/assets/b5a452d0-9ec6-4271-a210-05573022b3b0)















