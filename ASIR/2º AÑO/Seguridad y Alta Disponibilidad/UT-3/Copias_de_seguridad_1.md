## ¿Qué es y para qué sirve rsync? 

Rsync es un software libre, usado en muchos sistemas operativos. 
Su función principal, es permitirnos transferir/sincronizar archivos/directorios de manera eficaz. 
También nos permite hacer copias de seguridad y es ampliamente usado para estos fines.

## ¿Qué es y para qué sirve crontab?

Crontab es un archivo que usa el servicio cron, para poder crear y ejecutar tareas programadas. 
Cron es un proceso que está dormido y que cada minuto se “despierta” y mira si tiene que ejecutar alguna tarea que se encuentre en el archivo **/etc/crontab**

## Instala rsync 

Ejecutaremos el comando:

```bash
apt istall rsync
```

<img width="517" height="38" alt="image" src="https://github.com/user-attachments/assets/d63522d4-51c7-4b3a-a403-542cceff4853" />

### Instala tree y haz un tree de la carpeta /home/usu/documentos 

Para instalar tree, ejecutamos el comando

```bash
apt install tree
```

Y vemos el árbol de directorios de **/home/usu/documentos** 

<img width="494" height="472" alt="image" src="https://github.com/user-attachments/assets/cd7f52af-8a54-4765-bfe7-bb089179cff0" />

### Realizar copia de seguridad completa con rsync

#### Carpeta /home/usu/documentos en /backup. 
#### Deberá mantener las fechas de los archivos y mostrar información de la transferencia. a. 
#### Genera un log en /backup con nombre backup.log con la fecha/hora de inicio y fecha/hora de fin de la copia de seguridad.  
#### Muestra el archivo backup.log  
#### Muestra el árbol de directorios de /backup con el comando tree 


Usaremos el siguiente comando para poder hacer la copia de seguridad completa: 

<img width="616" height="28" alt="image" src="https://github.com/user-attachments/assets/78efde5c-1e73-4126-960b-6ae0a5687793" />

Al ejecutar el comando, veremos toda la información de la transferencia.

<img width="524" height="273" alt="image" src="https://github.com/user-attachments/assets/683e132e-2e19-4ac5-8b80-9d1fc38e07e6" />

Si vemos el archivo **/Backup/Backup.log** podremos ver la fecha inicio y final de la copia.

<img width="348" height="60" alt="image" src="https://github.com/user-attachments/assets/7565a88d-ab1b-414a-a7be-e137c1977175" />

Y si hacemos un **tree** de **/Backup** veremos que se copiaron los archivos correctamente. 

<img width="273" height="279" alt="image" src="https://github.com/user-attachments/assets/063af24e-3ad7-4747-9aff-e4cb8d3e730c" />

---

## Formatea o eliminar el contenido del segundo disco de la máquina virtual (montado en /backup) y repetir la copia de seguridad completa del punto anterior

### Excluyendo la carpeta /home/usu/documentos/gz y los archivos de más de 700 MB 

Borramos toda la información del directorio **/Backup.**

<img width="298" height="24" alt="image" src="https://github.com/user-attachments/assets/26e58388-86c8-4c71-8ab8-92c7f25b7a48" />

Y usaremos el rsync para hacer la copia. 
En este comando ahora tenemos que excluir el directorio /home/usu/documentos/gz y los archivos con un tamaño mayor a 700MB. 

<img width="664" height="29" alt="image" src="https://github.com/user-attachments/assets/66777a07-351a-4d9c-9983-7567dc5a06d2" />

Vemos el archivo **Backup.log** 

<img width="358" height="62" alt="image" src="https://github.com/user-attachments/assets/6971d7b2-bc6a-4aeb-a8eb-7b144797ee38" />

Hacemos un tree de **/Backup**

<img width="516" height="351" alt="image" src="https://github.com/user-attachments/assets/f12193c1-424f-4368-909c-88d5576b2325" />

---

## Copia la carpeta /home/usu/template_dvd en /home/usu/documentos y realiza una copia de seguridad incremental

### Incluye los archivos diferenciales en una carpeta independiente 

Usamos el comando **cp** para copiar **/home/usu/template_dvd** a **/home/usu/documentos.**

