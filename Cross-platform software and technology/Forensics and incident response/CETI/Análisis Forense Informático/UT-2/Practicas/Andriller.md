<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Instalación](#instalación)
- [Herramientas que integra](#herramientas-que-integra)
  - [Decoders](#decoders)
  - [App utils](#app-utils)
  - [Lockscreens](#lockscreens)
  - [Tools](#tools)
  - [ADB](#adb)
- [Realizar copia](#realizar-copia)

</details>

## Introducción

En esta práctica se va a usar la herramientas Andriller. Esta es una herramienta que nos permite realizar una extracción de toda la memoria interna del móvil. Además integra una serie de herramientas para poder analizar esos datos extraídos. Algunas de estas herramientas son para poder descifrar contraseñas, obtener información de bases de datos etc, por lo que es necesario ser root en el teléfono para aprovechar las capacidades máximas del programa.

Como se ha visto en otras prácticas, no he podido hacer root, asi que tampoco voy a poder usar el programa al 100%.

---

### Instalación

Es muy sencilla de instalar, vamos a su repositorio en [**github**](https://github.com/den4uk/andriller)), la descargamos e instalamos.

![1 1](https://github.com/user-attachments/assets/e041e0fe-4c57-4f34-a953-2fee6d6d20f3)

---

### Herramientas que integra

#### Decoders

Para decodificar la información de archivos y BD importantes de Android

![2 1](https://github.com/user-attachments/assets/3433e1a3-8e4b-4ce8-b2c4-59145c5c9687)


---

#### App utils

Se usa para decodificar las BD de los chats de Whatsapp, obteniendo las claves de cifrado del dispositivo.

![2 2](https://github.com/user-attachments/assets/3632f45e-b654-4679-9f6b-7d7a61d165da)


---

#### Lockscreens
Sirven para descifrar la contraseña del móvil.

![2 3](https://github.com/user-attachments/assets/01ff7186-9ad5-4339-8700-4d339f9ea2fc)



---

#### Tools
Sirven para convertir el archivo .ab que se genera a la hora de hacer la extracción a otros formatos.

![2 4](https://github.com/user-attachments/assets/e4ef19c7-b747-42fd-8c89-080c9714cc79)



---
#### ADB

Sirve para reiniciar el móvil de diferentes formas.

![2 5](https://github.com/user-attachments/assets/bf46e4a9-6e73-4ebd-ae7c-69a02e2230a0)


---

### Realizar copia

Para realizar la copia hay que darle al botón **Extract**.

![1 1](https://github.com/user-attachments/assets/df3e5ddf-b513-4694-a161-59209a964c87)


Sale un mensaje de advertencia, donde se nos indica que hemos de desbloquear la pantalla del móvil y darle al botón **Back up my data**. 
En el propio móvil sale una pantalla donde se encuentra ese botón y donde podemos confirmar si realizar la extracción o no.

![1 2](https://github.com/user-attachments/assets/b61d9cee-dff7-4c86-a24d-fc3743c5d84c)


Se inicia la extracción, al cual tardará un rato (dependiendo de la cantidad de informacion que tengamos en nuestro móvil).

![1 3](https://github.com/user-attachments/assets/d273f478-88bc-451b-9cfb-e7490d78d0b5)


Al finalizar, se habían creado un directorio con los siguientes archivos:

![1 4](https://github.com/user-attachments/assets/bbc81828-0a18-4064-9b07-6655555e6a02)


El archivo **REPORT.html** contiene un resumen de los datos que se han extraído:

![1 5](https://github.com/user-attachments/assets/cbd9b45a-76e2-4315-be35-a95e6cf46a96)


Salen las cuentas que se encuentran almacenadas en el dispositivo y un enlace al archivo **“Shared Storage.html”** el cual contiene todos los archivos que se han extraído:

![4 2](https://github.com/user-attachments/assets/beade026-0ece-475a-9a54-c155d6daf8fc)


Solamente he podido realizar esto, debido a que **mi móvil no está rooteado** y como es necesario que lo esté todas las herramientas (menos las de reiniciar el móvil y las de convertir el .adb a .tar) pues no he podido usar más, porque todas necesitan **datos de BD o archivos .key** para que funcionen.
