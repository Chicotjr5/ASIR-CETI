### Limpia la consola de Linux, quitando de la pantalla todas las órdenes previas. 

Para poder limpiar la pantalla del terminal, usaremos la orden:

```bash
clear
```

![image](https://github.com/user-attachments/assets/09dd2915-f1a1-473a-ba49-ddc370440d32)

↓

![image](https://github.com/user-attachments/assets/b6a2ab7d-34b3-447d-9826-7312e4244d90)

---

### Utilizando una orden, muestra la ruta del directorio de trabajo actual. 

Para poder ver la ruta del directorio actual, usaremos el comando:

```bash
pwd
```

![image](https://github.com/user-attachments/assets/3975438f-6cfe-4232-b199-b57d7cf399a1)

---

### Crea, con una sola orden y utilizando rutas absolutas, la siguiente estructura de directorios, dentro de tu directorio personal.

Usaremos la orden:

```bash
mkdir /home/usuario/Practica11/ /home/usuario/Practica11/"Medios de Transporte" /home/usuario/Practica11/Destinos /home/usuario/Practica11/Destinos/Europa /home/usuario/Practica11/Destinos/Europa/España /home/usuario/Practica11/Destinos/Europa/Francia /home/usuario/Practica11/Destinos/Asia /home/usuario/Practica11/Recibos 
```

![image](https://github.com/user-attachments/assets/1c82a3e7-4023-48e0-9ff6-07b13b0f975c)

Y con la orden **tree** veremos el resultado.

![image](https://github.com/user-attachments/assets/29575f9c-b6df-436d-bc11-85289de95ec6)

---

### Muévete al directorio Francia usando una ruta absoluta

Usaremos la orden:

```bash
cd /home/usuario/Practica11/Destinos/Europa/Francia/ 
```

![image](https://github.com/user-attachments/assets/76f22357-4c12-477f-9b20-505d43e3fc21)

---

### Crea, dentro del directorio Medios de transporte, los siguientes archivos, usando rutas relativas usando al menos, cuatro métodos diferentes para crearlos

Crearemos los archivos **Barco, tren y Avión** con la orden:

```bash
cat > ../../../Medios\ de\ Transporte/Barco.txt 
cat > ../../../Medios\ de\ Transporte/tren.txt 
cat > ../../../Medios\ de\ Transporte/Avión.txt
```

![image](https://github.com/user-attachments/assets/4e019a2f-54e2-4411-a8fc-7d5f1dc45535)

El archivo **orbea** con la orden:

```bash
touch ../../../Medios\ de \Transporte/Orbea.txt
```

![image](https://github.com/user-attachments/assets/caf5390f-515d-49de-98d0-c77fe3169b6e)

El archivo TreN con la orden:

```bash
cat << EOF > ../../../Medios\ de\ Transporte/TreN.txt 
```

![image](https://github.com/user-attachments/assets/8f192def-d7ca-4082-bd02-13412fc31d59)

El archivo Boeing747 con la orden: 

```bash
nano ../../../Medios\ de\ Transporte/Boeing747.txt
```

![image](https://github.com/user-attachments/assets/38bcda18-cb78-4113-a04f-7279f8ddf88c)

↓

![image](https://github.com/user-attachments/assets/91c99276-7f80-4b64-ae98-82d93caf22ab)

---

### Crea, dentro del directorio España, un archivo que se llame Zamora, usando rutas relativas.

Usaremos la orden: 

```bash
touch Europa/España/Zamora.txt 
```

![image](https://github.com/user-attachments/assets/0349eb5f-c27d-4dba-b74a-259a8f6048b3)

---

### Lista los archivos del directorio Medios de transporte que cumplan las siguientes condiciones 

**No terminan por un número**

Usaremos la orden:

```bash
ls ../Medios \de \Transporte/*[!0,1,2,3,4,5,6,7,8,9].txt 
```

![image](https://github.com/user-attachments/assets/ddcad4c8-b07a-41c8-bf77-9b3ed09aa50a)

**Empiezan por t o T**

Usaremos la orden:

```bash
ls ../Medios \de \Transporte/[T,t]* 
```

![image](https://github.com/user-attachments/assets/b314117b-4a83-47e3-b059-ce6826c93f01)

**No empiezan por vocal**

Usaremos la orden: 

```bash
ls ../Medios\ de\ Transporte[!A,E,I,O,U,a,e,i,o,u]*.txt
```

![image](https://github.com/user-attachments/assets/45bd9f19-aae8-4794-9f95-59ccde0cf86b)

**Tienen al menos dos palabras (contienen un espacio)**

Usaremos la orden:

```bash
ls ../Medios\ de\Transporte/ *\ *.txt 
```

![image](https://github.com/user-attachments/assets/15d17b0e-0f84-46ad-b8b5-24b2dff5ed3a)

**Tienen 5 caracteres**

Usaremos la orden:

```bash
ls ../Medios\ de\ Transporte/?????.txt
```

![image](https://github.com/user-attachments/assets/635171e0-2a31-4ae3-b9d8-ef75fa2b40d3)

**Tienen 5 caracteres y terminan en n**

Usaremos la orden:

```bash
ls ../Medios\ de\Transporte/????n.txt 
```

![image](https://github.com/user-attachments/assets/084b2e7e-e900-4180-9f77-0386d9c9446a)

---

### Borra, usando rutas relativas 

**Los archivos dentro de Medios de transporte que contengan una r**

Usaremos la orden:

```bash
rm ../Medios\ de\ Transporte/*r* 
```

![image](https://github.com/user-attachments/assets/78665219-85f0-47f5-8f35-ffbfa02d672d)

**El directorio Francia**

Usaremos la orden:

```bash
rmdir ../Destinos/Europa/Francia/ 
```

![image](https://github.com/user-attachments/assets/520feb88-0a7b-428d-9b1e-de90ec74e60e)

**El directorio España**

Usaremos la orden:

```bash
rm -r ../Destinos/Europa/España/ 
```

![image](https://github.com/user-attachments/assets/a60af398-2ad0-4c46-888e-7446777b44ec)

### Copia:

**El directorio Medios de transporte con todo su contenido dentro del directorio Asia. En destino, el directorio cambiará de nombre y se llamará Recursos. Todo ha de hacerse en una sola orden.**

Usaremos la orden: 

```bash
cp -r ../Medios\ de\ Transporte ../Destinos/Asia/Recursos
```

![image](https://github.com/user-attachments/assets/4a7360a7-4467-4ffa-8d2d-c9e6eb6e9561)

**El archivo Boeing747 al directorio Recibos, sin cambiar el nombre**

Usaremos la orden:

```bash
cp -r ../Medios\ de\Transporte/Boeing747.txt ./  
```

![image](https://github.com/user-attachments/assets/6b8328f6-0df7-4e1c-8dac-ada9c27bfe38)

---

### Cambia el nombre los dos archivos del directorio Recursos

Usaremos las órdenes:

```bash
mv Boeing747.txt tecnologia 
mv Avion.txt metalurgia 
```

![image](https://github.com/user-attachments/assets/d88375de-474c-4385-b482-881e388a2245)

---

### Crea 

**Dos enlaces duros al archivo metalurgia, ambos dentro del directorio Recibos**

Usaremos las ordenes:

```bash
ln ../Destinos/Asia/Recursos/metalurgia recibometalurgia 
ln ../Destinos/Asia/Recursos/metalurgia recibometalurgia2
```

![image](https://github.com/user-attachments/assets/d84fd3de-4440-4d05-a3ee-2772703f7d19)

**Un enlace simbólico al archivo Avión en tu escritorio**

Usaremos la orden:

```bash
n -s ../Practica11/Medios\ de\ Transporte/Avion.txt ../../Escritorio/avionSymbolic
```

![image](https://github.com/user-attachments/assets/23b142f6-206f-4c41-873e-68ad1c43bdfe)

**Comprueba los números de inodo de los archivos y explica que ocurre**


Para poder ver los nº de inodo de un archivo, usaremos la orden **ls -li** 

Para **los enlaces simbólicos**, el **nº de inodo** es **distinto**, debido a que el enlace es un archivo distinto al archivo al que hace referencia, en cambio, el **nº de inodo** de los **enlaces duros**, es el **mismo**, debido a que el enlace duro de un archivo, es el mismo archivo. 

Como podemos ver, el **nº de inodo de metalurgia** y **de sus enlaces duros, es el mismo**.

![image](https://github.com/user-attachments/assets/753b04ab-96c2-4d33-8580-bca47912ee83)

Caso contrario al que pasa con el archivo avión y su enlace simbólico

![image](https://github.com/user-attachments/assets/454ae532-b001-4cfd-9c69-dd5a8272bc3a)

---

### Busca

**Los archivos del directorio /etc y sus subdirectorios cuyo nombre empieza por pa además, los posibles errores no han de aparecer por pantalla**

Usaremos la orden:

```bash
find ../../../etc/pa* 2> /dev/null
```

![image](https://github.com/user-attachments/assets/ae35dff3-de8c-49e0-bf10-f3d54e303d36)

**Todos los archivos de todo el sistema de archivos que pertenecen a tu usuario actual**

Usaremos la orden:

```bash
find / -user usuario 
```

![image](https://github.com/user-attachments/assets/5073957e-01ef-488b-ac0d-7a69ab1fb31d)

---

### Bájate el archivo quijote.txt al directorio Practica1 y:

**Cuenta las palabras que tiene**

Usaremos la orden:

```bash
wc -c ../Practica1/quijote.txt
```

![image](https://github.com/user-attachments/assets/7813c3bc-716d-4df9-b19d-b8705e7af435)

**Cuenta las líneas que tiene**

Usaremos la orden:

```bash
wc -l ../Practica1/quijote.txt 
```

![image](https://github.com/user-attachments/assets/cfe2ad0f-b1a5-4a60-9839-ea56973c96b1)

**Cuenta los caracteres que tiene**

Usaremos la orden:

```bash
wc -m ../Practica1/quijote.txt
```

![image](https://github.com/user-attachments/assets/a4eab1cc-ac6d-45fa-9dc9-2dbcc147dad7)

---

### Muestra las 15 primeras líneas del archivo

Usaremos la orden:

```bash
head -15 ../Practica1/quijote.txt 
```

![image](https://github.com/user-attachments/assets/bbdbb538-1951-4ad2-a943-fc9de31024bd)

**Muestra las 3 últimas líneas del archivo**

Usaremos la orden:

```bash
tail -3 ../Practica1/quijote.txt
```

![image](https://github.com/user-attachments/assets/2459b2d8-0c54-44ae-baca-1be1efd750ef)

---

### Utilizando grep, sobre el archivo quijote.txt

**Busca en el archivo todas las líneas que tengan la palabra “no”, tanto con mayúscula como con minúscula y obtén sus números de línea**

Usaremos la orden: 

```bash
grep -in “ no ” ../Practica1/quijote.txt 
```

![image](https://github.com/user-attachments/assets/a8b1bf8c-bec2-4ac9-90fc-096c0284331e)

**Muestra solamente las líneas que empiezan por mayúscula, junto con los números de línea**

Usaremos la orden:

```bash
grep -n ^[[:upper:]] ../Practica1/quijote.txt
```

![image](https://github.com/user-attachments/assets/331f0771-2076-428a-ae53-dce7642bf01d)

**Cuenta el número de líneas (no se deben mostrar las líneas, sino cuántas hay) que no terminen ni por a ni por e**

Usaremos la orden: 

```bash
grep -vc [ae]$ ../Practica1/quijote.txt
```

![image](https://github.com/user-attachments/assets/e9512759-93cd-430f-a9e4-ef1c0248afd5)

---

### Utilizando sed sobre quijote.txt: 

**Sustituye con sed los caracteres incorrectos por los correctos para que se visualice bien, además resultado de sed debe sobrescribir el archivo de forma que quede corregido.**

Usaremos el comando:

```bash
sed -i “s/\xbf/¿/g;s/\xf1/ñ/g;s/\xfc/ü/g;s/\xe1/á/g;s/\xe9/é/g;s/\xed/í/g;s/\xf3/ó/g;s/\xfa/ú/g;” quijote.txt 
```

![image](https://github.com/user-attachments/assets/c7256c1d-dce9-4aa9-8507-968f2b0167ae)

**Sustituir, solamente en las líneas pares, las 3 primeras vocales (ya sean mayúsculas o minúsculas, con o sin tilde) por asteriscos**

**Se guardarán las primeras 200 líneas obtenidas en un archivo llamado quijote2.txt Se evitará que sed imprima ningún resultado en la salida estándar Ha de hacerse en una sola ejecución de sed**

Usaremos el comando:

```bash
sed -n -e 2~2”s/[AEIOUaeiouÁÉÍÓÚáéíóú]/*/” -e 2~2”s/[AEIOUaeiouÁÉÍÓÚáéíóú]/*/”  -e 2~2”s/[AEIOUaeiouÁÉÍÓÚáéíóú]/*/”  -e “1,200wquijote2.txt” quijote.txt > /dev/null
```

![image](https://github.com/user-attachments/assets/448d21aa-afa1-427e-8e50-ef0e539870a7)


### Crea un archivo tar llamado pregunta16.tar que contenga todo el directorio Practica11

Usaremos la orden: 

```bash
tar cvf pregunta16.tar ./
```


![image](https://github.com/user-attachments/assets/380fbdc8-b1c5-40bd-ad0a-d2e6ef3115d6)

### Crea un archivo comprimido llamado pregunta17.tar.gz, utilizando solamente la herramienta tar, que contenga solamente los archivos metalurgia (Recursos) y Boeing747 (Medios de Transporte). 

Usaremos la orden: 

```bash
tar czvf pregunta17.tar.gz Medios\ de\ Transporte/Boeing747.txt Destinos/Asia/Recursos/metalurgia
```

![image](https://github.com/user-attachments/assets/297603fe-d3de-4df8-b0ab-9ea09817d653)

---

### Comprime el archivo que ya creaste, pregunta16.tar, que pasará a llamarse pregunta16.tar.gz. Deberás usar otra herramienta que no sea tar.

Usaremos la orden:

```bash
gzip -r pregunta16.tar 
```

![image](https://github.com/user-attachments/assets/a39abb62-9621-4e7b-8396-6cb25f9413f9)

---

### Pregunta 19 

Primero, crearemos el directorio y luego copiaremos el archivo en ese directorio.


![image](https://github.com/user-attachments/assets/55052c95-c1a1-4695-9d14-0994fd518829)

Luego, lo extraeremos (la extracción de estos archivos no se hace en el directorio donde se encuentra el archivo comprimido, si no en el directorio donde nos encontramos)

![image](https://github.com/user-attachments/assets/c4884c2e-911a-4574-a937-d0fe31c65776)

---

### Obtén un listado largo (ls –l) de los archivos del directorio /bin. En vez de aparecer por pantalla, el resultado debe almacenarse en un archivo llamado salidaOrdenes.

Usaremos la orden: 

```bash
ls -l /bin > salidaOrdenes
```

![image](https://github.com/user-attachments/assets/d06bd901-9c27-4a33-98af-d58bed2a798b)

### Obtén un listado largo (ls –l) de los archivos del directorio /bin. En vez de aparecer por pantalla, el resultado debe almacenarse en un archivo llamado salidaOrdenes. 

Usaremos la orden: 

```bash
ps >> salidaOrdenes 
```

![image](https://github.com/user-attachments/assets/c8212240-dabb-4573-a9cd-7af611de8cdb)

---

### Utilizando tuberías, realiza un listado largo del directorio /etc que se muestre por pantalla pero paginado.

Usaremos el comando:

```bash
ls -l /etc | more
```

![image](https://github.com/user-attachments/assets/0fe002fa-68ef-4018-a5a2-965702c5bd11)



































