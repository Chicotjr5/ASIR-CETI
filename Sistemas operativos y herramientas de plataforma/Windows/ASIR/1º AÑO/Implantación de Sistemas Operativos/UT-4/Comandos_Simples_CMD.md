### Ejecuta las órdenes necesarias para crear esa estructura de directorios 

![image](https://github.com/user-attachments/assets/14d84655-62be-4373-a50a-2190d8b819ef)

Tenemos 2 modos de hacerlo:

**Con rutas absolutas**: 
- Ponemos el comando md y por cada carpeta que creemos, tendremos que especificarle su ruta desde la carpeta raíz (\). 
- Para especificar una carpeta u otra, dejaremos un espacio.

![image](https://github.com/user-attachments/assets/89cb7b32-e564-47e7-a219-fe6469ba8d12)


**Con rutas relativas**: 
- Ponemos el comando md y por cada carpeta, especificaremos la ruta desde el directorio donde nos encontramos.

![image](https://github.com/user-attachments/assets/a06f0c88-7c21-4037-911a-a4e70e8eceab)

Y comprobamos que se hayan creado las carpetas: 

![image](https://github.com/user-attachments/assets/b1637c47-cdf8-40f6-b26d-bca741ea41ca)

---

### Orden para cambiar de directorio actual desde el directorio Sega al directorio clásicos. 

**Ruta absoluta**

![image](https://github.com/user-attachments/assets/0444d8a3-55ae-4e28-903c-7f6bc8cbe446)

**Ruta relativa**

![image](https://github.com/user-attachments/assets/e437eb67-6c1d-41f1-9c87-950ef46afce2)

---

### Borrar el directorio Xbox

Usaremos el siguiente comando junto con una ruta relativa.
```bash
rd
```

![image](https://github.com/user-attachments/assets/b2ca6917-0aa0-4ea3-ad71-07d708fe542c)

Y vemos que se ha borrado el directorio.

![image](https://github.com/user-attachments/assets/1d1193e1-c48d-4787-ba11-8a3aff10580b)

---

### Utilizar la orden tree para ver la estructura de subdirectorios de sistemas

Usamos la orden 
```bash
tree 
```
y le decimos que salga de **Sega\clasicos\chicote_matamala** y que podamos ver todos los directorios e incluso los archivos.

![image](https://github.com/user-attachments/assets/59ba4725-d64e-4e9c-9f7c-c56e1a636009)

---

### Crea los siguientes archivos de texto nuevos

Ahora vamos a crear 4 archivos de texto desde el CMD. 
Todos tienen que tener un contenido a la hora de crearlos. 
Y usaremos 2 métodos para hacerlo.

Con el comando:

```bash
COPY CON
```

![image](https://github.com/user-attachments/assets/04c7b452-fa25-4264-95d9-799929bf4f62)

Y con el comando:

```bash
echo
```

![image](https://github.com/user-attachments/assets/b61c5e60-c1c9-4f42-b333-9d938f0aed1e)

Y comprobamos que se han creado:

![image](https://github.com/user-attachments/assets/714c5d36-27e7-453e-9f82-5e1cc6fc9f8c)

↓

![image](https://github.com/user-attachments/assets/f8da9add-935f-476c-a53c-4b7ed174c5a7)

↓

![image](https://github.com/user-attachments/assets/c2505d33-03b2-4279-bf33-2b6eadace86e)

---

### Utilizar la orden tree para ver el contenido de sistemas y todos subdirectorios, incluyendo los ficheros 

Usaremos el comando **tree** y le diremos que se salga del directorio **Sega\clasicos\chicote_matamala** además de decirle que también queremos ver los archivos con la orden **/f**. 

![image](https://github.com/user-attachments/assets/6cf8a2e3-2a21-428e-8424-d08de7dec1ed)

---

### Intenta borrar el directorio activo (.). , ¿Qué mensaje da el sistema operativo? ¿Por qué? 

Cuanto intentamos borrar el directorio activo, no podemos y nos sale el siguiente mensaje:

![image](https://github.com/user-attachments/assets/56892d9a-e151-425e-bffa-2e4e82089634)

No podemos borrar este directorio, porque es el directorio en el que estamos.

### Activar como directorio actual el directorio raíz 

Para activar el directorio raíz como el actual, tan solo tenemos que poner el comando **cd \** 

![image](https://github.com/user-attachments/assets/a501b2d4-c925-40c6-83c0-b651f166e891)

---

### Muestra todos los elementos del directorio Nintendo de diferentes formas

#### A

Usaremos el comando:

```bash
dir /o:gn
```

**/o**  Muestra los archivos según el orden indicado.
**/o:g**  Agrupa primero los directorios.
**/o:n** Ordena los elementos por orden alfabético.

![image](https://github.com/user-attachments/assets/31ea967e-44d5-4514-882f-fcb8e47d14cd)

#### B

Usaremos el siguiente comando:

```bash
dir /o:g-n
```

Al poner – se ordenarán los elementos de forma inversa a la original 

![image](https://github.com/user-attachments/assets/f4832fa6-fa97-4851-a99a-2a84a4e32510)

#### C

Usaremos el siguiente comando

```bash
dir /o:s
```

Ordena los elementos por tamaño:

![image](https://github.com/user-attachments/assets/69a93cd4-f0e6-43bb-8fb7-60d2e490900a)

#### D

Usaremos el comando dir con la orden /s | more 

```bash
dir /S | more
```

![image](https://github.com/user-attachments/assets/be663127-6b28-43eb-8095-ca200b9bd813)

---

### Utilizando la herramienta gráfica adecuada, crea tres ficheros en el directorio PlayStation:

Vamos a la carpeta PlayStation, damos clic derecho nuevo y creamos los 3 nuevos archivos.

![image](https://github.com/user-attachments/assets/859e101c-643c-4694-b2e2-0d9449ac66d5)


---

### Copia todos los ficheros que tengan como extensión .docx del directorio PlayStation en el directorio Xbox

Usaremos el comando **copy** y para decirle que copie todos los archivos con extensión **.docx**, pondremos un ***.docx**, que indica que solo se copien los archivos con esa extensión, sin importar el nombre.

![image](https://github.com/user-attachments/assets/bda112b2-db36-4f32-b78d-5e5d785b38b7)

---

### Copia el directorio PlayStation con todo su contenido a un directorio llamado “PlayStation copia” que esté justo dentro de sistemas. 

De normal usaríamos el comando **copy** para realizar este ejercicio, pero hay un problema y es que no queremos generar un nuevo archivo, si no un nuevo directorio. 

Y como solo podemos usar una sola orden, tendremos que utilizar el comando **xcopy**, el cual permite copiar archivos y directorios. 

Además, usaremos el atributo **/i** para decirle que el destino no existe y que es un directorio, que nos lo creará automáticamente. 

![image](https://github.com/user-attachments/assets/adbe23d1-e781-4b51-b9d8-1893d4ee6291)

---

### Visualiza el contenido del fichero “Ryu ga gotoku.txt”.

Usaremos la orden **type** con la ruta relativa al archivo.

![image](https://github.com/user-attachments/assets/4047f16a-f744-4d29-9525-5a688d0ae143)

---

### Cambia el nombre del fichero “Street Fighter.docx” del directorio XBox por Tekken.docx usando la orden REN

Primero ponemos la ruta del archivo al cual vamos a cambiar de nombre, seguido de su nuevo nombre. 

![image](https://github.com/user-attachments/assets/84621b87-3bf7-4787-ad5d-42d7c8438613)

---

### Vuelve a cambiar el nombre del mismo fichero. Ahora en lugar de Tekken.docx se llamará “Killer Instinct.docx” pero usando la orden MOVE

Ahora tenemos que hacer lo mismo pero con la orden **MOVE**. 

Lo que tiene de peculiar este comando, es que tenemos que especificar una ruta absoluta, para decirle al comando en que letra de unidad nos encontramos. 

Y después de poner la ruta absoluta, no sirve con poner el nuevo nombre del archivo, si no que tenemos que poner la ruta hacia este. 

![image](https://github.com/user-attachments/assets/ff8cbe28-e73b-4b46-afb8-033e13b5a729)

---

### Borra el fichero “Nier Automata.docx” del directorio PlayStation Copia 

Usaremos el comando 

```BASH
del  
```

con la ruta relativa al archivo

![image](https://github.com/user-attachments/assets/7272fae0-5fd8-4f50-b8e7-09a16a2e403d)

---

### Copiar todos los archivos que empiecen por r, sea cual sea su extensión, del directorio PlayStation al directorio PC 

El comando es el mismo que el de antes, solo que ahora en vez de poner *.docx, pondremos r*.* 
Le decimos que copie solo archiven que empiecen por r, dando igual su extensión.

![image](https://github.com/user-attachments/assets/2b3eb656-4185-4add-bbc4-3b0c0af2673d)

----

### Crea, dentro del directorio PC, los siguientes subdirectorios, usando una sola orden: com, empG, empA7 

Usaremos el comando **md** y para crear cada carpeta, hay que especificar su ruta relativa, no se puede poner el nombre de las carpetas seguidas

![image](https://github.com/user-attachments/assets/b62d44e2-2cc7-4869-8886-3af1afaebae6)

---

### Obtén la lista de los ficheros del directorio C:\windows\system32 con extensión .EXE , ordenados por tamaño, de mayor a menor

Usaremos el comando **dir** con los atributos **/o:-s** además de decirle que solo muestre los archivos con extensión **.exe (*.exe)**

![image](https://github.com/user-attachments/assets/08cb9984-2d33-4af1-8398-8931fa973808)

### Copia todos los ficheros de C:\windows\system32 que tengan como extensión .COM al directorio C:\users\usuario\sistemas\PC\com 

Usaremos el comando copy y le diremos que solo copie los archivos con extensión .com, independientemente del nombre que tengan (*.com)

![image](https://github.com/user-attachments/assets/a443c17e-ac06-4d12-83a4-9c8763b2a9ab)

### Copia los ficheros de c:\windows\system32 que empiecen por G a C:\users\usuario\sistemas\PC\empG

Usaremos el comando copy y le diremos que copie solo los archivos que empiezan por g (g*.*) 

![image](https://github.com/user-attachments/assets/5ec5803e-3885-44bd-a8ef-0615131504f1)

### Copiar ahora todos los ficheros de C:\windows\system32 que empiecen por A y que tengan una longitud total (incluyendo la a) de 7 caracteres o menos (más cualquier extensión), al directorio C:\users\usuario\sistemas\PC\empA7

Usaremos el comando copy y le diremos que copie solo los archivos que su nombre empieza por a y tienen 8 caracteres o menos en el nombre. **(a???????)** 
? Indica un solo carácter

![image](https://github.com/user-attachments/assets/b82d3339-ae21-4b37-840b-91472c588c77)

---

### Borra de C:\users\usuario\sistemas\PC\com todos los ficheros cuyo nombre empiece por D y tenga 8 o menos caracteres

Usaremos el comando **del** y le diremos que borre todos los archivos que empiecen por D y tengan 8 caracteres o menos en su nombre. **(d???????)**

![image](https://github.com/user-attachments/assets/db6a8cc6-bf48-47d7-ba53-c22fc21ab002)

---

### Copia todos los archivos de c:\windows\system32 que tengan como extensión .ini en uno sólo que se llame total.nue dentro de C:\users\usuario\sistemas\ Ape1_ape2\PC

Usamos el comando **copy** y le decimos que copie todos los archivos con extensión .ini (*.ini) al archivo total.nue. 

![image](https://github.com/user-attachments/assets/fd527a4f-3c96-40ae-b988-825cb7c0fea2)

---

### Muestra en el cmd todo el contenido del fichero quijote.txt, de manera que aparezca todo seguido, de una sola vez en pantalla, de 3 formas diferentes

Usaremos el comando **type** para ver el contenido del archivo en una sola pantalla.

![image](https://github.com/user-attachments/assets/6c52fb56-b871-40b6-8c18-f119d7aeaa13)

Otra forma es usando la orden **more** sin ningún atributo.
Y si damos a Enter, iremos avanzando poco a poco.

![image](https://github.com/user-attachments/assets/6d71d1fd-5ee4-4ce2-aeb4-83afcc2b8986)

Otra forma es con la redirección de entrada.
Para usar la redirección, ponemos el comando more y al lado el signo < 

![image](https://github.com/user-attachments/assets/08d2b7c6-e77f-4972-86d9-c048e137b4f1)


Y por último, lo hare usando tuberías con los comandos **type** y **more**.

![image](https://github.com/user-attachments/assets/245fb976-d533-4c5c-9a3e-4e7c70c7a803)

---

### Utiliza una orden para contar el número de líneas en que aparece la palabra “hidalgo”

Usamos el comando **find** con el atributo **/c** y le decimos que la cadena de caracteres que debe buscar es **“hidalgo”** 

![image](https://github.com/user-attachments/assets/94a96d31-9c2c-445e-b30f-bf707cc2504d)

---

### Muestra, mediante una orden, solo las líneas en las que aparece la frase “Dulcinea del Toboso”. En cada línea, deberá mostrar además el número de dicha línea en el texto 


Usamos el comando **find** con el atributo **/n** y le decimos que la cadena de caracteres que debe buscar es **“Dulcinea del Toboso**”

![image](https://github.com/user-attachments/assets/1163b30b-8299-447d-9ae4-2dfd1e021b96)

---

### Haz lo mismo del apartado anterior, haciendo que no distinga mayúsculas de minúsculas

Usamos el comando **find** con el atributo **/n** y **/i** y le decimos que la cadena de caracteres que debe buscar es **“dulcinea del toboso”** 

Al ponerle que no distinga de mayúsculas y minúsculas, da igual si ponemos el nombre con o sin mayúsculas, el comando buscará esos caracteres. 

```bash
find /n #  Muestra el número de línea de cada línea 
```

```bash
find /i #  Omite mayúsculas/minúsculas al buscar una cadena.
```

![image](https://github.com/user-attachments/assets/602ca5a3-84b4-4a3a-ad13-a3bfa2a90324)







































