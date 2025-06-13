<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Instalar SO](#instalar-so)
- [Crear servidor VPN](#crear-servidor-vpn)
- [Cliente](#cliente)

</details>

## Introducción

En esta práctica se va a instalar crear un servidor VPN en una Raspberry PI4.


---
### Instalar SO

Para instalarlo quito la tarjeta micro SD de la raspberry pi4 y la conecto a mi equipo y procedo a descargarme el programa de instalación del SO - [enlace](https://www.raspberrypi.com/software/)


![1 1](https://github.com/user-attachments/assets/49207cd9-bf7b-4cfb-a26e-29d9c39df2bb)


↓

![1 2](https://github.com/user-attachments/assets/dfa35e74-d6d1-4489-8c5d-bb6a2e9c7edc)


El primer paso es elegir el modelo de la Raspberry Pi. En mi caso es la **Raspberry Pi 4**.

![1 4](https://github.com/user-attachments/assets/245ca61f-7024-4a6f-8c6e-202a72a7b83e)



Lo siguiente es elegir el tipo de sistema operativo. En mi caso instalaré la **versión Lite**.

![1 5](https://github.com/user-attachments/assets/556440b7-b024-459a-848c-a9dd4ef29a1d)


Por último toca elegir el dispositivo de almacenamiento donde instalaré el sistema operativo, el cual será la tarjeta micro SD que conecte al equipo anteriormente:

![1 6](https://github.com/user-attachments/assets/a59db9a4-888b-4bfb-82d9-4d47914d37ce)


Ahora toca configurar la instalación:

![1 7](https://github.com/user-attachments/assets/01568e3d-63ef-4282-927b-117c356c038b)


Y el uso de ssh para conectarme en remoto:

![1 8](https://github.com/user-attachments/assets/472fc1ed-7b5d-45d5-b2cd-6440497bc28b)


Ejecuto la instalación y cuando termina retiro la tarjeta micro SD y la vuelvo a conectar a la Raspberry Pi 4.

![1 9](https://github.com/user-attachments/assets/eb39bb8a-e123-4a34-84e1-f6a4bb3464dd)


Inicio la Raspberry PI 4 y compruebo la conexión:

![1 10](https://github.com/user-attachments/assets/e8e77aff-bec3-4932-b1d9-ddbd7f86dff5)


Me conecto por ssh.

![2 1](https://github.com/user-attachments/assets/cdca0085-7cec-4171-acf3-2b7c4e4df167)


---

### Crear servidor VPN

Para poder crear mi servidor VPN voy a instalar PiVPN el cual es un script que facilita la instalación de OpenVPN

```bash
curl -L https://install.pivpn.io | bash
```

![3 1](https://github.com/user-attachments/assets/fad3239e-64ae-4ad0-b2a0-9358512501b3)


Se inicia el script y lo primero que me pide es establecer la dirección IP de mi equipo. 
Le digo que mantenga la IP que tenia y la cambie por estática en vez de dinámica:

![3 3](https://github.com/user-attachments/assets/a0d8bf04-e627-4a93-8de6-24d080b8e97a)


↓

![3 4](https://github.com/user-attachments/assets/e6f80acb-d706-413b-ba2e-ec0a78b30d03)


El siguiente paso es elegir un usuario:

![3 5](https://github.com/user-attachments/assets/aa238efb-4e80-4fdb-93c3-d9663d0b1103)


Ahora elijo el modo de instalación y es que con este script puedo hacer que mi Raspberry Pi sea un servidor VPN de WireGuard u OpenVPN.
Elijo OpenVPN:

![3 6](https://github.com/user-attachments/assets/49f46edf-849f-461e-822c-be23b51d70a2)


El protocolo que usaré será UDP:

![3 8](https://github.com/user-attachments/assets/22dc3db4-aeed-4539-92bd-31debdc23358)


Y el puerto el 1194:

![3 9](https://github.com/user-attachments/assets/7de06740-f187-46bc-8a2a-9a04f577ba39)


El proveedor del servidor DNS será Google:

![3 10](https://github.com/user-attachments/assets/c1a6cfaf-b088-4f65-babe-c860dd23dba7)


Y la IP pública que usarán los clientes VPN será la 93.156.220.202.

![3 11](https://github.com/user-attachments/assets/5a476373-fd57-4a90-ad87-98042fc39d7a)


Con todo esto ahora se crean las llaves del servidor y HMAC. Estas son un mecanismo criptográfico utilizado para asegurar la integridad y autenticidad de los mensajes transmitidos. Se usan para verificar que los datos no hayan sido alterados durante su transmisión y que provienen de una fuente confiable

![3 12](https://github.com/user-attachments/assets/d94f8dc7-c9b2-4592-9526-7c557b35f6fc)


Antes de salir de la instalación / configuración nos sale un mensaje de que para crear perfiles de clientes hemos de ejecutar el comando **pivpn add**

![3 13](https://github.com/user-attachments/assets/71525eff-f06e-4aaa-b73e-e0aeeae258d0)


Ejecuto el comando y creo un nuevo perfil de cliente:

![4 2](https://github.com/user-attachments/assets/c8998203-2d36-4411-a6c8-80c0f25f5acd)


Y ya tenemos el archivo del cliente creado.

![4 3](https://github.com/user-attachments/assets/952b3b8a-c448-4438-88c5-ea3d3792efbd)


Ahora este archivo hay que exportarlo a un dispositivo para que este pueda conectarse a la VPN.

---

### Cliente

Instalo la app de **OpenVPN** para el teléfono e importo el archivo **cliente.ovpn**:

![5 1](https://github.com/user-attachments/assets/8605294d-1147-445f-9690-5723c3b93f2c)


Pongo las credenciales que cree anteriormente:

![5 2](https://github.com/user-attachments/assets/eec27480-9909-4451-af02-1d4bfb532a6d)


Y me conecto, aunque al final no consigo conectarme por culpa de mi proveedor de Internet.

![5 3](https://github.com/user-attachments/assets/92c1b9e8-cf02-4b73-95b8-93933cadf536)
