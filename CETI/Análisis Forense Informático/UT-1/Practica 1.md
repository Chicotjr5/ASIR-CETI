## Índice

- Introduccion
	- 


## Introducción

- En esta práctica se trata la rotura del hash SHA-1 descargando 2 ficheros con un contenido diferente, pero que contienen el mismo hash.
- Además se verán diferentes formas de generar un hash SHA-256

---
### Parte 1

#### Descargar ficheros

Accedemos a la página https://shattered.io/ y nos descargamos los 2 documentos.



Al abrirlos, vemos que su contenido es diferente:
![1 2 1](https://github.com/user-attachments/assets/50fbdeb3-8931-4dff-a9de-b24c726b8229)


![1 2 2](https://github.com/user-attachments/assets/59bd266e-4c32-4cc0-a5ef-e490dc637c81)



#### Comprobar la rotura de SHA-1

Entramos a la línea de comandos de Powershell y calculamos el hash SHA1 de cada archivo. 
La línea de comandos utilizada es la siguiente:

`Get-FileHash .\shattered-1.pdf -Algorithm SHA1 > fichero1.txt
Get-FileHash .\shattered-2.pdf -Algorithm SHA1 > fichero2.txt`

![1 3](https://github.com/user-attachments/assets/862b9d26-e5d6-46df-af2c-e870e0bb99fa)



Hacemos un cat a cada uno de los ficheros que se han generado y observamos que el hash generado ha sido el mismo.

![1 4](https://github.com/user-attachments/assets/ebb640b4-bc73-4d77-93e7-188fbdcb564f)
