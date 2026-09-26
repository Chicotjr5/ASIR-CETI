## Cifrado de archivo

En esta práctica, vamos a aprender a como cifrar un archivo y como importar la clave de este, para que otro usuario pueda ver el contenido de ese archivo cifrado. 
Lo primero será crear 2 usuarios, los cuales usaremos para esta práctica.

<img width="433" height="206" alt="image" src="https://github.com/user-attachments/assets/c1991822-be50-4b63-bdc5-2efba3737b8d" />

Entraremos con el usuario “Admin2”. 
Una vez hemos iniciado sesión, creamos 2 archivos de texto distintos. 
Uno lo cifraremos y el otro no 

<img width="341" height="303" alt="image" src="https://github.com/user-attachments/assets/f5f5ae8a-009c-4502-958e-7916f3775be7" />

Para poder cifrar un archivo, vamos a **Propiedades>Opciones Avanzadas>Cifrar contenido para proteger datos**. 

<img width="357" height="275" alt="image" src="https://github.com/user-attachments/assets/54a9069e-702b-4bec-9199-30c20326ba21" />

---

## Verificación de acceso 

Una vez cifrado, con el mismo usuario, intentamos abrir el archivo. 
Y vemos que podemos perfectamente

<img width="512" height="171" alt="image" src="https://github.com/user-attachments/assets/22cee9fb-fcb8-44e0-95b8-502ffa9adad5" />

---

## Exportar Clave de Cifrado y ponerle una contraseña

Ahora, vamos a exportar la clave de cifrado, además de ponerle una contraseña. 
Esto se hace por si queremos acceder al mismo documento, pero desde una cuenta de usuario. 
Para poder exportar la clave, vamos a **Administrar certificados de cifrado del archivo**. 

<img width="456" height="161" alt="image" src="https://github.com/user-attachments/assets/0a54f20a-e53e-468b-924a-9d4b8ceaf4dc" />

Al abrirlo, nos sale un resumen sobre lo que nos permite **EFS** y cual es la utilidad de exportar la clave de cifrado. 

<img width="536" height="219" alt="image" src="https://github.com/user-attachments/assets/9a9a9c4b-a740-40dc-a378-e1177064232f" />

Ahora seleccionamos el certificado a exportar. 
Desde aquí podemos  usar un certificado ya existente o crear uno nuevo.

<img width="575" height="263" alt="image" src="https://github.com/user-attachments/assets/7458f047-5837-4fdd-8d4f-1f6872ac0994" />

Ahora haremos una copia de seguridad de la clave de cifrado y de la clave. 

<img width="588" height="337" alt="image" src="https://github.com/user-attachments/assets/f3d400ec-904c-4b6a-8944-ff116fddab92" />

Y ya habríamos terminado de hacer la copia de seguridad.

<img width="685" height="352" alt="image" src="https://github.com/user-attachments/assets/251938be-450f-4d3b-b7c9-51ede8d7d111" />

---

## Verificación de acceso desde otra cuenta 

Ahora iniciaremos sesión con el usuario **“admin”**.
En un principio, con este usuario no deberíamos de poder acceder al contenido del archivo. 
Y como podemos ver, no podemos.

<img width="423" height="188" alt="image" src="https://github.com/user-attachments/assets/0822fd87-a834-434a-8813-737370f09b8b" />

Mientras que al otro si podemos.

<img width="393" height="132" alt="image" src="https://github.com/user-attachments/assets/3d4e0918-2b4f-425c-bc03-ebcdb634cad8" />

---

## Importar la clave de cifrado 

Daremos sobre clic sobre la clave de cifrado y nos saldrá un asistente para importar 
certificados.

<img width="474" height="262" alt="image" src="https://github.com/user-attachments/assets/f59d0a17-2fd9-4839-a78b-269830e4800b" />

Le diremos cuál es la clave para importar.

<img width="527" height="250" alt="image" src="https://github.com/user-attachments/assets/4ccac162-b99e-4413-b897-b503d6f0f5d3" />

Escribiremos la contraseña que pusimos anteriormente.

<img width="507" height="345" alt="image" src="https://github.com/user-attachments/assets/6d16b64a-4023-49ac-b019-08de5c6f1731" />

Y al final se hace un resumen sobre la importación que hemos hecho.

<img width="528" height="207" alt="image" src="https://github.com/user-attachments/assets/3236c561-e420-4902-8fff-0ba91193b3c3" />

Y nos sale un mensaje, de que se ha importado el certificado. 

<img width="413" height="198" alt="image" src="https://github.com/user-attachments/assets/32a0484b-c46f-4539-a8f9-0b38e4713304" />

Una vez importada, ya podemos acceder al archivo cifrado.

<img width="338" height="101" alt="image" src="https://github.com/user-attachments/assets/501453cf-ebd9-4022-9638-b4c1e5a64232" />

---

## Investigación y Comparación

Tanto BitLocker como EFS son mecanismos de seguridad bastantes populares, pero con algunas diferencias. 

| EFS                                               | BitLocker                                                      |
| ------------------------------------------------- | -------------------------------------------------------------- |
| Usado para cifrar archivos                        | Usado para cifrar unidades de disco                            |
| Se almacena la clave en el sistema operativo      | Se almacena la clave en el TPM                                 |
| EFS se vincula a una cuenta de usuario            | BitLocker puede ser activado/desactivado por cualquier usuario |
| Usa un cifrado de clave simétrica + clave pública | Usa el método de cifrado de 128 bits XTS-AES                   |

Así que como podemos ver, son 2 sistemas de cifrado desarrollados por Microsoft que nos permiten proteger nuestros datos. 

EFS es utilizado para los archivos dentro del sistema operativo y los datos del archivo se cifran con el algoritmo simétrico (DESX). 

Este algoritmo, es uno de los algoritmos de cifrado más utilizados en el mundo, además de que el proceso de cifrado/descifrado es rápido y eficiente, además de ser muy fácil de implementar en todo tipo de sistemas. 
Además, solo deja cifrar en el sistema de archivos **NTFS** 

BitLocker es utilizado para dispositivos de almacenamiento (discos, USB) y usa un 
algoritmo de cifrado simétrico que utiliza una clave de 128 bits y el modo de operación 
XTS (XEX-based Tweaked Codebook Mode with Cipher-Text Stealing) para proteger 
la confidencialidad de los datos. 
Este método es uno de los más seguros en la actualidad. 

---

## Realizar un exámen del sistema 

En Windows tenemos un comando, el cual es el SFC (System File Checker) cuya función, es buscar y repara daños que haya en los archivos del sistema operativo. 

Este comando no es igual que el CHKDSK, este último sirve para reparar unidades de almacenamiento (misma distinción que con EFS y BitLocker). 

Este comando tiene muchas opciones, pero ahora nos importa la opción **SCANNOW**. 

Esta función nos permite, realizar un exámen del sistema, encontrando y reparando archivos. 
Para usarlo, ponemos en el terminal:

```bash
sfc /scannow. 
```

<img width="606" height="133" alt="image" src="https://github.com/user-attachments/assets/53c8b417-35a2-445a-9097-36ccd108ca4c" />




































































