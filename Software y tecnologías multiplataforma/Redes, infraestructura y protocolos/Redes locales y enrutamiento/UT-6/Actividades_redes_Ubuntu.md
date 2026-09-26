## Actividad 1

### Cambia el nombre del host 

Una vez hemos arrancado la máquina, deberemos de cambiar el nombre del host, desde el fichero /etc/hostname 

Pondremos **Ubuntu-mcm** 

Para ello, usamos el comando:

```bash
nano /etc/hostname
```

![image](https://github.com/user-attachments/assets/e2eea34d-f93a-427f-a208-3bb89dd277e3)

↓

![image](https://github.com/user-attachments/assets/ac2298d7-50ed-42de-b096-7829c24ec121)

---

## Actividad 2

### 

Ejecuta comandos mii-tool y ethtool 

Estos comandos sirven para ver y modificar los parámetros de configuración de tu tarjeta de red. 


Para poder usarlos, debemos instalarlas, ejecutando los comandos:

```bash
apt install net-tools
apt install ethtool
```

![image](https://github.com/user-attachments/assets/20eafc71-c80d-4ba3-a51b-b764ef4a9029)

↓

![image](https://github.com/user-attachments/assets/e667ae9c-1056-4383-a4d1-8ae74efc6654)

Una vez instalados, haremos previamente un ifconfig o un ip a, para poder 
ver cuales son nuestras interfaces de red y ejecutaremos los comandos:

```bash
mii-tool
ethtool 
```

![image](https://github.com/user-attachments/assets/2623c476-c28e-442e-beb7-11047520c98b)

↓

![image](https://github.com/user-attachments/assets/0cfa0803-5119-48ec-9cc4-9c4470b774c4)

Como podemos ver, ethtool es una mejor herramienta para ver estos parámetros, debido a que nos muestra mucha más información.

---

### Como añadirías un nuevo interface a 100 MBps 

```bash
enp0s4 -s eth0 speed 100 duplex-full 
mii-tool -F 100baseTx-FD 
```

---

## Actividad 3 

### Donde se guarda el archivo con la configuración gráfica

Este archivo se guarda en **/etc/NetworkManager/system-connections** 

Pero si vamos a buscarlo antes de editar los parámetros de NetworkManager, veremos que no está, este se creará después de que configuremos la red de forma gráfica. 

![image](https://github.com/user-attachments/assets/441d352b-775a-4b9c-a16e-d88a4fb5286e)

---

### Configura los parámetros de red en entorno gráfico

Para acceder a la configuración de red en entorno gráfico, haremos clic sobre un panel que se encuentra en la **parte superior derecha de nuestra pantalla>Cableado conectada>Configuración de red cableada**. 

![image](https://github.com/user-attachments/assets/e0eeb30c-1060-4a91-939c-4ee895868ecb)

---

### ¿Qué configuración tiene tu Interface? 

Para poder ver la configuración de nuestro interface, vamos a la opción **Detalles**

![image](https://github.com/user-attachments/assets/4c7b1979-726f-4223-b055-a37f3a9f9ffe)

Tenemos esta IP, debido a que el adaptador esta puesto como NAT, así que para que nos de una IP normal, deberemos poner el adaptador en modo puente. 

---

### Accede a la pestaña Identidad

![image](https://github.com/user-attachments/assets/dcfb2b27-503a-4d6b-81e6-0a9e102cfe9a)

---

### Accede a la pestaña IPv4 

![image](https://github.com/user-attachments/assets/1ffbafd7-6c61-4de7-9c32-ffb1128966ee)

Para agregarle una IP de forma manual hemos de establecer los siguientes parámetros.

![image](https://github.com/user-attachments/assets/0fc44551-6cec-47ec-ac61-8b4bdd0ad963)

Para que estos cambios tengan efecto, tenemos que apagar y volver a encender el interface.

![image](https://github.com/user-attachments/assets/f1fd207d-a665-4ba1-9606-3deae0e54acc)

---

### Observa la configuración de IPv6

Si vemos la configuración de IPv6, podemos ver que no está el Token FF:FE de EUI-64 por ningún lado. 
Este Token deberá de ser agregado más adelante.

![image](https://github.com/user-attachments/assets/d322a771-a106-4632-8a69-4504b2f2e3dc)

La dirección IPv4 y la Gateway es otra, debido a que en clase cambiamos el adaptador de NAT a puente (aunque deberíamos de haber creado la máquina con adaptador puente, tal y como pone en el enunciado) y por eso ahora coge esa IP. 

---

### Accede a la pestaña Seguridad

En la pestaña Seguridad, podemos activar el protocolo **802.1x**, que es un protocolo de acceso a puertos para proteger redes mediante autenticación. 
Hay tres componentes básicos en la autenticación 802.1X

**Solicitante**

- Un cliente de software que se ejecuta en la estación de trabajo Wi-Fi.

**Autenticador**
**Servidor de autenticación**

- Una base de datos de autenticación

Y tiene varios modos de Autentificación, en este caso, **MD5** el cual es un tipo de autenticación EAP que proporciona compatibilidad EAP de nivel básico.  

Normalmente, **EAP-MD5 no se recomienda para implementaciones de LAN Wi-Fi**, ya que puede permitir la derivación de la contraseña del usuario.  

Solo permite la autenticación unidireccional y lo más importante, no proporciona un medio para derivar claves de privacidad equivalente a cableado (WEP) dinámicas por sesión.

![image](https://github.com/user-attachments/assets/5d29f610-7c33-43a4-b09c-3bbb7ab24201)

---

## Actividad 4

### Editar el archivo de configuración de red

Este archivo se encuentra en **/etc/NetworkManager/system-connections** y no aparecerá hasta que hayamos cambiado algún parámetro de la configuración de la red. 

![image](https://github.com/user-attachments/assets/4f35c8af-35b2-43b5-894a-b225fe4f0261)

Para poder ver su contenido, lo abriremos con el editor de textos **nano**

![image](https://github.com/user-attachments/assets/6cf0748e-351c-4772-bfb6-7a3f673e6d1e)

↓

![image](https://github.com/user-attachments/assets/cc200c42-d4b0-436d-8505-4fd829d9af36)

### Ej3ecuta el comando ip a

Ejecutamos el comando y vemos lo siguiente.

![image](https://github.com/user-attachments/assets/967b0ef8-32d0-4b53-9d03-b9ae737ea01c)

---

### Cambiar valores de IPv6 para que la dirección tenga formato EUI-64

Como podemos ver, IPv6 no tiene formato EUI-64, así que vamos a cambiárselo. 
Accedemos al anterior fichero y cambiamos el valor **addr-gen-mode**

![image](https://github.com/user-attachments/assets/f314a24d-789e-4246-a9be-f3a2ce9b554d)

Reiniciamos el equipo y veremos, que ya tenemos el token FF:FE en nuestra IPv6.

![image](https://github.com/user-attachments/assets/a287e224-7e77-4bc9-9680-ac398446cf24)

---

### Hacer Ping a la red 200 y a la máquina real. 

Ahora, para comprobar la conexión, vamos a hacer un PING  a la red 200 (la de VirtualBox). 
Y vemos que obviamente, obtenemos respuesta. 

![image](https://github.com/user-attachments/assets/c7495293-7a14-485f-980c-402d762be5dc)

Y ahora se lo hacemos a la máquina real, pero vemos que no podemos.![image](https://github.com/user-attachments/assets/4e599308-2f83-4d08-b9af-8ffa536ff319)

![image](https://github.com/user-attachments/assets/ff65f367-b97d-45fc-b8c7-de1bc77802c2)

Pero desde la real, si podemos hacérselo a la virtual. 

![image](https://github.com/user-attachments/assets/006e60f6-9b7b-4545-9c7d-ef7e8d3c99ad)

---

## Actividad 5

### Crea un 2º interface en tu máquina virtual en modo red interna 

Apagamos la máquina, nos vamos a Red y creamos un nuevo adaptador en modo red interna. 

![image](https://github.com/user-attachments/assets/66b33eeb-528e-4b19-bb1b-f8d91607d7b8)

---

### Analizar los interfaces de red 

Ejecutamos el comando **ip a** y vemos que ahora tenemos 3 interfaces.

![image](https://github.com/user-attachments/assets/fe5d587c-775e-4fcf-9ed9-5b88f97c4a7e)

También podemos ver la configuración de los interfaces con el comando **ifconfig**

![image](https://github.com/user-attachments/assets/4b922833-34dd-4dc8-926a-e6b252715b27)

---

### Configurar interfaces 

A la interfaz **enp0s3** le daremos configuración por DHCP. 
En cambio, al nuevo interfaz **enp0s8** le daremos una configuración estática. 
Para ello, vamos a configurar el archivo **/etc/netplan/network-managerall.yaml** (si tuviéramos una versión server de Ubuntu, sería el archivo **etc/netplan/netcfg.yaml**)

![image](https://github.com/user-attachments/assets/5e455122-47a9-4946-bfb1-94abb27a3e02)

---

### Configurar interfaces

Los valores del interfaz **enp0s8** serán:  

**IP** -  192.168.10.214/24
**DNS** - 8.8.8.8 1.1.1.1
**Ruta** - 192.168.0.1

![image](https://github.com/user-attachments/assets/89c50bfc-6c3a-41f0-8448-a5f87b93f4d7)

Para que estos cambios se guarden, ejecutamos un:

```bash
netplan apply
```

![image](https://github.com/user-attachments/assets/045777d8-8c19-4c2f-b007-6f6b2cbeafd6)

---

### ¿Qué configuración prevalece?

Si volvemos a ver la configuración, veremos que se cambiaron los valores.

![image](https://github.com/user-attachments/assets/75de5ef2-196a-4f39-b7ef-bd8d59f6dd10)

De hecho, vemos que la configuración de enp0s3 también cambio y que cogio una IP por DHCP y ya no está la 192.168.200.14 que configuramos antes. 

Esto es debido, a que prevalece la configuración de alto nivel, frente a la configuración gráfica. 

---

### Anula la configuración del entorno gráfico

Volvemos al fichero anterior y ponemos un comentario en la línea **renderer: NetworkManager**

![image](https://github.com/user-attachments/assets/1c608589-ff06-4839-add8-b697f182b24a)

Y volvemos a hacer un:

```bash
netplan apply
```

![image](https://github.com/user-attachments/assets/98f2ec24-72db-47e6-89f6-7f7de5d6ccd8)

---

### Analiza la tabla de rutas

Para poder ver la tabla de rutas del equipo, ejecutamos un: 

```bash
route
```

![image](https://github.com/user-attachments/assets/a085c031-66c9-4c8a-97d1-c728080008cc)




