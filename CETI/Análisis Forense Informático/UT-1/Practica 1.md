## Índice

- 

## Introducción

- En esta práctica se trata la rotura del hash SHA-1 descargando 2 ficheros con un contenido diferente, pero que contienen el mismo hash.
- Además se verán diferentes formas de generar un hash SHA-256

---
### Parte 1

#### Descargar ficheros

Accedemos a la página https://shattered.io/ y nos descargamos los 2 documentos.

![1 1](https://github.com/user-attachments/assets/e0311def-3606-4ce7-9fe0-7bda6682f957)

Al abrirlos, vemos que su contenido es diferente:
![[Pasted image 20250602200039.png]]

![[Pasted image 20250602200047.png]]


#### Comprobar la rotura de SHA-1

Entramos a la línea de comandos de Powershell y calculamos el hash SHA1 de cada archivo. 
La línea de comandos utilizada es la siguiente:

`Get-FileHash .\shattered-1.pdf -Algorithm SHA1 > fichero1.txt
