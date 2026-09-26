##  Realización del cifrado híbrido

En esta práctica, vamos a realizar un cifrado híbrido. 
Este cifrado consiste en que 2 personas comparten sus claves públicas entre ellas. 
Después, con la clave privada de cada uno, se cifra y comparte una clave simétrica. 
Esta clave simétrica permite descifrar los archivos que se pasen entre ellos.

Vamos a hacerlo de 2 formas: 
- Interfaz gráfica de Kleopatra gpg4win 
- Comandos de gpg

### Significado de los colores:

Verde - Captura realizada por MCH
Rojo - Captura realizada por JM
Azul - Captura realizada por ambos

---

## Kleopatra 

### Instalación 

Primero lo haremos mediante interfaz gráfica. 
Vamos a la página de [gpg4win](https://gpg4win.org/download.html) y descargamos el programa.

<img width="502" height="260" alt="image" src="https://github.com/user-attachments/assets/6af6efd1-c2a0-48f0-9395-664eec5ca485" />

Una vez descargado, lo instalamos 

<img width="497" height="391" alt="image" src="https://github.com/user-attachments/assets/1290624b-fb96-4d5d-b6e4-d78df1ec8e86" />

### Crear nuevo par de claves

Una vez instalado, podemos empezar a realizar la práctica.

Lo primero que tenemos que hacer, es crear un nuevo par de claves, las cuales tendrán las siguientes características:

- Las claves asimétricas emplearán algoritmos DSA y ElGamal.
- Las claves asimétricas caducarán a los 3 meses.
- El cifrado de la clave de sesión (simétrica) se realizará incluyendo firma de autentificación

<img width="524" height="410" alt="image" src="https://github.com/user-attachments/assets/983404cb-d8ed-4174-ad50-d2cecd3691e1" />

Una vez creadas nuestras claves, se nos proporcionará la huella digital de la misma. 

<img width="294" height="255" alt="image" src="https://github.com/user-attachments/assets/bd2b5b2d-3392-4955-a727-00abaca2fe4b" />

↓

<img width="523" height="128" alt="image" src="https://github.com/user-attachments/assets/320f8557-7f91-49ca-a679-14ee4d7ac94c" />

↓

<img width="249" height="220" alt="image" src="https://github.com/user-attachments/assets/481c0f4f-a399-4820-87eb-297f790c5dc5" />

↓

<img width="270" height="242" alt="image" src="https://github.com/user-attachments/assets/f2ffab5e-911f-4c16-88ac-5cbaaf96981c" />

---

### Exportar claves

Ya que nuestras claves están creadas, deberemos compartirlas con nuestro compañero a través de correo.
Con la opción de **Exportar** se nos genera un archivo con nuestra clave pública.

<img width="84" height="67" alt="image" src="https://github.com/user-attachments/assets/5480cc39-4b24-4c51-9267-92b3c9667e64" />

↓

<img width="229" height="39" alt="image" src="https://github.com/user-attachments/assets/5db8ca52-cce3-45c0-b229-8bb4d955e4c6" />

Y la compartimos por correo.

<img width="341" height="230" alt="image" src="https://github.com/user-attachments/assets/5360778e-2389-4454-a966-695f0cb314a2" />

↓

<img width="346" height="227" alt="image" src="https://github.com/user-attachments/assets/51f65866-b9b6-4de9-a23b-6bc76052ef1c" />

El siguiente paso es realizar la importación de las claves públicas.

<img width="61" height="48" alt="image" src="https://github.com/user-attachments/assets/383ad122-8a0b-4bc6-845f-17b255675472" />

↓

<img width="629" height="185" alt="image" src="https://github.com/user-attachments/assets/92f42752-86af-4d85-ad1a-b166732ce779" />

↓

<img width="655" height="81" alt="image" src="https://github.com/user-attachments/assets/5b52b2f6-0f1b-4604-a7fe-2d89333f7ad0" />


---

### Crear y cifrar clave simétrica

Bien, ya tenemos nuestras claves públicas creadas, así que vamos a crear nuestra clave simétrica. 
Esta será la clave con la que cifraremos/descifraremos los archivos que nos mandemos.

<img width="246" height="83" alt="image" src="https://github.com/user-attachments/assets/ca3fc8d7-64a4-4891-af44-594d43c05145" />

↓

<img width="90" height="52" alt="image" src="https://github.com/user-attachments/assets/50e89711-56cd-4bb8-a382-f65119bdf835" />

↓

<img width="482" height="325" alt="image" src="https://github.com/user-attachments/assets/123c0529-b93e-4416-9052-1709a1ccd399" />


↓

<img width="546" height="191" alt="image" src="https://github.com/user-attachments/assets/241e742f-16df-4b63-a916-5a1b60bbf21c" />

↓

<img width="102" height="92" alt="image" src="https://github.com/user-attachments/assets/19f63f04-2f17-4235-8018-e8dd84a22102" />


Una vez cifrada la clave simétrica, tendremos que compartirla con el compañero, a través de un medio seguro. 
En este caso, vamos a usar dispositivos USB para compartir cada clave. 

---

### Descifrar clave simétrica

Como esta clave se ha cifrado con nuestras claves privadas, se puede descifrar con nuestras claves públicas.

<img width="111" height="53" alt="image" src="https://github.com/user-attachments/assets/803e7aa9-5a66-432e-a678-5d49e2cae465" />

↓

<img width="547" height="301" alt="image" src="https://github.com/user-attachments/assets/19eb4c09-e220-4715-9f7f-a723bbec247c" />

↓

<img width="128" height="88" alt="image" src="https://github.com/user-attachments/assets/a77f1c6c-e1c1-419c-8a04-8e9943d1bfb2" />

Bien, ya tenemos la clave simétrica de cada uno (para evitar confusiones usamos la misma, con comandos ya la cambiamos). 
Ya podemos realizar el cifrado de la imagen. 

---

### Cifrar imagen

Seguiremos el mismo método que antes para cifrar la imagen, pero esta vez no la cifraremos con la clave privada, si no que lo haremos con la clave simétrica (**razer33**).

<img width="80" height="47" alt="image" src="https://github.com/user-attachments/assets/7592af5d-c13f-42aa-93dd-16a972f95765" />

↓

<img width="108" height="30" alt="image" src="https://github.com/user-attachments/assets/97e83f99-365e-42de-9cc9-17904d6aba1e" />

↓

<img width="448" height="288" alt="image" src="https://github.com/user-attachments/assets/e4319b7f-3d00-4f73-bfa4-7b95d66d7e71" />

↓

<img width="421" height="276" alt="image" src="https://github.com/user-attachments/assets/0f256682-9027-4fbd-93c0-d1398fda7e77" />

↓

<img width="379" height="189" alt="image" src="https://github.com/user-attachments/assets/0c94e6ba-cb3b-4103-ba95-3671e09bd25d" />

Y finalizamos el cifrado. 

<img width="672" height="149" alt="image" src="https://github.com/user-attachments/assets/acb4543f-e568-4bcf-8c93-4fa7b33b3188" />

Como hemos podido observar, se ha cifrado la imagen con la clave simétrica. 
Y obtenemos la imagen cifrada. 

<img width="129" height="105" alt="image" src="https://github.com/user-attachments/assets/1d5e0e68-7a0b-49a4-9522-558354111476" />

↓

<img width="123" height="116" alt="image" src="https://github.com/user-attachments/assets/4c8af61b-e21c-49a0-9d22-8e8cea189369" />

---

### Compartir ficheros 

Al igual que hicimos con la clave pública, compartiremos la imagen cifrada mediante correo.

<img width="269" height="177" alt="image" src="https://github.com/user-attachments/assets/1e4411db-3bed-44ff-ad28-bfbd59bab508" />

↓

<img width="273" height="179" alt="image" src="https://github.com/user-attachments/assets/39ac5d1f-87ff-4c9f-948d-a2e870ebae07" />

---

### Descifrar imagen 

Para poder descifrar la imagen, usaremos el mismo procedimiento que con la clave simétrica

<img width="111" height="51" alt="image" src="https://github.com/user-attachments/assets/abda20d2-6be2-4460-b522-05122e54e349" />

Solo que esta vez, no descifraremos con la clave privada, si no que lo haremos con la simétrica. 

<img width="379" height="159" alt="image" src="https://github.com/user-attachments/assets/937594d8-b63e-4abc-9e90-fd2b3dce0b03" />

↓

<img width="633" height="270" alt="image" src="https://github.com/user-attachments/assets/41fe6542-6bf6-4367-8a9a-6a162155b998" />


Y obtenemos la imagen descifrada.

---

### Resumen 

Al final, hemos generado los siguientes archivos:

<img width="645" height="819" alt="image" src="https://github.com/user-attachments/assets/ff3f51b9-1cc0-4506-97a4-f32504ab4ce1" />

---

## Comandos GPG 

### Crear par de claves

Una vez realizado el cifrado híbrido con **Kleopatra**, ahora nos toca hacerlo con los comandos de **gpg**.

Lo primero es crear el par de claves, lo cual se hace con el comando:
```bash
gpg –full generate-key
```
que nos ira mostrando diferentes opciones para crear la clave a nuestro gusto

<img width="580" height="426" alt="image" src="https://github.com/user-attachments/assets/e781727e-f66a-4b9c-8de8-ecac61fb8f65" />


Una vez creadas, podemos verlas con los comandos:

```bash
gpg –list-secret keys
```
para ver las claves privadas y 

```bash
gpg –list-keys 
```

<img width="580" height="427" alt="image" src="https://github.com/user-attachments/assets/8b8fa4c5-17ef-4d01-b447-689146268f7c" />

### Exportar clave pública 

Ahora, procederemos a la exportación de nuestra clave pública, al igual que hicimos en el caso anterior.

Para poder hacerlo, usaremos el comando:

```bash
gpg –export -a “Nombre de usuario” > clave_pub-key
```

<img width="631" height="38" alt="image" src="https://github.com/user-attachments/assets/b90bc1a0-db26-4aeb-a44a-95cc613c609a" />

↓

<img width="628" height="38" alt="image" src="https://github.com/user-attachments/assets/8800e78d-7681-4201-900f 95ed1aa02a5b" />

Se nos generará un archivo con nuestra clave pública 

<img width="624" height="41" alt="image" src="https://github.com/user-attachments/assets/0a51da44-ad7b-4639-9a39-94190726c0bb" />

↓

<img width="623" height="36" alt="image" src="https://github.com/user-attachments/assets/d645dda2-cc32-4dc3-b5b3-35b39298c1b2" />

---

### Importar clave pública

Ahora, nos compartiremos las claves a través de correo electrónico. 

<img width="443" height="205" alt="image" src="https://github.com/user-attachments/assets/2c678be7-0dfe-4b49-9d34-2a115dd8087b" />

↓

<img width="421" height="208" alt="image" src="https://github.com/user-attachments/assets/e43944d2-9fc1-4d38-b78b-6843e36feddc" />

Para poder importarlas, usaremos el siguiente comando. 

<img width="629" height="102" alt="image" src="https://github.com/user-attachments/assets/652d563d-425b-4a4b-a333-95f68dd88582" />

↓

<img width="667" height="108" alt="image" src="https://github.com/user-attachments/assets/2eace912-2b96-42d6-a168-68b9ccc721f0" />

Ya están importadas.

<img width="629" height="50" alt="image" src="https://github.com/user-attachments/assets/3c09d2fc-70d6-4622-aebc-9727610de682" />

---

### Crear y cifrar claves simétricas

Ahora, vamos a crear nuestras claves simétricas. 
Otra vez generaremos nuestra clave con un txt. 

<img width="181" height="89" alt="image" src="https://github.com/user-attachments/assets/a80d9654-3ddf-430e-9277-7e116eec4023" />

La cual, cifraremos con la clave que acabamos de importar, usando el comando: 

```bash
gpg -e -r “Nombre” Clave.txt 
```
<img width="630" height="187" alt="image" src="https://github.com/user-attachments/assets/c75bebe2-d60a-4185-b1f7-1a7dee5ee5dc" />

↓

<img width="630" height="220" alt="image" src="https://github.com/user-attachments/assets/e0b34567-46e4-4189-bc9d-4d9b14b9c4d1" />

Una vez cifrada, la compartimos a través de un USB

<img width="631" height="33" alt="image" src="https://github.com/user-attachments/assets/3bcc7c9a-1d75-42cc-ab52-a3b697f43407" />

↓

<img width="628" height="32" alt="image" src="https://github.com/user-attachments/assets/1636db1f-5000-46c4-9b27-85cbb75618e8" />

---

### Descifrar clave simétrica

Para poder descifrar la clave simétrica, usaremos el comando

```bash
gpg –output clave_j.txt -d passJ.txt.gpg
```

<img width="629" height="68" alt="image" src="https://github.com/user-attachments/assets/008665e2-bd0b-42d1-a0db-d2a2270f87b1" />

Y la obtenemos

<img width="118" height="30" alt="image" src="https://github.com/user-attachments/assets/037476d6-b435-4b2c-80df-c52d12e92c18" />

---

### Cifrar imagen

Ya tenemos la clave simétrica de cada uno, así que pasamos al punto final. 
Cifrar la imagen. 
Usaremos el siguiente comando, el cual nos permite poner una contraseña (nuestra clave simétrica) para cifrar el contenido.

<img width="391" height="220" alt="image" src="https://github.com/user-attachments/assets/4198582b-e8cf-438b-86a4-e0bc54235c11" />

↓

<img width="138" height="36" alt="image" src="https://github.com/user-attachments/assets/104d2205-d348-4ffc-b1b8-be3080e4cfaa" />

↓

<img width="630" height="42" alt="image" src="https://github.com/user-attachments/assets/74bebde6-6310-4634-b7b2-18a719abcc1b" />

Cuando hayamos cifrado nuestras imágenes, las compartiremos.

---

### Cifra imagen

Ahora, debemos de descifrar las imágenes. Usaremos el siguiente comando:

<img width="608" height="71" alt="image" src="https://github.com/user-attachments/assets/442d8988-5036-4172-8b61-5965ac67724a" />

↓

<img width="631" height="102" alt="image" src="https://github.com/user-attachments/assets/8e1f19f3-2e73-4b26-9a4f-3c8d4f75b144" />

Usamos la clave simétrica para descifrarla.

<img width="356" height="150" alt="image" src="https://github.com/user-attachments/assets/8fe70e7a-2933-4f13-8602-fc0f6714b656" />

Y obtenemos la imagen descifrada. 

<img width="619" height="35" alt="image" src="https://github.com/user-attachments/assets/5fdbdefe-50a6-4dc9-9315-2d12e9a92308" />
