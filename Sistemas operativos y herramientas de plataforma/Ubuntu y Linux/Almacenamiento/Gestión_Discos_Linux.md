### Antes de iniciar la máquina virtual, crea tres nuevos discos duros virtuales de 2 GB cada uno

Apagaremos nuestra máquina virtual, e iremos a **Configuración>Almacenamiento** y añadiremos 3 discos nuevos de 2GB. 

![image](https://github.com/user-attachments/assets/118a1707-b8fd-4ebd-b3b0-f9fe89d6f6a8)

---

### Abre el centro de software de Ubuntu. Busca e instala la aplicación GParted 

Ahora, vamos al centro de software de Ubuntu, buscaremos e instalaremos el software GParted, el cual, es una herramienta que sirve para gestionar las particiones de los discos duros. 

![image](https://github.com/user-attachments/assets/ff573ded-67c8-407d-a05f-1955bb13c5bd)

---

### Utiliza GParted para crear algunas particiones sobre el primero de los discos nuevos que has creado 

Al abrir GParted, nos saldrá una interfaz gráfica, para poder gestionar los discos.
A la derecha, saldrá un menú donde podemos seleccionar el disco a usar, en este caso, seleccionamos el primero.

![image](https://github.com/user-attachments/assets/eacf7265-971b-4ea1-a4e4-c1f5390a8913)

**Crea una tabla de particiones en el disco de tipo msdos**

En la barra de opciones de la parte superior, seleccionaremos la opción **Dispositivo>Crear una tabla de particiones**. 

Esto nos sacará una advertencia, en la cual especifica que se borrarán todos los datos del disco (no tenemos nada, asi que no nos afecta). 

Además de que nos deja elegir el tipo de tabla de particiones (**msdos”=”MBR**) 

![image](https://github.com/user-attachments/assets/cfa776e4-7932-4c90-a881-997c7e7c76cc)

↓

![image](https://github.com/user-attachments/assets/f5df4860-68a4-4c56-a682-f1a0bc222faf)

**Antes de particionar, responde estas preguntas**

- Si solo creáramos particiones primarias ¿Cuántas podríamos crear?
  - Podríamos crear 4 particiones primarias

- ¿Para qué sirve una partición extendida? ¿Cuántas como máximo podremos crear?

  - Las particiones extendidas son usadas para poder crear más particiones (aunque son lógicas, no primarias)
  - Y solo podemos crear una extendida, pero dentro de ellas, muchas lógicas

- Si tenemos tanto particiones primarias como extendidas ¿Cuántas de cada tipo podremos crear como máximo?

  - Podremos crear 3 primarias y una extendida

- ¿Qué es una partición lógica? ¿Cuántas como máximo podremos crear?

  - Subdivisión de una partición extendida en un disco duro, usadas para organizar y separar los datos en el disco duro, permitiendo que diferentes sistemas operativos y archivos se almacenen en diferentes particiones
  - Depende del tamaño de las particiones y del disco, aunque cuantas más particiones, más lento ira el disco 

**Añade una partición primaria sin formatear de 1GB**

Para añadir una partición nueva, daremos clic derecho sobre el disco y añadiremos una nueva partición. 

A esta partición le diremos que no tendrá sistema de archivos y tendrá un tamaño de 1GB, además de ser una partición primaria. 

![image](https://github.com/user-attachments/assets/88279d3b-9574-4c42-88bb-348ff6e71fdc)

**Añade dos particiones lógicas de 512 MB cada una, también sin formatear**

Para poder añadir 2 particiones lógicas, primero tendremos que crear una extendida. 

![image](https://github.com/user-attachments/assets/640d2c5c-4540-4501-9d9a-b18b297179fc)

Y luego ambas lógicas, dentro de ella, quedando el disco de la siguiente manera. 

![image](https://github.com/user-attachments/assets/49120300-afb9-4f14-9bd6-6e74f1ec59e6)

**Antes de salir del programa es necesario que apliques las operaciones, si no, no se guardarán los cambios que has realizado.**

Vamos a la **barra de opciones>Editar>Aplicar todas las operaciones.**

![image](https://github.com/user-attachments/assets/1afe81e9-2367-4e58-954e-6f49c278f1df)

**Una vez aplicados los cambios, observa los nombres de cada partición y sal del programa.**

![image](https://github.com/user-attachments/assets/f9297bb0-e394-41cd-bec1-86497d8c9f60)

---

### Mediante una orden, formatea en ext4 la partición primaria que habíamos dejado sin formatear 

Usaremos la orden: 

```bash
mkfs -t ext4 /dev/sdb1
```
para especificar el tipo de sistema de archivos que usaremos para formatear la partición. 

![image](https://github.com/user-attachments/assets/6e22113d-8d0e-4d26-b6b3-770991828343)

---

### También con órdenes, formatea las particiones lógicas:

**La primera en ext4 y un tamaño de bloque de 1024 bytes**

```bash
mkfs -b 1024 -t ext4 /dev/sdb5
```

![image](https://github.com/user-attachments/assets/9ca3f217-049f-4c0f-99ab-67c30512850f)

**La segunda en NTFS**

```bash
mkfs -t ntfs /dev/sdb6
```

![image](https://github.com/user-attachments/assets/6f19d899-a3ec-4b4b-9ba5-b6a578b281ed)

----

### Una vez creados los volúmenes es posible que Ubuntu realice un montaje automático de las particiones para mostrarlas gráficamente 

**Si es así, desmóntalas usando la interfaz gráfica, ya que vamos a estudiar su montaje manual.**

Por suerte para mí, Ubuntu no montó las particiones de forma automática. 

![image](https://github.com/user-attachments/assets/6473878f-a958-439d-875a-e3d13d236020)

Pero si hubiese sido el caso contrario, hubiésemos tenido que usar el comando:

```bash
umount <nombre del dispositivo> 
```

---

### Utiliza la orden df. Si está todo desmontado, no debería aparecer ninguna de las particiones que has creado.

La orden df muestra cómo está repartido el espacio en disco entre los directorios. 
Y podemos observar que no están las particiones que hemos creado. 

![image](https://github.com/user-attachments/assets/85c0980d-38ef-4cdf-b407-185588103121)

---

### Utiliza la orden du para comprobar la ocupación de tu directorio personal 

La orden du tiene varias opciones, para poder visualizar de mejor manera la ocupación de los directorios. 
En mi caso, use las opciones -s y -h juntas, para que me saque el espacio total y en MB

![image](https://github.com/user-attachments/assets/9d1094ee-d940-4a38-9e12-26f53d6eebaa)

---

### Chequea el sistema de archivos de la partición primaria del disco. Haz que los errores se reparen sin preguntar

Para poder hacer una comprobación de una partición, usaremos la orden fsck, la cual solo mira errores del disco, mas no los repara. 
Para que los repare automáticamente, usaremos la orden -a. 

![image](https://github.com/user-attachments/assets/2ef40067-b89d-4a04-812e-41d019fc0a09)

---

### Crea un directorio en tu carpeta personal. Monta la partición primaria en ese directorio. Tras montarla:

Antes de hacer nada, tenemos que montar la partición primaria anteriormente creada en un directorio de nuestra carpeta personal. 
Para poder montarla, usaremos la orden mount, especificando el dispositivo a montar y el punto de montaje.

![image](https://github.com/user-attachments/assets/66cb6ab6-922a-48c3-88b6-4c04dcd4e521)

Ahora ya si, podemos seguir con los apartados.

**Comprueba con df que ahora sí aparece y que indica en qué carpeta está montada**

Volvemos a usar df y vemos que ahora si está montada.

![image](https://github.com/user-attachments/assets/32d0d73e-865b-4a1e-82c5-9f7835254799)

**Intenta crear archivos dentro de la partición montada usando un usuario con permisos normales**

A mí no me dejaba crear archivos, asi que tuve que cambiar los permisos a la carpeta donde está montada la partición. 

```bash
chmod 777 disco1/
```

![image](https://github.com/user-attachments/assets/7109f4c6-a2e0-41cb-8335-cd3a96408faa)

Y ahora, sí que podremos crear archivos

![image](https://github.com/user-attachments/assets/010c5815-fc0e-4658-8a11-b22e4cbb930e)

---

### Desmonta la partición 

Para poder desmontar una partición, usaremos la orden:

```bash
umount /dev/sdb1 
````

![image](https://github.com/user-attachments/assets/ff0c0377-1c7b-4203-a99c-0b607fd62cba)

**Comprueba que los cambios de permisos se realizan sobre el sistema de archivos de la partición, no sobre el directorio: ahora los permisos serán los que tenía antes del montaje**

Al desmontar la partición y ver los permisos de esta, podemos comprobar que no se han aplicado los permisos especificados, si no que tiene los que tenía antes del montaje. 

![image](https://github.com/user-attachments/assets/222801bc-ca84-47f5-a009-9686b55a682a)

Mientras que el directorio tendrá los permisos aplicados:

![image](https://github.com/user-attachments/assets/89297e46-a4a6-45b1-92d6-79f69ef9103c)

**Comprueba también que, al hacer el desmontaje, el directorio pasa a ser un directorio normal y los archivos que creaste no se encuentran allí.**

De hecho, el directorio ahora, es un directorio normal y los archivos creados, ya no se encuentran dentro de él.

![image](https://github.com/user-attachments/assets/23a8123a-09ba-4c48-b135-c55d49224a29)

**Vuelve a montar la partición con la opción de solo lectura y comprueba que no permite crear archivos ni siquiera como root. Desmóntala de nuevo.** 

```bash
mount -r /dev/sdb1 disco1
```

Si vemos los permisos de la carpeta, veremos que son los mismos que antes.

![image](https://github.com/user-attachments/assets/bf7edaf1-de17-4ca6-ac71-7bdda07091ff)

Pero si ahora intentamos crear archivos dentro de él, no podremos, ni siquiera usando root. 

![image](https://github.com/user-attachments/assets/ba2ce8be-3f08-49d3-919b-6524231e5bad)

---

### El montaje manual de las particiones no persiste tras reiniciar el equipo. Para que se monten al iniciarlo, edita el archivo /etc/fstab 

Ahora, editaremos el archivo **/etc/fstab** para que las particiones se monten de forma automática al iniciar el sistema. 

![image](https://github.com/user-attachments/assets/4604a8f0-4360-475a-8f96-7297feeba257)

Pero antes de añadir nada, ejecutaremos la orden **blkid** la cual nos permite saber el UUID de cada partición. 

![image](https://github.com/user-attachments/assets/697058ba-108d-45da-b7a4-c9d14305a346)

**Sigue la estructura de cada línea del fichero que hemos estudiado para añadir una línea nueva**

![image](https://github.com/user-attachments/assets/ab4ac570-bcee-4c77-8a6b-fad601d60e3a)

En esta línea, hemos especificado que la partición **/dev/sdb1** se monte en **/home/usuario/disco1** en formato **EXT4** y le diremos que se monte con permisos de lectura y escritura, pero que si el montaje falla, se remonte con permisos de solo lectura. 

Además, no se tendrán en cuenta los respaldos (dump-freq) y en el orden de comprobación de errores, será el 3º (pass-num).

**Utiliza la opción -a de mount para que se haga el montaje de todo lo especificado en /etc/fstab. Comprueba que se monte correctamente**

```bash
mount -a
```

Si comprobamos el directorio **disco1** veremos que la partición se montó sobre él.

![image](https://github.com/user-attachments/assets/717bc95e-65f3-49b2-be32-07d442f918ae)

↓

![image](https://github.com/user-attachments/assets/a0c2378e-3ee6-4791-aee3-9fdb3dc5cd4b)

---

### Utilizando fdisk en el segundo disco que has añadido, crea una partición primaria de 512MB.

**fdisk** es una orden, la cual permite realizar particiones sobre los discos. 

Cuenta con una interfaz texto que permite crear, modificar y borrar particiones. 

Funciona en modo interactivo y para ejecutarlo se le pasa como argumento el archivo de dispositivo correspondiente al disco duro a particionar. 

![image](https://github.com/user-attachments/assets/7695697e-742a-49cb-997a-4a36b6d4786c)

Sacaremos la ayuda de fdisk para que nos ayude a realizar el particionado. 

Para poder hacer una partición, usaremos la opción n 

Para que sea primaria, la opción p 

El nº de la partición será el 1 

El primer sector será el predeterminado (no pondremos nada) 

En el último sector, pondremos +512M, lo cual indica que será una partición de 512 MB. Y para guardar los cambios, la opción w 

![image](https://github.com/user-attachments/assets/ad6396dd-7921-4e94-9daf-b99c57840e2e)

**Después formatéala en ext4**

```bash
mkfs -t ext4 /dev/sdc1
```

![image](https://github.com/user-attachments/assets/0ffd4c6b-d9d0-4dd4-954d-99575ec7f49e)

**Móntala en algún directorio y comprueba con df que todo es correcto**

Ahora, la montaremos en un directorio con **mount**. 
Y con **df** comprobaremos que se montó de forma correcta.

![image](https://github.com/user-attachments/assets/a54aa747-a85e-4e52-9115-2d2bfdeb038e)

**Crea (o copia) algunos archivos a la partición montada**

![image](https://github.com/user-attachments/assets/dab5da6d-41b4-42f5-8aaa-8ef7f112055c)

---

### Redimensiona la partición que has creado para que ocupe 1GB, utilizando fdisk.

Antes de usar fdisk, debemos de desmontar la partición. 

![image](https://github.com/user-attachments/assets/6bd7d9eb-0cf9-4af5-8395-1d57acf115e1)

Ahora ya si, usaremos fdisk. 

![image](https://github.com/user-attachments/assets/29684aa6-6acf-45fa-ac16-ccc4178f95ff)

**fdisk no tiene opción de redimensionar. Tendrás que eliminarla y crearla con el nuevo tamaño (mejor que antes de hacerlo la hayas desmontado)**

Para eliminar una partición, usaremos la opción **d** 
Y volveremos a crearla, usando las mismas opciones que anteriormente. 

![image](https://github.com/user-attachments/assets/6b7b1d5b-d2f2-4fd8-acfe-ac8762d57290)

**Comprueba con fdisk -l que el nuevo tamaño es correcto**

Si ejecutamos el comando fdisk -l nos saldrá una lista de todas las particiones que hay.

![image](https://github.com/user-attachments/assets/a8ea0e2e-cb11-484f-b649-d1909456bb58)

Si buscamos la partición, veremos que el tamaño del sistema de archivos es de 1GB (correcto). 

![image](https://github.com/user-attachments/assets/2be36fd2-b762-472e-8277-fd97c2fdfddf)

**Monta la partición y comprueba también su tamaño con df. Con fdisk verás el tamaño que aparece en la tabla de particiones, mientras que con df verás el del sistema de archivos. Ambos han de ser correctos**

Volvemos a montar la partición en una carpeta y seguidamente ejecutaremos la orden **df** para poder ver su tamaño. 

![image](https://github.com/user-attachments/assets/10c8cb7d-528e-485c-8781-1291fcf66a55)

↓

![image](https://github.com/user-attachments/assets/f2349c1e-c62d-45b4-a5a6-3583ba381309)

**Comprueba que los archivos que creaste sigan ahí**

Si hacemos un **ls -l** sobre la carpeta donde montamos la partición, veremos que siguen los archivos anteriormente creados.

![image](https://github.com/user-attachments/assets/c1bdf97f-7053-464f-9de4-8b7929832ad6)

---

### De nuevo con fdisk, crea una partición extendida que ocupe el resto del disco y, dentro, dos lógicas: una de 250MB y otra con el espacio restante

Ahora tenemos que volver a crear una partición extendida, pero esta vez sobre el disco 3. 
Volveremos a usar **fdisk** con las siguientes opciones: 
**n** para crear la partición 
**e** para que sea extendida 
**2** para que sea la 2º partición 
Y queremos que ocupe el espacio restante, asi que en el tamaño, no especificaremos ninguna opción 

![image](https://github.com/user-attachments/assets/f76f09ef-58bc-4515-bc23-cb17d975067c)

Ahora, crearemos 2 particiones, una de 250MB y otra con el espacio restante de la partición extendida

![image](https://github.com/user-attachments/assets/ee332fb8-e8cc-4815-b192-f8c525375282)

↓

![image](https://github.com/user-attachments/assets/19777671-959a-4f66-a38a-93f7f17ee87c)

↓

![image](https://github.com/user-attachments/assets/22184103-252a-44fb-a509-2f011c04d813)

---

### Haz que el sistema de archivos de la primera partición se compruebe automáticamente cuando se hayan realizado 50 montajes y ponle como etiqueta tu apellido (sin volver a formatear).

Para que una partición se compruebe, tenemos que usar la orden **tune2fs**, la cual permite configurar algunos parámetros del sistema de ficheros. 

Para especificarle que revise el sistema después de 50 montajes, usaremos la opción -c, la cual nos permite especificar el número máximo de veces que se montará el sistema de archivos antes de que se realice el chequeo. 

Y la opción **-L** sirve para ponerle una etiqueta. 

![image](https://github.com/user-attachments/assets/d3a984bb-1436-408f-af8f-2d512f52f22a)

---

### Utiliza dd para crear un archivo imagen de 20MB, rellenado con ceros 

El comando **dd** se usa para copiar literalmente bloques de datos desde un archivo de entrada a un archivo de salida.

Cuenta con las opciones: 

**If**= especificamos archivo desde el que tomarán datos 
**Of**= especificamos el archivo donde se copiarán datos 
**Bs**= tamaño de los bloques que se copiaran 
**Count**= nº de bloques que se copiaran 
**Skip**= nº de bloques del inicio del archivo de entrada que saltaremos  
**Seek**= nº de bloques del inicio del archivo de salida que saltaremos 
Para poder hacer este ejercicio usaremos el fichero /dev/zero para crear un archivo con 0.

![image](https://github.com/user-attachments/assets/4b1967c8-b42e-40eb-bd0a-b00a15d55f39)

**Formatéalo en ext4**

```bash
mkfs -t ext4 /mnt/archivo_17.img
```

![image](https://github.com/user-attachments/assets/1124a752-0734-4688-b72d-bd71f0e2b0b3)

**Móntalo y comprueba que puedes crear o copiar archivos dentro**

```bash
mount /mnt/archivo_17.img /mnt/directorio_17
```

![image](https://github.com/user-attachments/assets/a8f624f7-ce8a-4749-95ed-fcca5e3abe68)

Y si intentamos crear un archivo, veremos que podemos crearlo sin problemas.

![image](https://github.com/user-attachments/assets/c3c63818-91bd-42f4-b28b-9f358c5568ff)

---

### Utilizando parted, crea una nueva nueva tabla de particiones en el disco que usaste antes con fdisk, para eliminar todas las particiones de una vez (no vale eliminarlas una a una, debes crear una nueva tabla). Crea una sola partición primaria de 50MB e introduce algunos archivos dentro. Después:

Ahora, usaremos **parted** la cual es una herramienta similar a **fdisk**, pero es algo más versátil que fdisk además de ofrecer algunas herramientas más de forma explícita como el redimensionamiento o el formateo. 

Crearemos una **nueva tabla msdos** dentro de la partición (pasa que se me olvidó sacar la parte donde hago la partición, asi que no tengo esa captura, pero más adelante, cuando haya que crear una imagen de la partición, se podrán ver que se copian 50MB) 

Para crear la tabla usaremos la opción **mklabel**.

![image](https://github.com/user-attachments/assets/e3ba325c-6d3f-4568-bc5d-6ca66e060159)

Lo siguiente que tendremos que hacer, será formatear la partición, para que nos deje montarla. 

![image](https://github.com/user-attachments/assets/1ee77685-5a82-428a-acfd-4f24746fd610)

Y ahora la montamos.

![image](https://github.com/user-attachments/assets/bed27230-fc05-4d22-87fb-1fc9eb8ba98e)

Y creamos los archivos dentro del directorio.

![image](https://github.com/user-attachments/assets/99eb40a2-88f2-4e2d-b64f-df7c7ab05e2a)

**Utiliza dd para crear una imagen de la partición**

Ahora vamos a usar dd para crear una imagen del disco.

![image](https://github.com/user-attachments/assets/85952c3c-a494-468d-9834-4a048c305d61)

**Monta el archivo que acabas de crear y comprueba que los archivos siguen ahí.**

Si montamos la imagen en un directorio y vemos su contenido, veremos que se encuentran los archivos que hemos creado en la partición. 

![image](https://github.com/user-attachments/assets/aefbccdf-a70e-4e4d-8338-1c7bee976e1d)

**Elimina los archivos de la partición (OJO: de la partición, no del archivo de imagen)**

Ahora, vamos a eliminar los archivos de la partición, para restaurarlos posteriormente con la imagen.

![image](https://github.com/user-attachments/assets/8a8ee18e-390f-4254-a8c8-7869fd6e2e44)

**Restaura la imagen en la partición y comprueba que los archivos vuelven a estar en la partición**

Para restaurar los archivos, usaremos la orden dd y le pasaremos como archivo de entrada la imagen y como archivo de salida la partición.

![image](https://github.com/user-attachments/assets/ee7fa1d7-aa34-4af4-99a7-a49af1ce47a6)

Si hacemos un **ls -l** sobre el directorio, veremos que tenemos los archivos devuelta. 

![image](https://github.com/user-attachments/assets/70e31d65-a745-41a2-bec8-b77a296d805f)

---

### Utiliza dd para hacer una copia en un archivo del superbloque del primer grupo de bloques de la partición donde tienes instalado el sistema operativo. Una vez hecho, haz un volcado en hexadecimal del archivo y busca en él 

Ahora, vamos a hacer una copia del superbloque de la partición donde se encuentra el SO. 

Para ello, usaremos la orden dd, como archivo de entrada le pasaremos la partición, le diremos que coja un bloque de 1024KB (tamaño del superbloque) y que se salte el 1º bloque de 1024KB. 

![image](https://github.com/user-attachments/assets/34854817-05c5-408b-9109-3e9c78d79c64)

Si hacemos un volcado en hexadecimal del archivo, veremos lo siguiente: 

![image](https://github.com/user-attachments/assets/6de4ac98-36e8-47f3-adab-8c99331f3e2e)

**El número mágico del sistema de archivos** 

El nº mágico es un **valor hexadecimal** específico que se utiliza para identificar el tipo de sistema de archivos de una partición. 

Cada tipo de sistema de archivos tiene su propio número mágico, que es un valor hexadecimal único y predefinido. Por ejemplo, el número mágico para el sistema de archivos ext4 utilizado en Ubuntu es "0xEF53" 

Y este valor, será lo que tengamos que buscar en el archivo.

**El UUID de la partición**

![image](https://github.com/user-attachments/assets/7128aebb-3ccf-4f92-8300-e85f06ae2d6c)

**El número de inodos de la partición**

![image](https://github.com/user-attachments/assets/c9eefcc4-b4f2-4f53-ba36-ac9d5e996f62)

**El número de bloques de la partición**

![image](https://github.com/user-attachments/assets/59ba1887-40c7-4838-8f68-e08e1a8bd717)

**El número de bloques libres**

![image](https://github.com/user-attachments/assets/5feb1d79-f1ec-4aa8-9291-7d0bf6da991e)

**El número de inodos libres**

![image](https://github.com/user-attachments/assets/0034f4e8-cd1b-4bdc-bdd7-bc21f9ad298a)

En la siguiente página se encuentra cada valor encontrado dentro de un rectángulo de un color determinado. 

![image](https://github.com/user-attachments/assets/57230277-a9b5-4d37-aabc-21512b0a76ed)

---

### Vamos a trabajar con la GPT, primero para ver que lo que estudiamos en teoría está ahí y, además, para aprender a repararla

**Copia aquí el esquema con la estructura de la GPT que vimos en la teoría. Lo utilizarás como referencia para hacer lo demás**

![image](https://github.com/user-attachments/assets/35b6fcd8-646e-421e-9254-fdede6c69eca)

**Utiliza dd para crear archivos de volcado de los siguientes elementos de tu disco principal, donde esté instalado el SO (probablemente, sda). Has de crear los archivos en otro disco, ya que luego vamos a usarlos para restaurarlos:** 
**Copia de la GPT principal con MBR de protección incluido.**

Para poder copiar la GPT, usaremos el comando dd y como archivo de entrada le especificaremos el disco 1. 

El bs lo pondremos a 512B, debido a que esto es lo que ocupa cada LBA/bloque de la GPT y contaremos 34 bloques, para que copie toda la GPT. 

![image](https://github.com/user-attachments/assets/374e21b5-85d6-4650-b8e9-270a97fbd90e)

**Copia de la GPT principal sin MBR de protección**

Usaremos el mismo comando, pero esta vez le pondremos que se salte el primer bloque (este es el MBR de protección) y que coja solo 33 (COMO) bloques. 

![image](https://github.com/user-attachments/assets/e3216679-e3f8-4aa3-9d14-ffbf71d30fef)

**Copia de la GPT secundaria**

Ahora, diremos que copie otra vez 34 bloques, pero que se salte 134217695 bloques, que son los que conforman el resto del disco

![image](https://github.com/user-attachments/assets/af65d03d-61f5-4987-ad7e-ae0f3cea1e40)

**Muestra el contenido en hexadecimal de cada uno de los tres archivos. Debes remarcar con un cuadro rojo en cada una de ellas, e indicar qué parte corresponde a:**

El MBR de protección (solo en el archivo que lo tiene) - Azul
La cabecera de la GPT (principal o secundaria, según el caso). - Amarillo
Las entradas de las particiones - Verde

![image](https://github.com/user-attachments/assets/c14e785e-1858-41fa-8af7-851a7fdfebf0)

↓

![image](https://github.com/user-attachments/assets/046e6558-62f3-446e-bb4a-348f3b20d4e2)

↓

![image](https://github.com/user-attachments/assets/c0e5cd56-714e-473e-bdb9-983c9f3a1cb1)

**Consulta en la Wikipedia los campos de las cabeceras de la GPT. Sobre el volcado que has hecho de las GPT principal y secundaria, busca los siguientes campos:**

- Firma que marca el comienzo de la cabecera. - Azul
- Tamaño de la cabecera (tradúcelo a decimal).  - Verde
- CRC de la cabecera (será diferente en la principal y en la secundaria). - Gris
- LBA en el que se encuentran las cabeceras de la GPT principal y secundaria (cada cabecera contiene primero su propia localización y después la de la otra cabecera, por lo que ambas tendrán los valores intercambiados). - Amarillo
- GUID del disco - Gris oscuro
- Número de entradas totales en la tabla de particiones (tradúcelo a decimal y recuerda que debería ser 128). - Roja

Si vamos a Wikipedia, nos encontraremos la siguiente tabla, la cual nos indica los campos de la cabecera y sus valores (en algunos), así que ahora nos dispondremos a buscarlos en el archivo anteriormente creado. 

![image](https://github.com/user-attachments/assets/bd049e9a-5692-4956-96e8-819d6ab09129)

↓

![image](https://github.com/user-attachments/assets/f64a1e4c-d494-49ab-9989-186f4f3b15c5)

**Sobrescribe con ceros la GPT principal. Comprueba que el equipo ya no arranca.**

Usaremos la orden dd, usando como archivo de entrada, /dev/zero y como archivo de salida, nuestro 1º disco duro. 
Le diremos que coja 34 bloques de 512B cada uno. 

![image](https://github.com/user-attachments/assets/74201a7b-3761-4ecb-b93d-ff705da2c0f3)

Si intentamos iniciar el equipo, nos saldrá un error. 

![image](https://github.com/user-attachments/assets/31bdd23d-b905-4e96-883a-40d000dc2f5e)

**Usa la herramienta gdisk para restaurar la GPT principal desde la secundaria. Comprueba que el equipo vuelva a arrancar**

Para poder restaurar la GPT principal, usaremos la GPT secundaria. 
Para ello, tendremos que iniciar el equipo desde el CD de instalación de Ubuntu. 

![image](https://github.com/user-attachments/assets/94e29291-926f-4f59-9802-62f5b8cbc920)

↓

![image](https://github.com/user-attachments/assets/16fc27f2-8e37-4942-b135-b1e6d0183981)

Una vez hemos iniciado, entraremos en un terminal y pondremos el comando: 

```bash
sudo gdisk /dev/sda
```

Y le diremos al programa que use la GPT actual (1). 

![image](https://github.com/user-attachments/assets/871fb3ed-8bed-4f7f-a90e-8604d371534c)

Le especificaremos que queremos hacer una backup de la GPT secundaria a la GPT primaria, con las opciones **r** (restaurar) **b** (usar GPT secundaria) **w** (escribir cambios y salir).

![image](https://github.com/user-attachments/assets/7b29ce27-9808-4d27-8992-2459d2d56db3)

Y ya estaría la GPT reparada. 
Para poder comprobarlo, iniciaremos el sistema de nuevo y veremos que ya inicia de manera normal.

![image](https://github.com/user-attachments/assets/6857d1f0-1c21-4e46-b541-eb7cd09f4782)

**Sobrescribe con ceros tanto la GPT principal como la secundaria. Comprueba que el disco no arranca de nuevo.  Como hemos borrado también la secundaria, ya no podemos restaurar la principal desde la secundaria.**

Ahora, haremos lo mismo que antes, pero esta vez también borraremos la GPT secundaria

![image](https://github.com/user-attachments/assets/d1d62990-e887-4e26-b549-53e24be62fc3)

Si intentamos iniciar de nuevo la máquina, nos volverá a salir el mismo error. 

![image](https://github.com/user-attachments/assets/ae64b32c-9d8b-4215-822b-f6bcbd121fc4)

**Usa dd para restaurar ambas GPT desde las copias que hiciste antes. Si lo haces correctamente, Debería volver a funcionar todo**

Tendremos que volver a iniciar desde el instalador de Ubuntu. 

Aquí, lo que haremos será montar el disco donde tenemos nuestras copias de la GPT primaria y secundaria creadas anteriormente en un directorio. 

Luego, con el comando dd, le pasaremos como archivo origen, el archivo con los datos de la GPT primaria/secundaria y como destino, la GPT primaria/secundaria del disco. 

![image](https://github.com/user-attachments/assets/dbe2fd1c-f6ea-44e8-8b06-c38a271899ff)

Si abrimos GParted, veremos que nos reconoce el disco y sus particiones, cosa que antes al iniciar el CD de instalación no hacía, debido a que el sistema no era capaz de saber que había dentro del disco, por la falta de la GPT.

![image](https://github.com/user-attachments/assets/bf363e4c-d186-4f47-a004-58dae009fc36)

---

### Utiliza dd para copiar los bloques del contenido de un archivo. Por ejemplo, podemos hacerlo con el de las opciones por defecto de grub (recuerda: /etc/default/grub), ya que nos resultará sencillo al tener habitualmente solo un bloque. Ten cuidado de hacer una copia de seguridad del archivo por si acaso.

Primero, ejecutaremos el comando:

```bash
stat /etc/default/grub 
```

para poder ver el inodo en el que se encuentra el archivo

![image](https://github.com/user-attachments/assets/6f17bee4-d3bd-4626-858b-957d8353cfec)

Para poder averiguar los bloques que se encuentran en el inodo 2094264, deberemos de instalar antes la orden istat (que es como la orden stat, pero para los inodos.). 

![image](https://github.com/user-attachments/assets/77d50902-3d0f-4c05-ad7a-4157bdfcd65b)

Una vez instalada, procedemos a ejecutarla. 
Sintaxis: **istat /dev/sda1 2094264**

![image](https://github.com/user-attachments/assets/468fa850-5be6-4243-a391-d22daf78e01a)


Una vez sabemos el bloque en el que se encuentra, nos resultara muy sencillo realizar la copia. 

Volvemos a usar dd: 

Como el tamaño de bloques en nuestro sistema es de 4096 B, será el tamaño que pondremos en **bs=** además, contaremos solo 1 bloque y skipearemos **8421557**. 

![image](https://github.com/user-attachments/assets/02adf35d-4416-4b5f-9d30-97bef0526c22)

Ahora, solo tenemos que comparar el contenido de ambos archivos y ver que 
es similar. 

![image](https://github.com/user-attachments/assets/e74774ef-74e4-4d86-a4fd-b2d164d741ca)

↓

![image](https://github.com/user-attachments/assets/ee629153-a382-4049-bd48-e08473549eab)

---

### Utiliza la partición lógica más grande de las que creaste en la parte 2 como espacio de intercambio, añadiéndolo al que ya tienes

Ahora, vamos a usar la partición creada en la 2º parte, para usarla como área de intercambio 

Para poder usarla, primero tenemos que prepararla, asi que usaremos la orden **mkswap** la cual prepara archivos para que funcionen como área de intercambio. 

![image](https://github.com/user-attachments/assets/a63bba26-3217-4d51-a27d-f3d470dae746)

Ahora, usaremos el comando **swapon** para hacer que el sistema la pueda usar (aunque también podríamos hacerlo en el archivo **/etc/fstab**, para que se quedará de forma permanente).

![image](https://github.com/user-attachments/assets/f13ad2ba-1561-4d97-ace1-1241409f6ef2)

Ahora, iremos a GParted y veremos que la partición se está usando como partición SWAP. 

![image](https://github.com/user-attachments/assets/5df34d65-88d9-43cc-a54c-c9f7c1fb016d)

---

### Utiliza dd para crear una imagen rellena con ceros de 512 MB. 

Usaremos el comando:

```bash
dd if=/dev/zero of=arch.img bs=512MB count=1 
```
No tengo la captura, por eso pongo el comando 

**Haz que se utilice como área de intercambio, sumándola a la partición anterior y a la que especificaste en la instalación.**

Primero, tenemos que prepararla. 
Es posible que tengamos que cambiar los permisos, así que usaremos **chmod** y los cambiaremos

![image](https://github.com/user-attachments/assets/334f5d7f-e4ab-4568-b679-20935907265d)

Una vez preparada, la activamos. 

![image](https://github.com/user-attachments/assets/51284534-0665-4b35-8da1-3598b9095aee)

**Comprueba que ahora se utilizan las dos particiones y también el archivo para el intercambio**

Para poder ver si la partición y el archivo están siendo usados como archivos de paginación, ejecutaremos el comando **swapon -s** el cual nos permite verlo. 

![image](https://github.com/user-attachments/assets/d9695931-e605-4876-bb41-ab197c71d484)

---

### Realiza la siguiente configuración RAID con los discos añadidos: 

**Una configuración RAID-0 usando dos particiones de 512 MB, una en el primer disco y otra en el segundo**

Para poder crear RAID, usaremos la orden **mdadm**, la cual tenemos que instalar primero. 

![image](https://github.com/user-attachments/assets/a0b9aa9b-645a-430f-8c4e-32f6860ac995)

Una vez instalado, procedemos a crear nuestro RAID. 
Pero antes, vamos a explicar la orden mdadm 
Sintaxis: 

```bash
mdadm --create [--verbose] dispositivo_RAID --level=nivel_RAID --raiddevices=num_particiones lista_particiones [--spare-devices=num_spare lista_spare]
```
- **--create**
  - Sirve para indicar al comando, que vamos a crear un RAID. 
- **Dispositivo RAID**
  - Ruta del archivo especial que representará al RAID
  - Suelen ser **/dev/md0 /dev/md1** etc
- **--level**
  - Especificaremos el nivel de RAID que queremos crear
  - En vez de usar números, se usan palabras que los representan
-  **raid-devices**
  -  Se especifican el nº de dispositivos que conformarán el RAID y cuales son.

Para este primer RAID, el comando sería el siguiente:

![image](https://github.com/user-attachments/assets/f67617ec-5a77-4a57-bf7e-57ff6ce065dd)

Una vez creado, lo podemos formatear, en caso de querer usarlo. 

![image](https://github.com/user-attachments/assets/40b145af-998a-44f6-a90d-0e359768fd18)

**Una configuración RAID-1 usando dos particiones de 1 GB, una en el primer disco y otra en el segundo. Además, en el tercer disco se usará otra partición como partición de reserva.**

Ahora, vamos a crear un RAID 1, el cual se crea de la misma manera, cambiando solo la opción **--level**, pero esta vez tenemos que usar una partición de reserva, así que tenemos que usar la opción **–spare-devices**, pasándole el nº de dispositivo de reserva que usaremos y cual es. 

![image](https://github.com/user-attachments/assets/d8cace20-9151-48dc-afa5-04d32ef89533)

Al igual que con el RAID 0, procederemos a formatearlo. 

![image](https://github.com/user-attachments/assets/ae5d09a2-a8b8-4770-aa4b-f2477243d2e4)

**Una configuración RAID-5 usando tres particiones de unos 512 MB, una en cada disco**

Y, para terminar, crearemos un RAID 5. 
El proceso es el mismo.

![image](https://github.com/user-attachments/assets/5337fa38-41ee-429b-a5cb-910315dde0fd)

Y al igual que con los demás, lo formateamos.

![image](https://github.com/user-attachments/assets/280e299b-bce3-4ec3-9580-5fb1ac031191)

---

### Deberás pasar la configuración de los tres conjuntos RAID al archivo mdadm.conf, dándoles, respectivamente, los nombres md0, md1 y md2.

Cuando se crea un c RAID con **mdadm --create**, el RAID sigue disponible cuando se reinicia el sistema.  

Pero el número asignado al archivo de dispositivo pasa a ser desde 127 en adelante.

Ósea que si creamos el volumen **/dev/md0**, tras reiniciar, pasará a ser **/dev/md127**, debido a que, durante el arranque, **se da preferencia** a los volúmenes especificados en el archivo **/etc/mdadm/mdadm.conf**. Así, se reservan los números del 0 al 126 y lo que se haya configurado aparte recibe los números posteriores.

Para poder pasar la configuración de los RAID al archivo **/etc/mdadm/mdadm.conf**, usaremos la orden:

![image](https://github.com/user-attachments/assets/95c62fb5-f53b-4285-81ba-24ba38a55e76)

Y seguidamente la orden

![image](https://github.com/user-attachments/assets/7484040c-e5e6-4398-9433-3b90ee805070)

Esta orden, permite que se actualice la imagen de la memoria RAM que se carga durante el arranque del sistema operativo. 

Así que ahora contenga lo que hemos actualizado en **mdadm.conf**

---

### Crea tres directorios y haz que tus tres conjuntos RAID se monten en ellos automáticamente durante el arranque del sistema. Reinicia para comprobar que están montados y usa df para ver que todo es correcto. 

Ahora, crearemos 3 directorios, en cada uno montaremos un RAID.

![image](https://github.com/user-attachments/assets/5fc05f67-7854-47ad-8017-d19cb4355894)

Para poder montarlos, usaremos la orden **mount**:

![image](https://github.com/user-attachments/assets/58f4d722-f988-40ec-ae2a-917f79638f19)

Para poder ver los RAID montados, usaremos la orden **df**

![image](https://github.com/user-attachments/assets/87a47043-a57c-440b-b3cb-4fb0b080e415)

Ahora, deberemos hacer que se monten en esos directorios en cada inicio del sistema. 
Así que tenemos que editar el archivo **/etc/fstab** y agregar las siguientes líneas. 
Y al reiniciar la máquina, veremos que siguen montadas.

![image](https://github.com/user-attachments/assets/0a2630cd-242c-4ff1-bc82-22cb037947bd)
