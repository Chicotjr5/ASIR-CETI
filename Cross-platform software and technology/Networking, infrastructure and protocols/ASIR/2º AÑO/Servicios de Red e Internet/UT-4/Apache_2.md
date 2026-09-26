## Obtener la lista de módulos de Apache que están activos. ¿cuántos son? 

Para ver los módulos activos, haremos un listado del directorio **/etc/apache/mods-enabled**. 
Vemos que son 23 en total. 


<img width="782" height="130" alt="image" src="https://github.com/user-attachments/assets/309e310c-0349-4062-8554-47a031167d49" />

---

## Activar el módulo user_dir. Ver su correspondiente fichero .conf y comprobar que contiene la directiva UserDir public_html

Vemos que el módulo **userdir** no se encuentra activo. 
Así que vamos a activarlo con el siguiente comando:

```bash
a2enmod userdir
```


<img width="522" height="73" alt="image" src="https://github.com/user-attachments/assets/d7c0fb15-0584-4965-b03e-177dc50a9418" />

Si vemos el contenido de este módulo, podemos ver que esta presente la directiva **UserDir public_html**. 

<img width="500" height="172" alt="image" src="https://github.com/user-attachments/assets/05852004-f522-42a6-9e96-0f885dab5b24" />

Este modulo que acabamos de activar, sirve para que los usuarios del sistema alojen su propia página web en su directorio personal.

---

## Chequear la configuración de los ficheros de Apache

Para ver que todos los archivos de apache están en perfecto estado, usaremos el comando:

```bash
apache2ctl configtest
```


<img width="422" height="42" alt="image" src="https://github.com/user-attachments/assets/097b52eb-dea5-4bd4-8d69-f54e8ed75a75" />

---

## Reiniciar el servidor Apache

Para que los cambios que hemos realizado se guarden, tenemos que reiniciar el servidor apache.

<img width="633" height="21" alt="image" src="https://github.com/user-attachments/assets/c6149816-585d-4a8d-8f38-32d0191e6d80" />

---

## Crear el directorio del usuario y una página web simple 

Vamos al directorio personal del usuario y crearemos un nuevo directorio **public_html**. 
Y dentro de él, un archivo **index.html**. 


<img width="579" height="63" alt="image" src="https://github.com/user-attachments/assets/a7c9e084-3989-4df4-91d3-ce73253ef71f" />

↓


<img width="369" height="83" alt="image" src="https://github.com/user-attachments/assets/920dd635-1cb2-4eb7-a472-78b9af383939" />


La captura de arriba esta mal, debido a que ahí se ve que la carpeta public_html esta siendo creada en /home y no en /home/operador, me di cuenta después y lo corregi, como se puede ver en esta captura.



<img width="584" height="218" alt="image" src="https://github.com/user-attachments/assets/44f3dee9-aef4-4852-bd5a-3de18570c328" />

---

## Desde el navegador accederás en la propia máquina como: http://localhost/~operador o desde otro equipo como http://direccionIP/~operador

Para poder ver esta página, pondremos la dirección http://192.168.203.33/~operador/


<img width="501" height="137" alt="image" src="https://github.com/user-attachments/assets/1f35b199-0efa-49ff-a760-0ddfbd064b6f" />

Como vimos en la anterior práctica, si ponemos localhost en vez de la IP del servidor, no podremos verlo


<img width="520" height="478" alt="image" src="https://github.com/user-attachments/assets/560d8230-af5e-4dc1-8fe8-9cb5aefacc56" />

**Pero, ¿Y si lo vemos desde el propio servidor?** 
Para poder ver si el servidor funcionaba, estábamos usando un equipo cliente, el cual integra un navegador web gráfico. 
Pero en el servidor podemos instalarnos un navegador web texto y acceder a esta página.

Ponemos **Lynx** http://localhost/~operador y accedemos a la página. 

<img width="564" height="24" alt="image" src="https://github.com/user-attachments/assets/085affa0-8a25-493f-ac01-fc9afa611334" />

↓

<img width="663" height="48" alt="image" src="https://github.com/user-attachments/assets/14aa6a35-1524-499b-935b-cc3e75411d2f" />

Lo mismo sería con http://192.168.203.33/~operador

--- 

## Desactivar el módulo y ver si deja de funcionar. ¿Qué es lo que no funciona y lo que sí? 

Si desactivamos el módulo, ya no podremos acceder a la página del usuario operador. 
Para desactivarlo, usamos el comando:

```bash
a2dismod userdir
```

<img width="662" height="98" alt="image" src="https://github.com/user-attachments/assets/e12df17e-a8c6-4347-b4ac-0308dd6c87e9" />

Probamos tanto en cliente como en servidor 


<img width="474" height="173" alt="image" src="https://github.com/user-attachments/assets/57479fa3-8556-4cfb-8c5a-f4d0eac11fc5" />

↓

<img width="663" height="109" alt="image" src="https://github.com/user-attachments/assets/624e7b7e-2c06-47b6-94d4-54dad16cf659" />






















































