<img width="625" height="23" alt="image" src="https://github.com/user-attachments/assets/547b4983-4b38-4555-9092-a0b98b54eabc" />

Creamos un nuevo directorio, el cual alojará la nueva copia incremental y ejecutamos el siguiente comando. 

<img width="664" height="48" alt="image" src="https://github.com/user-attachments/assets/fddc5a9b-5910-47b0-b359-e94f3dbd4823" />

Para ver que se hizo correctamente, hacemos un tree del directorio donde esta la nueva copia incremental.

<img width="474" height="421" alt="image" src="https://github.com/user-attachments/assets/a7dd6283-6129-44a8-b137-057add09a7d2" />

Y si hacemos un tree de **/Backup** veremos que nada cambio, debido a que, al hacer la copia incremental, se copiaran aquellos archivos que se han modificado o que son nuevos en el directorio que hemos creado, en la copia completa no debe de copiarse nada nuevo.

<img width="528" height="348" alt="image" src="https://github.com/user-attachments/assets/1daf1e9f-b4ef-42f2-ace6-322852abeb6b" />

Observamos el archivo **Backup.log**.

<img width="347" height="60" alt="image" src="https://github.com/user-attachments/assets/c3bdd2f0-a3d2-4b60-8e00-34816e2307b2" />

---

## Elimina el archivo MD5SUMS, modifica el archivo base_debs.list y realiza una copia incremental 

Ahora, tenemos que eliminar y modificar 2 archivos y volver a hacer una copia incremental. 
Eliminamos el archivo

<img width="443" height="21" alt="image" src="https://github.com/user-attachments/assets/e4885281-ac14-4768-be1f-a0997cab9bdc" />

Modificamos el otro archivo

<img width="514" height="71" alt="image" src="https://github.com/user-attachments/assets/67683fde-149a-4225-8e6e-07cb8abdbb17" />

Ahora, usaremos el siguiente comando para hacer la copia incremental. 
Como podemos ver, en la nueva copia, se borra el archivo MD5SUMS y copia el base.debs.list

<img width="664" height="150" alt="image" src="https://github.com/user-attachments/assets/c2489ec5-677c-4a4f-aa3b-1c5a04354412" />

Hacemos un tree de **/incremental** que es donde guardamos la nueva copia, sin rastro de **MD5SUMS**.

<img width="476" height="398" alt="image" src="https://github.com/user-attachments/assets/7a0b5cff-78d7-4e4d-85ef-16db52049938" />

Vemos el archivo **Backup.log**

<img width="368" height="320" alt="image" src="https://github.com/user-attachments/assets/890dd9c9-b2dd-4e80-ab04-111d11d5d520" />

Aquí tuve varios errores a la hora de hacer la copia y hice varias pruebas, por eso salen todos estos registros.

---

## Instala cron

Para instalar **cron** usamos el comando 

```bash
apt install cron
```

<img width="640" height="100" alt="image" src="https://github.com/user-attachments/assets/d8d9c824-74db-48e5-8568-c47ec5d6dace" />

---

## Programar mediante crontab una copia completa 

### De la carpeta /home/usu/documentos, eliminando los archivos no encontrados en origen. La copia se llevará a cabo todos los días 1 de mes, a las 12 de la noche. Genera un log en /backup con nombre backup.log con la fecha/hora de inicio y fecha/hora de fin de la copia de seguridad

Vamos al archivo **/etc/crontab** y escribimos esta nueva línea. 

<img width="665" height="16" alt="image" src="https://github.com/user-attachments/assets/ce84a198-376b-43cc-9873-9fd9477aa16c" />

---

## Busca otras dos utilidades que permitan realizar copias de seguridad en Linux y comenta las diferencias con rsync 

### Bacula

- Herramienta para hacer copias de seguridad
- Es Open-Source
- Esta pensada para un entorno empresarial

**Diferencias con rsync**

- Más dificil de usar
- Viene con varios componentes/paquetes que la ayudan a hacer todo tipo de cosas


### Simple Backup Solution

- Enfocado para backups de escritorios
- Podemos hacer copias personalizadas, manuales y programadas
- Tiene una interfaz amigable con el usuario
- No permite restaurar información

**Diferencias con rsync**

- Es más fácil de usar
- Usa archivos comprimidos
- Tiene soluciones predefinidas, para hacer backup de algunos directorios
