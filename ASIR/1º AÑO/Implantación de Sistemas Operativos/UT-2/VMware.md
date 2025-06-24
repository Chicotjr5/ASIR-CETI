## Instalación VMware

Vamos a instalar el software de virtualización de **VMware Player**.
- Accedemos a su página oficial y descargamos la versión para **Windows 10 de 64 bits**.
- Una vez descargado, iniciamos la instalación.

![image](https://github.com/user-attachments/assets/3d90323d-d40c-46ba-8e87-d9cd585641c9)


Aceptamos los términos de licencia del programa (es obligatorio para continuar).  


![image](https://github.com/user-attachments/assets/ff95285b-a430-420a-be90-f3fc396f2bc1)

Lo siguiente es decir al programa si queremos que nos instale los enhanced keyboard driver, que sirve para que instale los driver de muchos teclados, para que pueda reconocer el nuestro. 
Si no lo seleccionamos quizá no lo reconoce 

![image](https://github.com/user-attachments/assets/1b1b3d25-32e4-4fce-86ee-ff648b495b76)

Después, elegimos si queremos que el programa busque actualizaciones automáticamente al arrancar.  


![image](https://github.com/user-attachments/assets/c4fef889-8430-4e95-b4ce-4254a2e99c98)

También nos pregunta si queremos crear un acceso directo en el escritorio. 

![image](https://github.com/user-attachments/assets/f7460f09-396a-4305-baa2-eaa9ac3d6829)

Antes de finalizar, da opción a cambiar configuraciones pero nosotros no lo hacemos.

![image](https://github.com/user-attachments/assets/1cc82c4d-42e3-4d65-9168-ee5347e63b4c)

Cuando la instalación termina:

- Aparece el icono en el escritorio.
- Nos pregunta si queremos introducir una licencia: **le damos a "Finish" sin introducir nada**.
- Al abrir el programa de nuevo, vuelve a preguntarlo le damos a **Continue**.

![image](https://github.com/user-attachments/assets/88c7e9a4-e0f8-47a4-91cf-7697248af5b9)

---

## Crear máquina virtual

Vamos a crear una máquina virtual desde el menú principal seleccionando la opción de "crear nueva máquina virtual".

![image](https://github.com/user-attachments/assets/b75f0509-12c8-4ec6-be78-401a7b3c6e91)

El asistente pregunta si queremos añadir una imagen de sistema operativo ahora o después, seleccionamos la opción de hacerlo después.

![image](https://github.com/user-attachments/assets/fdca0640-838b-4f57-a477-8605a6313382)

Elegimos el sistema operativo: instalaremos **Windows 7 x64**.

![image](https://github.com/user-attachments/assets/16bac38b-429c-4998-b7f3-a44c710d3e23)

Seleccionamos la ubicación de la máquina virtual:
En este caso, en el disco `M:\` dentro de la carpeta de máquinas virtuales.

A continuación:

- Asignamos **6 GB** de disco duro principal.
- Configuramos la **RAM en 512 MB**.

![image](https://github.com/user-attachments/assets/41d5e0fc-eaa3-4b6d-b953-4681cb13b1f1)

↓

![image](https://github.com/user-attachments/assets/fd304407-3aa4-48dd-b445-559d55eadb19)

Después:

- Añadimos un segundo disco duro de **3 GB**.
- Tipo: **IDE**, y elegimos crear uno nuevo (no reutilizar uno existente).

![image](https://github.com/user-attachments/assets/cc728b3b-aab1-4764-861a-8570886c1507)


Y finalmente:

- Añadimos un **driver de CD/DVD** tipo **IDE**.
- Vamos a "New CD/DVD", pulsamos **Add**, y luego en **Advanced** seleccionamos tipo IDE.

Con esto, finalizamos la creación de la máquina virtual.

![image](https://github.com/user-attachments/assets/b6edd563-2920-4932-93ec-901e4f312d5f)
