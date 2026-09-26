<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Requisitos previos](#requisitos-previos)
 - [Obtener recursos](#obtener-recursos)
 - [Esconder malware en una imagen](#esconder-malware-en-una-imagen)
 - [Alcatraz](#alcatraz)
</details>

---

## Introducción

En esta práctica se va a ver el funcionamiento de 2 ransomware diferentes. 
Uno es **WannaCry** que se hizo muy famoso por el año 2017 cuando **Telefónica** fue atacado usando este ransomware. 
Y el otro es **Alcatraz**. 
Este ransomware se detecto en el año 2016 y usa un cifrado **AES-256** añadiendo la extensión **.Alcatraz** a los archivos afectados. 
Primero voy a hacer la práctica con **WannaCry** y luego con **Alcatraz**.

### Requisitos previos

Lo primero que tenemos que hacer es descargarnos e instalar **winrar**. 

![image](https://github.com/user-attachments/assets/d3e4e056-d0ec-4069-af0b-6988dce3b4a6)

Desactivar **Windows Defender**. 

![image](https://github.com/user-attachments/assets/a60161ee-0279-44f5-a215-9f7ad69c2f38)

Y Habilitar el parámetro **“Elementos ocultos”** y deshabilitar **“Extensiones de nombre del archivo”** desde el explorador de Windows. 

![image](https://github.com/user-attachments/assets/53139b62-283a-4b16-8584-14669c35cbf8)

---

### Obtener recursos

El siguiente paso es descargarse el malware y 2 imágenes que servirán de cebo.
El malware lo obtengo del siguiente [enlace](https://github.com/ytisf/theZoo/tree/master/malware/Binaries/Ransomware.WannaCry)

![image](https://github.com/user-attachments/assets/577276f0-f118-4952-8667-164d3193bdbc)

Y las imágenes las busco en Google, en mi caso estarán relacionadas con la F1 
Ahora configuraré estos archivos como elementos ocultos. 

![image](https://github.com/user-attachments/assets/6710e4a3-3c90-4f8d-8fa8-8d6ae40ea3b7)

↓

![image](https://github.com/user-attachments/assets/d178db8d-1b6e-493b-a588-30a1a7fd8af5)

---

### Esconder malware en una imagen 

Ahora apago la máquina y le quito el adaptador de red y elimino cualquier conexión que tenga la máquina virtual con la anfitriona para que el malware no se expanda. 

![image](https://github.com/user-attachments/assets/bf993db8-dfa9-4843-b83a-a025259fc1a0)

Con todo listo, puedo empezar.

Selecciono el malware y la imagen, doy clic derecho y selecciono la opción Añadir al archivo…

![image](https://github.com/user-attachments/assets/80494dbb-2860-43e6-a44f-5de64dc0703e)

Para hacerlo pasar por un programa no malicioso, le cambio el nombre: 

![image](https://github.com/user-attachments/assets/55e862f7-0795-4d17-ac00-edffcd84e7e9)

Y en **“Opciones de compresión”** selecciono la opción **“Crear un archivo 
autoextraible”**. 

![image](https://github.com/user-attachments/assets/818e0d47-c45a-46a7-8cac-2d0feb4537ed)

Esto hace que la extensión del archivo cambie de **.rar** a **.exe**

![image](https://github.com/user-attachments/assets/e7a1c69c-dc0e-4ec0-b9a6-728511c89f4a)

En el apartado **“Avanzado”>Autoextraible”** realizaré más ocnfiguraciones. 

![image](https://github.com/user-attachments/assets/cb463ecd-724d-457f-96c8-73566784005c)

Dentro de este apartado, voy a **Instalación** y en **“Ejecutar tras la instalación”** pongo los nombres de los archivos que se van a ejecutar cuando sean extraídos. 
Primero el malware y después la imagen. 

![image](https://github.com/user-attachments/assets/b4a8f435-6149-43da-a3b6-416fa89c1b8d)

En el apartado **“Modos”** selecciono la opción **“Ocultar todo”** para que no se muestren los pasos. 

![image](https://github.com/user-attachments/assets/1cec7807-14db-491d-8ed8-deee90dc0bd4)

En el apartado **“Actualizar”** selecciono la opción **”Sobreescribir todos los ficheros”** para que siempre que se ejecute el ransomware se sobrescriban los archivos. 

Por último, en el apartado **“Texto e Icono”** en la opción **“Cargar icono desde el fichero”** selecciono el archivo que tenía como icono.

![image](https://github.com/user-attachments/assets/a91333a1-4471-4e69-a067-00c3f4ade52d)

Ya con esto tengo mi ejecutable trampa. 

![image](https://github.com/user-attachments/assets/c7c645e5-a81b-4334-8d96-1d5238a21be3)

Ahora creo 2 archivos para ver como se comporta el virus.

![image](https://github.com/user-attachments/assets/0e37c274-a3f3-4962-8261-33be42d9544d)

↓

![image](https://github.com/user-attachments/assets/cb49820e-ed20-48d3-bad7-9b0f0f8e0763)

Ejecuto **Regalo_Fernando_Alonso.exe** y ocurre lo siguiente:

![image](https://github.com/user-attachments/assets/ef48dde3-cc74-4ed2-bc00-d792f21dd37c)

Se ha ejecutado el malware y cifrado el equipo. 
Los archivos que acabamos de crear también se han cifrado.

![image](https://github.com/user-attachments/assets/a460f273-3368-4c41-b09c-281a8c15c436)

Con el comando **dir C:\*.WNCRY /S** puedo ver la cantidad archivos que se han cifrado en el equipo.

```bash
dir C:\*.WNCRY /S
```

Por suerte había descargado 2 desencriptadores así que los voy a ejecutar para ver si funcionan o no. 

El primero es de **Avast** y aunque no es específico para este malware, según su página oficial, también sirve.

![image](https://github.com/user-attachments/assets/805c51b1-8e18-4b32-b4e5-2c3549b76fb3)

Tras 2 HORAS de ejecución y de **“desencriptar archivos”** no ha funcionado. 

![image](https://github.com/user-attachments/assets/39eaf0f2-26f8-4d18-bfab-9d5006be7b85)

El otro descifrador se llama **wanawiki.exe** y como el anterior no funciona, lo pruebo. 

![image](https://github.com/user-attachments/assets/6aba38cb-539e-4c76-a3ad-bd3fcf68660a)

Tras mucho tiempo de espera, el resultado es el mismo que el anterior, no ha funcionado. 

![image](https://github.com/user-attachments/assets/aca7000a-0958-4c46-b8ce-28adb7386cd7)

---

### Alcatraz

Ahora voy a volver a realizar el mismo proceso, pero con el ransomware **Alcatraz**. 
Estos serán los archivos que usaré:

![image](https://github.com/user-attachments/assets/ab95dd4c-00a6-48eb-bd03-16c856337779)

Obviamente f1_2013.exe no es el juego de la F1, si no que es el virus, pero le he cambiado el nombre. 
El virus es una muestra obtenida de la página de **MalwareBytes**. 

Esta muestra es un poco Light debido a que no cifra muchos archivos, solo unos pocos.

Creo el nuevo archivo ejecutable, llamándolo f1_2020.exe y teniendo el logo de la F1. 
Lo ejecuto y se cifran varios archivos, además de que se ha creado el siguiente mensaje:

![image](https://github.com/user-attachments/assets/636fb0c0-3fcc-4ebb-bfba-6f6d42d3c138)

↓

![image](https://github.com/user-attachments/assets/773d41de-959d-46a3-8847-5540e1479f2e)

Si le hecho un vistazo a los archivos cifrados veo que tampoco se han cifrado tantos. 

![image](https://github.com/user-attachments/assets/4bcad545-6604-4d9e-8e5f-fbd70f15e297)

Ahora ejecuto el descrifrador de Avast y le paso el mismo archivo, pero en 2 versiones, una sin cifrar y otra cifrada:

![image](https://github.com/user-attachments/assets/b8664ff0-8974-4f1f-825c-84caa46dc715)

Con esto el descifrador obtiene la contraseña para descifrar los archivos:

![image](https://github.com/user-attachments/assets/807aa027-51b8-4379-80b6-e90b239d5d00)

Con esto, se deberían  de descifrar los archivos, pero después de otras 3 horas, nada ha cambiado: 

![image](https://github.com/user-attachments/assets/69ca0fcc-77f3-44b3-ae2a-0e33201037c2)












