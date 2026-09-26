## Instalar SO al cual le haremos la imagen

Antes de hacer las imágenes, crearemos una máquina virtual en la que instalaremos un Ubuntu 20.04 

Para poder diferenciar las imágenes una de otra, usaremos 2 fondos de pantalla distintos. 

![2 1](https://github.com/user-attachments/assets/434f4d11-4d51-48f7-ad2a-abe46688e6a9)

En el primero este de un USB y en el segundo una foto del piloto de F1 Fernando Alonso Díaz en la temporada 2008 con un Renault Twingo, con el cúal dio unas vueltas al circuito de Paul Ricard.

![image](https://github.com/user-attachments/assets/4f8f068a-e5c6-45fd-bbda-4b7e7d7d5a2b)

---

## Instalar un dispositivo de almacenamiento donde guardar las imágenes

Ahora, añadiremos un nuevo disco virtual a la máquina, donde alojaremos las imágenes del SO.

![2 2](https://github.com/user-attachments/assets/72fc0e15-29b7-4e24-abda-6c934d0fb036)

Ahora, tendremos que formatearla y darle un nombre, para poder usarla

![2 3](https://github.com/user-attachments/assets/a02a8d8a-d9c8-4b47-b03f-3544b1ec3a90)

↓

![2 4](https://github.com/user-attachments/assets/03f21775-1b72-48c7-b69f-6786b6d37dad)

↓

![2 5](https://github.com/user-attachments/assets/ff0df4e2-46f6-4f38-af99-260fded0c748)

---

## Crear imagen del SO de forma gráfica

Una vez ya tenemos todo listo, podemos empezar a usar Clonezilla. 
Lo primero será descargar la ISO de su [página oficial](https://clonezilla.org/downloads.php) 
Una vez descargada, la agregamos a nuestra máquina virtual

![2 6](https://github.com/user-attachments/assets/e250fe62-fabf-4c3f-b196-bf1929e974c4)

Y arrancamos desde ella. 
Elegiremos la primera opción. 

![2 8](https://github.com/user-attachments/assets/b616b462-d38c-42f5-b8d8-20147c5d09b5)

La siguiente pantalla que nos saldrá, nos permitirá iniciar clonezilla de forma gráfica o desde la línea de comandos. 
Esta primera imagen la haremos de forma gráfica. 

![2 9](https://github.com/user-attachments/assets/7b97e745-ea1c-41cd-a67d-b80da8bbe87e)

Después de elegir la distribución del teclado y del idioma, podemos empezar a crear nuestra imagen. 

La primera pantalla que nos saldrá es sobre que queremos hacer en clonezilla. 

Nosotros elegiremos la opción device-image, la cual sirve para hacer y restaurar discos/particiones a/desde imágenes.

![2 10](https://github.com/user-attachments/assets/eba5dc81-6394-4ef9-90b5-1ad3455e2865)

Lo siguiente será decir donde se encuentra la imagen de clonezilla que 
estamos usando. 
Le diremos que desde un dispositivo local, ósea la opción **local_dev**.

![2 11](https://github.com/user-attachments/assets/bfd81aab-60a5-4fdb-b143-6bada0403404)

Lo siguiente será decir donde se va a guardar la imagen que haremos del SO. 
Elegiremos el disco de 80GB que hemos arrancado. 

![2 12](https://github.com/user-attachments/assets/ed87f7ef-3cd0-494d-a79e-2ce50fe8b3e1)

Le diremos que omita el chequeo/reparación del sistema de archivos, para 
ahorrar tiempo con la opción **no-fsck** 

![2 13](https://github.com/user-attachments/assets/7df45680-969e-4844-8ea9-c1b6b1b29d84)

Y no elegiremos ninguna opción de aquí, simplemente le daremos a **Done**

![2 15](https://github.com/user-attachments/assets/484838a9-9a6c-4f3f-9f9f-5e0a7347f784)

Y seguiremos configurando, eligiendo el modo principiante. 

![2 16](https://github.com/user-attachments/assets/aee1afd4-422d-4bca-9051-4e1da7af284a)

Lo siguiente será decirle que guardaremos. 
Con la opción savedisk le diremos que haga una imagen del disco entero.

![2 17](https://github.com/user-attachments/assets/cb133432-6419-4fb5-a04a-05af0b5c36cc)

Ahora le diremos el nombre de la imagen. 

![2 18](https://github.com/user-attachments/assets/5b6d67c1-9d0d-4a36-8724-9c5a805034bb)

Y proseguiremos especificando el disco del cual haremos la imagen.

![2 19](https://github.com/user-attachments/assets/964c3ab3-4ba9-47b1-9d61-a928fd7abd20)

Le volvemos a poner que no haga una comprobación del sistema de archivos.

![2 20](https://github.com/user-attachments/assets/928f67f7-d283-4c34-b19d-58c89a10ec6c)

Y ya empezará a realizar la imagen, pero antes nos permite elegir que hacer cuando haya acabado de realizar la copia.

En nuestro caso le diremos que nos de la opción de **reiniciar/apagar**

![2 22](https://github.com/user-attachments/assets/3302dc32-cca5-48ed-8c25-919f3e119b80)

Y ya empezará a hacer la imagen. 
Pero antes nos sale un mensaje, en el cual nos pone el comando con el cual podemos volver a realizar el proceso que hicimos de forma gráfica, pero desde la línea de comandos (que es el siguiente punto). 

![2 23](https://github.com/user-attachments/assets/b56f1116-776e-46e6-a042-7fbedb97917e)

Y antes de empezar nos saca un mensaje, diciendo que si queremos continuar, a lo que obviamente responder que **y**

![2 24](https://github.com/user-attachments/assets/8d85baf5-4e31-4f96-88a4-fae8be52db83)

Y empieza a hacerse la imagen.

![2 25](https://github.com/user-attachments/assets/a79c60e0-26c3-49b8-ad2a-c8c40d92eaa8)

Y cuando acaba nos sale la siguiente pantalla, en la cual se han realizado una serie de procesos y se han guardado una serie de datos, pero lo que nos importa es el mensaje de **"Esta imagen fue grabada con éxito"** 
Pulsamos **Intro** para salir de esta pantalla

![2 26](https://github.com/user-attachments/assets/1c614d40-68ae-446d-bf5a-3552b8415239)

Y procedemos a apagar la máquina, para poder realizar el siguiente paso.

![2 27](https://github.com/user-attachments/assets/d62a9812-eed9-4297-b846-c98f5d073db7)

## Crear imagen del sistema desde la línea de comandos 

Ahora, cambiaremos el fondo de pantalla de nuestro SO y crearemos un fichero de texto, que contenga las primeras 4 líneas de la canción “El nano” del cantante “Melendi” que compuso en el año 2005. 

![2 28](https://github.com/user-attachments/assets/ceb2626a-a229-4a7a-8ad3-7518f67f29a5)

Ahora, cuando iniciemos clonezilla, elegiremos la línea de comandos prompt

![2 29](https://github.com/user-attachments/assets/0cee8e39-852b-454c-8c8a-73deb74af8c1)

Y entraremos a la línea de comandos de Clonezilla. 
Para poder ejecutar el comando y que funcione, tendremos que montar el 2º disco a la carpeta /home/partimag 
Y posteriormente, ejecutaremos el comando que nos proporcionó Clonezilla con anterioridad.

![2 30](https://github.com/user-attachments/assets/09a80127-07ec-44b5-87c9-bb72e10e8c48)

Y nos saldrá una pantalla en la que se han realizado varios procesos y preguntándonos si estamos seguros de que queremos seguir:

![image](https://github.com/user-attachments/assets/d78a566d-d623-4c34-b4dc-44e1179c43e7)

Así que empezará a realizar la imagen.

![2 33](https://github.com/user-attachments/assets/8f002f40-8c5c-44c1-88bf-36a1a303fd72)

Una vez acabe, nos dará a elegir si queremos reiniciar o apagar el sistema. 

Nosotros apagaremos el sistema y volveremos a iniciar en Ubuntu. 

![2 38_1](https://github.com/user-attachments/assets/5db2d897-208a-4fea-9178-b6805f859b32)

Y cuando iniciemos Ubuntu, veremos que tenemos las 2 imágenes creadas

![2 39_1](https://github.com/user-attachments/assets/29ee2d2e-9831-4255-a749-aba4365ceac7)

Por lo que ahora las tendremos que restaurar. 

## Recupera la primera imagen y comprueba los cambios

Volveremos a iniciar Clonezilla, desde la interfaz gráfica. 
Volveremos a elegir la opción de **local_dev**

![image](https://github.com/user-attachments/assets/dae1b839-eaa2-4095-b4a3-89d82cc0aac8)

Y el disco desde donde vamos a restaurar 

![2 40](https://github.com/user-attachments/assets/49d0df85-bbbf-4a82-aace-b837de119d2e)

Lo siguiente será especificar el directorio donde se van a restaurar las imágenes, pero no especificaremos ninguno (por defecto se pone /) 

![2 41](https://github.com/user-attachments/assets/d068231d-eaf2-4bc2-af6d-fbdaabe09d1f)

Ahora, nos preguntara que queremos hacer, le diremos que restaure la imagen al disco, ósea la opción **restoredisk**

![2 42](https://github.com/user-attachments/assets/ef76f9a8-c344-4c90-8845-6acda4877d1e)

Seleccionamos la primera imagen para restaurarla. 

![2 43](https://github.com/user-attachments/assets/37214262-eca4-483b-8420-3838838e4f59)

Y el disco donde la vamos a restaurar.

![2 44](https://github.com/user-attachments/assets/be00c880-994b-4039-bff7-986eb7634c3d)

Ahora nos dirá de que forma se creará la tabla de particiones. 
Elegiremos que usa la tabla que se encuentre guardada en la imagen.

![2 45](https://github.com/user-attachments/assets/6206c023-84d6-418c-8b83-0cdfcf004f83)

Y para terminar, le especificaremos que no haga la comprobación de la imagen (para ahorrar tiempo).

![2 46](https://github.com/user-attachments/assets/81e2abfc-9da0-4e68-817c-36949514bb8e)

Y ya terminamos de configurar la restauración de la imagen y nos sale el comando correspondiente, para hacerlo desde la línea de comandos.

![2 47](https://github.com/user-attachments/assets/6991770d-f133-418b-aabf-7420f4386973)

Ahora comenzará ha realizar la imagen, pero antes, nos pedirá confirmación:

![image](https://github.com/user-attachments/assets/5cd62f99-f326-4b1f-be6b-9c3a4215956d)

Y empezará a restaurar.

![image](https://github.com/user-attachments/assets/f9bdce55-9fec-4529-a94b-60b4c2817a20)

Y cuando acabe, nos saldrá un menú para elegir que hacer. 
Nosotros reiniciaremos la máquina para arrancar en Ubuntu y demostrar que se ha restaurado la imagen. 

![image](https://github.com/user-attachments/assets/792ceb4c-8505-4a11-a4ed-a707dd2e3bfb)

Y como podemos ver, se han realizado los cambios. 

![2 51](https://github.com/user-attachments/assets/cb7629e4-e747-4030-83c4-7fba408fb748)

## Recupera la segunda imagen y documéntalo 

Ahora, procederemos a volver a iniciar Clonezilla anteriormente, de la misma forma que en los anteriores apartados, para restaurar la segunda imagen, la cual tendrá una particularidad, se restaurará desde el prompt.

![2 52](https://github.com/user-attachments/assets/691eb6f6-a752-4c5b-95cd-d08f08048eeb)

Para que el comando funcione, previamente, tendremos que montar la ubicación de la imagen en el directorio **/home/partimag**. 
Y poner el comando tal cual nos mostró Clonezilla anteriormente, pero sustituyendo el nombre de la imagen por elnanoimg2. 
Y nos saldrá la siguiente pantalla, en la cual nos pregunta si queremos continuar

![2 53](https://github.com/user-attachments/assets/b998fc36-07d6-4055-8367-5d2018c62862)

Y empezará a restaurar la imagen.

![2 54](https://github.com/user-attachments/assets/8ae9255d-f0e7-45ec-bd39-06221661ab4c)

Una vez finalizado, procedemos a reiniciar la máquina. 

![2 55](https://github.com/user-attachments/assets/8868c6d3-e8e6-42c1-92b6-90992bc9d3e8)

Iniciamos en Ubuntu, viendo a nuestro padre, Fernando Alonso Díaz 

![2 56](https://github.com/user-attachments/assets/53d73790-8cf1-42d9-9735-1c17e6875cd4)






















