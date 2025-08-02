## Diagrama lógico de red con todos los elementos implicados.

<img width="799" height="439" alt="image" src="https://github.com/user-attachments/assets/5c04ca09-0c8e-41ef-a9db-513398088ea0" />

---

## Instalación del servidor FreeRADIUS en una máquina virtual con sistema operativo Linux. 

Una vez visto el diagrama de red, vamos a hacer la práctica 
Esta práctica consistirá en la instalación y configuración de un sistema de autenticación empresarial para WPA2 mediante un servidor RADIUS con un Kali/Ubuntu y la herramienta FreeRADIUS. 
Nosotros hemos usado un Ubuntu 22.04 debido a diferentes problemas con Kali Linux. 
Lo primero que haremos, será configurar la IP de nuestra máquina, para que pueda comunicarse con el Router que vamos a usar. 

<img width="719" height="300" alt="image" src="https://github.com/user-attachments/assets/ded13d9b-35f1-4810-a561-9636d3c4c05c" />

Una vez los cambios realizados, procedemos a instalar **FREERADIUS.**

```bash
apt install freeradius
```

<img width="525" height="78" alt="image" src="https://github.com/user-attachments/assets/4763e230-5e50-4c30-949b-c99c7db360bb" />

---

## Configuración del sistema operativo y FreeRADIUS

Después de instalarlo, procederemos a configurarlo. 
Lo primero que haremos, será configurar la cuenta del usuario con el que accederemos al router.

Editaremos el archivo **/etc/freeradius/3.0/users** 

<img width="637" height="27" alt="image" src="https://github.com/user-attachments/assets/6425d7d0-c370-4602-940a-ef3f0a984bfa" />

En nuestro caso, usuario **usuario** con contraseña **tecnonano**. (aunque luego configuramos otro adicional, del cual no tenemos captura)

<img width="441" height="31" alt="image" src="https://github.com/user-attachments/assets/ef120b84-8917-4645-9826-46a075d4f2aa" />

El siguiente paso es configurar el dispositivo que va a poder ponerse en contacto con el servidor (el router) (este texto no está sacado de Bing). 

Editaremos el archivo **/etc/freeradius/3.0/clients.conf**

<img width="664" height="32" alt="image" src="https://github.com/user-attachments/assets/98850639-6b61-4c6b-86e5-2c5644e3a5ec" />

Y configuraremos, usando la siguiente configuración, para el dispositivo con la IP 192.168.32.14 (el router).

<img width="361" height="110" alt="image" src="https://github.com/user-attachments/assets/6b641e81-d5ed-4a20-ae43-8a76a5cda972" />

Después de configurar ambos archivos, comprobaremos que al menos la sintaxis de los archivos sea la correcta con un 

```bash
sudo freeradius -CX
```

<img width="438" height="26" alt="image" src="https://github.com/user-attachments/assets/c729d620-e711-48e7-85a9-e4629bbc84e4" />

↓

<img width="318" height="21" alt="image" src="https://github.com/user-attachments/assets/562d14f6-de98-4baf-8740-f9b30221e84f" />

Reiniciamos el servicio:

```bash
systemctl restart freeradius
```

<img width="580" height="48" alt="image" src="https://github.com/user-attachments/assets/09813c96-a896-42e9-b896-b0fc746fc561" />

---

## Configuración del cliente RADIUS (AP)

El siguiente punto es sobre la configuración del router. 
Lo primero es poder acceder a él, lo cual, después de un par de reinicios y 5 mudanzas de equipos y 33 cambios de IP, hacemos.

<img width="316" height="304" alt="image" src="https://github.com/user-attachments/assets/cb96557c-f8eb-4147-873d-a4d7d03bb69c" />

Ya dentro, configuraremos los siguientes puntos:

**Wireless Security**

Pondremos el SSID de la red y el tipo de seguridad, además de la IP, el puerto y el **“secreto”** que comparten el servidor RADIUS y el router.

<img width="380" height="301" alt="image" src="https://github.com/user-attachments/assets/58ed7cfc-1d21-4103-bdbd-0ac62673b8a6" />

Y, por último, esta pantalla de configuración

<img width="457" height="477" alt="image" src="https://github.com/user-attachments/assets/723bebaa-78a1-4ae5-b00a-b8986c532f9a" />

---

### Configuración de los equipos inalámbricos cliente y conexión a la red inalámbrica. 

Ahora, deberemos de comprobar el correcto funcionamiento de los pasos realizados.

Para ello, nos conectaremos con un móvil **OnePlus Nord 3**, con un Móvil **Realme GT 2** y con un portátil proporcionado por el centro.

Por desgracia, en estos móviles no deja sacar captura de pantalla de la configuración de la red cuando nos conectamos a la red (usuario + contraseña) por motivos de seguridad.

<img width="235" height="513" alt="image" src="https://github.com/user-attachments/assets/f67fd021-a800-437e-a40c-f5b6e60dbf38" />

↓

<img width="232" height="518" alt="image" src="https://github.com/user-attachments/assets/bb6dd103-cd23-45a9-9142-eeb2308d8e55" />

↓

<img width="368" height="282" alt="image" src="https://github.com/user-attachments/assets/cac65cdb-99a8-46e6-a508-6e373e83fa02" />

---

## Pruebas de funcionamiento

Y aquí con el portátil, haciéndole un PING al OnePlus Nord 3

<img width="619" height="465" alt="image" src="https://github.com/user-attachments/assets/50739a25-ecfa-4f83-903d-64e17e134da4" />







