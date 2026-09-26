## Creación de máquina Virtual 

En esta primera parte vamos a crear una máquina virtual en VirtualBox, que tenga 2GB de RAM, tenga 2 discos duros, uno SATA y otro IDE. 

Empezamos abriendo el programa, donde nos saldrá la pantalla de inicio. 

Y hacemos clic en Añadir, lo cual hará que nos salga el asistente para empezar a crear la máquina. 

![image](https://github.com/user-attachments/assets/6fba1d31-97d8-48d1-9772-3963f2e85556)

Después de elegir el S.O a instalar y el nombre de la máquina, nos sale la siguiente pantalla, la cuál es sobre el tamaño que tendrá la memoria RAM. 

Nosotros lo dejamos en 2GB

![image](https://github.com/user-attachments/assets/9350d6bd-70ac-442b-a561-96d20e520ba0)

En la siguiente pantalla vamos a añadir un disco duro. 
Nos da 3 opciones pero nosotros elegimos: **Crear un disco duro virtual ahora** 

![image](https://github.com/user-attachments/assets/03e70622-b413-4c6f-be76-b8809e4eaebc)

En la siguiente pantalla, nos da 3 opciones de disco duro virtual, pero también nos sale el botón **Modo Experto**

![image](https://github.com/user-attachments/assets/edcb59a9-3f70-49ee-9516-1576dedf07d1)

Desde este modo podemos decirle de que capacidad va a ser el disco (40 GB) y el tipo de disco duro virtual que va a ser (en este caso, DVI)

![image](https://github.com/user-attachments/assets/10f2b38c-13ce-4a81-ae2d-c4f4c41c45ed)

Y ya tenemos nuestra máquina virtual creada.

![image](https://github.com/user-attachments/assets/d2f3ffdb-200c-45f2-bdf8-e5e1af8341e4)

### Añadir disco duro

Pero aún tenemos que añadir otro disco duro más. 
Así que damos sobre el botón **Configuración** y nos metemos a la configuración de la máquina. 

Vamos al apartado **Almacenamiento** y damos sobre el botón: 
- **Añadir nuevo controlador de Almacenamiento.** 

Esto lo hacemos porque ahora tenemos que añadir una controladora **IDE** 

![image](https://github.com/user-attachments/assets/75f639f0-33b9-448a-9d0f-98acc18dfc05)

Una vez lo tenemos creado, damos clic sobre el botón Añadir Disco duro y nos saldrá la siguiente ventana, en la cual nos dice los discos que tenemos instalados en la máquina virtual.

![image](https://github.com/user-attachments/assets/1c50f488-f678-43f1-8099-ec8537da87ee)

Esto nos abre otra pestaña en la cual, podemos elegir el tamaño del disco duro y si es **reservado dinámicamente** (se va aumentando el tamaño del archivo según vayamos metiendo datos en el disco) o de tamaño fijo.

![image](https://github.com/user-attachments/assets/5964c832-c4cc-4c8f-a60f-0ddb220fc11b)

Una vez añadido, vemos que en el apartado Almacenamiento ya tenemos todo hecho.

![image](https://github.com/user-attachments/assets/80edeaa6-7467-4812-83e9-29594663999b)

Y para acabar, tomamos una captura del apartado **Sistema**

![image](https://github.com/user-attachments/assets/e2741e4d-cc0a-4177-b946-f08f561e3a63)

---

## Interconectar máquinas virtuales

### Instalar adaptadores de red

Primero, importamos una máquina que nos proporciona el profesor, la cuál deberemos reducir el tamaño de la RAM y cambiarle el nombre por **Win_01_14**. 

![image](https://github.com/user-attachments/assets/d9d59fcb-477b-4a18-9d6f-8921efa45f42)

Una vez importada, vamos a clonarla 2 veces para así tener las 3 máquinas virtuales.

![image](https://github.com/user-attachments/assets/aeee911f-bc0e-469f-95b1-392c4ae0b8db)

Al clonarlas, les damos el nombre **Win_02_IB14 y Win_03_IB14.** 
Y algo muy importante de hacer aquí, es darle una nueva dirección MAC a los adaptadores de red de la máquina clonada.

![image](https://github.com/user-attachments/assets/7442f0c6-e58a-4c85-a40c-69e1d78cb413)

Así que ya las tenemos clonadas ya podemos empezar a trabajar

![image](https://github.com/user-attachments/assets/9eec2afd-ad98-4331-8fdd-9e13627da71f)

Pero antes, hay que ponerle los adaptadores correspondientes a cada máquina. 

Con la máquina Win_01_IB14 queremos tener salida a internet y comunicarnos con el resto de máquinas. 

Así que le pondremos 2 adaptadores de red: 

- NAT para la salida a internet
- Red interna para comunicaciones con otros equipos

![image](https://github.com/user-attachments/assets/dd7d2ac2-8ebc-4489-8b4c-84426c51b67b)

↓

![image](https://github.com/user-attachments/assets/bb77084c-bfc9-4b44-aa90-5d93a9206f68)

Con la máquina **Win_02_IB14** comunicarnos con el resto de máquinas. 
Así que le pondremos un único adaptador de red, que sea **Red Interna**

![image](https://github.com/user-attachments/assets/55668174-c458-4f4d-8ada-85e874c95d41)

Y a la máquina **Win_03_IB14** le ponemos 2 adaptadores:
- Adaptador solo-Anfritión
  - Para conectarnos con la máquina real
- Red interna

![image](https://github.com/user-attachments/assets/f92bbe77-182f-4e09-935b-efa0403eec61)

↓

![image](https://github.com/user-attachments/assets/6f272d7b-27e9-44b9-9423-cfd90f023eb8)

### Configurar tarjetas de red

Ahora nos toca encender las máquinas y configurar las tarjetas de red. 
Para la red interna, usaremos la IP **192.168.14.X** 
Así que configuramos las tarjetas de red **Red Interna** de las 3 máquinas.

![image](https://github.com/user-attachments/assets/14071cdd-ac84-4153-8bd7-b18dc1231336)

↓

![image](https://github.com/user-attachments/assets/313486f9-07ac-4415-83c5-f00e3c4a9ee0)

↓

![image](https://github.com/user-attachments/assets/5694c983-4cb3-403b-be45-76889be75521)

### Comprobaciones

Para la máquina Win_01_IB14 tenemos que probar que tenemos salida a Internet 
Así que abrimos un CMD y ponemos el comando

```bash
ping www.google.es 
```

Y vemos que tenemos conexión

![image](https://github.com/user-attachments/assets/abed872f-9933-4a49-ba37-592590acc9ec)

También hay que comprobar que tenemos conexión a las otras máquinas. 
Así que, antes de nada, tenemos que ir a **Centro de redes y recursos compartidos>Configuración de uso compartido avanzado** en cada máquina y activar todo. 

Si no activamos las **opciones de uso compartido**, no podremos hacer el Ping entre los equipos porque el cortafuegos nos cortará la conexión.

![image](https://github.com/user-attachments/assets/fa7c1ac4-6e32-465c-9d39-dfe710304871)

Comprobamos la conexión entre máquinas:

![image](https://github.com/user-attachments/assets/cea8a6b0-9fe4-4863-b329-4d1e511324fb)

Ahora nos toca hacer un Ping desde **Win_02_IB14** a las otras dos máquinas virtuales. 

Como ya tenemos la tarjeta de red configurada y la detección de redes activada en todas las máquinas, solo nos queda abrir un CMD y poner el comando:

```bash
Ping 192.168.14.1/3 
```

![image](https://github.com/user-attachments/assets/afc93c28-1fd5-47d1-8cbc-a528f615c636)

Y para acabar con este apartado, tenemos que hacer un Ping con **Win_03_IB14** a las otras dos máquinas. 
Además, también hacerlo a la máquina real. 
Para poder hacer esto, tenemos que configurar la tarjeta de red **Solo-Anfritión** poniendo una IP dentro del rango **192.168.56.1-254**

![image](https://github.com/user-attachments/assets/88f10255-6727-4710-96a2-b42bd0cb355f)

Así que hacemos Ping a las 2 máquinas y al anfritión.

![image](https://github.com/user-attachments/assets/39e0db52-9617-4f5e-acad-89cf6c7c0185)

## Realizar instantáneas

Las instantáneas sirven para guardar un estado anterior de la máquina virtual. 
Para crear una vamos al apartado **Máquina>Tomar Instantánea** 

![image](https://github.com/user-attachments/assets/8e644cb3-60fa-4812-8ec9-8ed850c5fb12)

De aquí nos saldrá una ventana para darle un nombre y una descripción.

![image](https://github.com/user-attachments/assets/dff85c2b-2127-479a-b546-5d3afe354d3a)

Si nos vamos a la página principal, veremos que se ha creado la Snapshot

![image](https://github.com/user-attachments/assets/c9e35dba-801c-4f27-9ccb-bcdaab1c68ac)

Si creamos otra, se pondrá debajo de la que creamos recientemente.

![image](https://github.com/user-attachments/assets/712b2e7d-30f1-4cbd-8330-40f7391f42e7)

Ahora creamos varias Snapshot hasta que se nos quede el siguiente árbol:

![image](https://github.com/user-attachments/assets/663cba22-b42b-4802-b09c-40730077d688)

Para que se nos quede así, tuve que restaurar la máquina en la snapshot **Otra modificación** y crear allí la snapshot Estado Estable 1.

---

## Crear carpetas compartidas

Y llegamos a la última parte de esta práctica. 
Para finalizar, crearemos una carpeta en la máquina real, la cual estará compartida entre las máquinas virtuales. 

Tenemos que ir a la **Configuración** de las máquinas y en el apartado **Carpetas Compartidas** y hacemos clic sobre el icono **Crear nueva Carpeta Compartida**.  

Allí nos saldrá una ventana en la que elegiremos la carpeta a compartir, el nombre y el punto de montaje

![image](https://github.com/user-attachments/assets/8d43dee3-45db-45c6-be70-ed6670498788)

↓

![image](https://github.com/user-attachments/assets/a1d144ce-8aea-4ed8-bcab-235b77ae65ab)

↓

![image](https://github.com/user-attachments/assets/fb0dd7f9-a329-4196-aae4-90319ee22f73)

Ahora, al encender cada máquina virtual, veremos que está la carpeta compartida. 
Todas las máquinas pueden ver lo que hay dentro, además de que pueden añadir archivos. 
Así que para comprobarlo, vamos a crear un archivo por cada máquina en la carpeta. 

![image](https://github.com/user-attachments/assets/41de1bc2-3158-48ff-b8e5-3e23df80aada)

↓

![image](https://github.com/user-attachments/assets/f4925e23-05b1-4ea0-bcf0-588fed505b69)

↓

![image](https://github.com/user-attachments/assets/dfd61b1b-4bb9-43fd-a75e-09eff98b462e)

Y por último, comprobamos que podemos ver estos archivos en la máquina real.

![image](https://github.com/user-attachments/assets/3ee930d8-05f2-4b40-bc2f-c2a214b9330d)












































































