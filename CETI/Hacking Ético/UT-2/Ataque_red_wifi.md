## Índice

- [Introducción](#introducción)
- [Pasos previos](#pasos-previos)
- [Instalación e inicio](#instalación-e-inicio)
- [Ataque](#ataque)


## Introducción

En esta actividad se va a usar la herramienta de **airgeddon** para realizar un ataque a una red wifi. 

Esta herramienta funciona como un script y automatiza muchas tareas relacionadas con la evaluación de redes Wifi, como por ejemplo el monitoreo de redes disponibles. 

Además, también permite realizar diferentes ataques relacionados con las redes Wifi.

---

### Pasos previos

Nuestra antena de red ha de estar en modo monitor

`sudo airmon-ng start wlan0 9`

![1 2](https://github.com/user-attachments/assets/3e11b78b-4b82-4650-8025-51e2872ee76f)


Igualmente, con **airgeddon** se puede poner la tarjeta en modo monitor o también en modo managed.

---

### Instalación e inicio

Para poder usar esta herramienta he de obtener su repositorio de **github** y ejecutar el script **airgeddon**:

`git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git`
`cd airgeddon`
`chmod +x airgeddon.sh`
`./airgeddon.sh`


![1 1](https://github.com/user-attachments/assets/51f82b1f-42d4-4052-baee-e58775067e64)


↓

![2 1](https://github.com/user-attachments/assets/795c0003-8cf5-44f5-8c4c-4d44c78dd84c)


Al iniciarlo lo primero que hace es comprobar que el script se ejecutó con permisos de root, además de detectar el SO en el que se encuentra.

![2 3](https://github.com/user-attachments/assets/8cd06485-f7bd-411b-9c5e-9097ee9ff458)


Luego comprueba que herramientas están instaladas en el equipo y si falta alguna de las que necesita, nos pide instalarlas.

![2 4](https://github.com/user-attachments/assets/258b9f8d-95bd-486e-a5bc-2f66555180db)


---

### Ataque

Ya instalado, nos pide elegir una interfaz para usar. 
Elijo **wlan0**.

![2 5](https://github.com/user-attachments/assets/ef1bee8e-35b1-404a-966d-df2e9cb517a3)


Ya con la interfaz seleccionada, se pueden elegir varias opciones entre las que están:

- Seleccionar otra interfaz
- Poner la interfaz en otro modo
- Diferentes ataques
	- DoS
	- Handshake
	- WPS
- Créditos
- Menú de Opciones y lenguaje

![2 6](https://github.com/user-attachments/assets/14fb1e3e-d226-49d9-a771-5c22a14099b0)


Yo elijo la **opción 5** que es el menú del Handshake.
Al elegir esa opción se abre el siguiente menú:

![2 7](https://github.com/user-attachments/assets/458dbd74-0999-45af-aff5-bd30ac4de004)


Elijo la **opción 4** para buscar redes. 
Esta opción es similar al comando:

`airodump-ng wlan0`

![2 9](https://github.com/user-attachments/assets/b1194a0f-8aa8-4003-91c3-89c6a355dac4)


Encuentro un objetivo:

![2 10](https://github.com/user-attachments/assets/f05ea605-3a14-4358-99ab-78055667cd98)


Al salir del escaneo, **airgeddon** me muestra todas las redes que se han capturado.

![2 11](https://github.com/user-attachments/assets/19cc1a9e-d89d-400f-9e58-3d7832069c4d)


Elijo la red a la que le voy a hacer el ataque y entonces aparece el siguiente menú:

![2 12](https://github.com/user-attachments/assets/c2ebcc13-5ded-4667-a47f-a004866eb73f)


Para obtener el handshake voy a elegir la opción 1, que lo que hace es desautenticar a los clientes de esa red, para obtener el handshake. 
Se abrirá otra ventana donde tras esperar unos segundos, veo el handshake:

![3 2](https://github.com/user-attachments/assets/73455585-629c-44ca-af4e-abe7326ac886)


AL cerrarse la ventana, el script nos dice que la captura se encuentra en **/root/handshake-7A:4E:6F:94:FD:5F.cap**

![3 3](https://github.com/user-attachments/assets/9fa25684-25b0-4506-958e-fcaf8c2a304f)


Con esta información voy a ese directorio y hago un ataque de fuerza bruta:

`aircrack-ng handshake-7ª:4E:6F:94:FD:5F.cap -w contraseña.txt`

![3 5](https://github.com/user-attachments/assets/ede05880-fe5b-4881-8474-c1f9397d61fd)


↓

![3 6](https://github.com/user-attachments/assets/dade4816-1cae-4208-be96-098260907efe)


