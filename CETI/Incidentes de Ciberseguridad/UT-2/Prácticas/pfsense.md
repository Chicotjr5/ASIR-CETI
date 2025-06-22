<details>
  <summary><h2>Índice</h2></summary>
  
- [Introducción](#introducción)
- [Configurar pfSense](#configurar-pfsense)
- [Ubuntu-Red_NAT](#ubuntu-red_nat)
  - [Comprobar funcionamiento](#comprobar-funcionamiento)
- [Metasploitable](#metasploitable)
  - [Configurar](#configurar)
  - [Comprobación](#comprobación)
- [Ubuntu-Red_Interna](#ubuntu-red_interna)
  - [Configurar](#configurar-1)
  - [Comprobar](#comprobar)
- [Parrot](#parrot)
  - [Configurar](#configurar-2)
  - [Comprobar](#comprobar-1)


</details>

---

## Introducción

En esta práctica se va a crear una red con la siguiente infraestructura: 

![image](https://github.com/user-attachments/assets/6772f14d-6c02-4405-99a5-d92d00de164a)

---

### Configurar pfsense

El primer paso para montar esta infraestructura es configurar **pfsense**. 
A la máquina la ponemos 2 interfaces, uno en **modo puente** y otra en modo **Red NAT**.

![1 1](https://github.com/user-attachments/assets/945ac9b5-dc4e-401b-8602-c955604139c1)

↓

![1 2](https://github.com/user-attachments/assets/6dd62682-5aa0-4c6c-9744-32689dff738b)

Se inicia el equipo y veo 2 interfaces, una de **conexión alámbrica (lan0)** y otra **inalámbrica (wan0)** además de las opciones de configuración que tenemos.

![image](https://github.com/user-attachments/assets/6bd52f20-5684-44fe-8653-8f92e9406fcf)

Como no quiero esas IP en las interfaces, voy a configurarlas. 
Yo me encuentro en la red 192.168.233.1/24 debido a que uso los datos móviles. 

Para cambiar la IP selecciono la opción 2 y elijo la interfaz 1 que es la que quiero editar junto con la nueva IP que es la 192.168.233.254.

![image](https://github.com/user-attachments/assets/e3121eb3-a185-47f9-94a5-903c3b26aa4a)

Ahora configuro la máscara de la IP, que va a ser /24, le digo que no quiero configurar IPv6 y finalizo el proceso.

![image](https://github.com/user-attachments/assets/df406bb9-a3e5-4cc7-a23e-27c5dc840167)

Como se puede observar, la IP de la interfaz wan0 ha sido modificada.

![2 6](https://github.com/user-attachments/assets/2b5b11ea-ab1a-4e13-af74-7cdf0941d1f7)

Para la lan0 repito el mismo proceso y le cambio la IP a la 10.0.2.10/24

![2 7](https://github.com/user-attachments/assets/2311a6bd-25c1-4366-882c-08a58016d0cc)


Para ver que funciona esta configuración establezco una conexión con mi equipo host **192.168.233.53** y la puerta de enlace **192.168.233.126**

![3 3](https://github.com/user-attachments/assets/0ab6c878-ea22-43d3-84f5-a7ac2137eee3)

↓

![3 4](https://github.com/user-attachments/assets/d59f83f9-1b56-49e6-8de8-d28c5c833fe0)

SI se intentase hacer una conexión desde el host hasta pfsense, el firewall no dejaría hacerla. 
Principio de **mínima superficie de ataque**:

![image](https://github.com/user-attachments/assets/223344d9-5193-4496-89c1-6725c370d8d4)

---

### Ubuntu-Red_NAT 

Uno de los equipos que forma parte de esta red es un Ubuntu al cual le configuro su adaptador como **Red Nat**.

![3 5](https://github.com/user-attachments/assets/435767e2-ff88-4d28-8587-07e65c295ce8)

Si realizo conexiones a las interfaces de **pfsense** solo podré conectarme a la interfaz **lan0**.

![3 6](https://github.com/user-attachments/assets/ce3b8172-6f9c-4a3c-a1a6-fceb0ffaded7)

Ahora configuraré la IP del equipo para que se encuentra dentro de la **RED_NAT**. 

**IP – 10.0.2.100/24**
**Gateway – 10.0.2.10**

Se puede configurar por interfaz gráfica:

![4 2](https://github.com/user-attachments/assets/c6946dc5-cbc1-42d9-86c2-92fef763922b)

O editando el archivo **/etc/netplan/50-cloud-init.yaml** 

![4 9](https://github.com/user-attachments/assets/aba107b7-408a-4216-8202-291779985961)

Para guardar los cambios que he realizado en el archivo ejecuto el comando:

```bash
netplan apply
```

![4 10](https://github.com/user-attachments/assets/10cea6a1-ebdf-4c34-8131-48b9ede643e9)

Para ver la configuración actual uso los comandos:

```bash
ip a
route -n
```

![4 11](https://github.com/user-attachments/assets/09fb82b3-e0f3-4285-a13a-3480f63c9ec3)

#### Comprobar funcionamiento 

Para comprobar que esta configuración funciona hago ping a las IP **10.0.2.10, 192.168.1.254, 192.168.1.1**

![4 12](https://github.com/user-attachments/assets/095dac9a-d6d5-47c5-9dde-4787ba7c73c9)

↓

![4 13](https://github.com/user-attachments/assets/9889bf19-d8af-423e-9195-49e22ffe5ad4)

Solo tenemos conexión a las IP **10.0.2.10** y **192.168.1.254** que son las IP de **pfsense** mientras que no accedo a la Gateway debido a que pfsense me lo bloquea. 
Desde el navegador web puedo acceder a la interfaz de usuario de **pfsense**.

![4 14](https://github.com/user-attachments/assets/50464660-9e95-46e4-9c39-a9c3f7984cd6)

**Nota**

A partir de aquí la IP de pfsense cambia a ser la 192.168.1.254 mientras que la IP 10.0.2.10 sigue siendo la misma.

---

### Metaspoitable

#### Configurar

La siguiente máquina por configurar es la de **Metasploitable**. 
Inicio sesión con las siguientes credenciales:

**Msfadmin:msfadmin** 

![5 2](https://github.com/user-attachments/assets/9e22e45c-2ad5-43c9-9b37-73465c5e50a6)

La máquina hará las funciones de un router debido a que dejará acceder a los equipos de la red interna al resto de equipos de la red interna. 

Tendrá la siguiente configuración: 

- **ETH0 - 10.0.2.254/24 - 10.0.2.10**
- **ETH1 - 172.16.0.10/16**

Esta configuración se aplica editando el fichero **/etc/network/interfaces**

![5 4](https://github.com/user-attachments/assets/f8bf8bf3-d0cf-42a2-95ce-1c0ec0ae9904)

↓

![5 5](https://github.com/user-attachments/assets/72a53b32-cf69-47d7-a352-32ecd1983293)

Para guardar los cambios ejecuto el comando:

```bash
sudo /etc/init.d/networking restart 
ip a 
```

![5 6](https://github.com/user-attachments/assets/9b192f98-2a4d-4382-9928-3dd30e765c92)

#### Comprobación

Ahora compruebo que el equipo hace ping al resto de máquinas: 

![5 7](https://github.com/user-attachments/assets/da6f6742-8acb-43aa-b74e-05b5991e9d02)

↓

![5 8](https://github.com/user-attachments/assets/c47ef7aa-fe2c-4c92-8565-0fe4c1e4b1b7)

↓

![5 9](https://github.com/user-attachments/assets/6ac19ec3-ad73-43c1-a412-d8056129b568)

Hace ping a todas las máquinas (menos a la 192.168.1.1 obviamente) 
La tabla de enrutamiento: 

```bash
route -n
```

![5 10](https://github.com/user-attachments/assets/ec626c1f-76bb-4685-bd91-9d893bf13849)

---

### Ubuntu-Red_Interna
#### Configurar

Ahora voy a hacer que la máquina de Ubuntu este dentro de la **Red Interna** de Metasploitable. 
Para configurar su IP vuelvo a editar el archivo **/etc/netplan/50-cloud-init-yaml** 

![6 1](https://github.com/user-attachments/assets/b2987dba-f6c1-43ab-89b4-09449f18a75f)

Con un **ip a** compruebo que se ha cambiado la IP

![6 2](https://github.com/user-attachments/assets/1a78c7ee-36d3-4ecf-ac3e-1c9437a2b802)

#### Comprobar

Ahora esta máquina debería de hacer ping a las 2 interfaces de metasploitable y a pfsense (y por tanto a cualquier equipo que se encuentre en la Red_Nat pero actualmente no hay ninguna). 

![image](https://github.com/user-attachments/assets/7f6810c6-7be9-4cd3-b0d3-9edd5663a74f)

↓

![6 3](https://github.com/user-attachments/assets/52c4eb62-406b-4560-b2e0-2b1dce75f758)

Pero no me hace ping a **pfsense**.

---

### Parrot

#### Configurar

Esta máquina se encontrará en la **Red_Nat**. 

![7 1](https://github.com/user-attachments/assets/87eb8f06-db98-40d2-b38c-921053d3aa37)

Su configuración es la siguiente:

**IP - 10.0.2.100/24 - 10.0.2.10**

Es la misma configuración que la que tenía la máquina de Ubuntu. 
Para configurarla se hace de la misma forma que la máquina de **metasploitable**, oseasé, editando el fichero **/etc/network/interfaces** 

![7 2](https://github.com/user-attachments/assets/e5d20c9d-8bf5-4019-ad69-1e4ca3e00347)

Para guardar los cambios ejecuto el mismo comando que en **metasploitable** 

```bash
/etc/init.d/networking restart 
ip a 
```

![7 3](https://github.com/user-attachments/assets/0293ee21-51a4-42b8-9f95-fbdb87784c33)

#### Comprobar

Esta máquina debería de hacer ping a las interfaces de **pfsense** pero no a la IP 192.168.1.1. 

![7 5](https://github.com/user-attachments/assets/a278dd44-7665-4c87-b00a-cc1e0cb5cfb3)

Además de que tampoco hace ping al equipo Ubuntu que se encuentra en la red interna.

![7 6](https://github.com/user-attachments/assets/7e93a56b-bab9-4734-a781-24f3620fe92d)

Pero esto último tiene arreglo. 
Para que Parrot haga Ping a Ubuntu tan solo hay que añadir la ruta a la tabla de rutas. 
Con un **route** se puede ver la tabla de rutas actual del equipo:

```bash
route
```

![7 7](https://github.com/user-attachments/assets/b826850b-8169-4c95-8bb2-eadc5459d1e3)

Con el siguiente comando añado la ruta:

```bash
route add -net 172.16.0.0 netmask 255.255.0.0 gw 10.0.2.254
```

Ya con la ruta añadida, hago un ping y veo que se realiza correctamente.
Además, se ha modificado la tabla de rutas.

![7 8](https://github.com/user-attachments/assets/2a189ee7-221f-4d67-be13-21a5ce563319)


















