## Requisitos

En esta práctica, vamos a realizar copias de seguridad en Windows Server 2016. 
Para ello, debemos tener 3 discos en la máquina. 
El principal donde está el SO 
Otros 2 que será de donde copiemos los archivos y donde guardaremos la copia.


<img width="642" height="56" alt="image" src="https://github.com/user-attachments/assets/a6c2e7f9-301a-4cd3-b04f-ec700aa6b913" />

---

## Instalación de característica de copias de seguridad

Para poder hacer estas copias, tambien necesitamos la característica de **Copias de seguridad de Windows Server**. 
Vamos a **Administrador del servidor>Administrar>Agregar roles y características**

<img width="291" height="77" alt="image" src="https://github.com/user-attachments/assets/05d95399-fce1-4104-870b-80eb2f5e0726" />

Se iniciara un instalador, donde lo primero será especificar el tipo de instalación, la cual será una **Instalación basada en características o roles**.

<img width="639" height="197" alt="image" src="https://github.com/user-attachments/assets/7ec54e76-225f-4689-bab2-4307aa350798" />

↓

Seguiremos, especificando el servidor donde instalaremos esta característica.

<img width="635" height="224" alt="image" src="https://github.com/user-attachments/assets/b49412d7-c473-41b2-96f7-49538ab738ef" />

Pasamos directamente a seleccionar la característica a instalar, la cual es **Copias de seguridad en Windows Server** e iniciamos la instalación.

<img width="620" height="240" alt="image" src="https://github.com/user-attachments/assets/ffa6b59c-06de-48b3-a635-e6545c287d8d" />

---

## Realizar copia de seguridad

Ya teniendo la característica instalada, vamos a crear la siguiente copia de seguridad: 

- En D: (o en Documentos) encontrarás una carpeta llamada “CharlesPerrault” 3  archivos .txt que corresponden a cuentos de este autor.
- Programa un plan de copia de seguridad del directorio “CharlesPerrault” cada  media hora con el nombre BackupTotal en el disco E:
- Debes excluir la papelera de reciclaje
- La primera copia de seguridad que se realice debe ser completa,  seguidamente haz la configuración necesaria para que las siguientes copias sean incrementales). En el video tienes la explicación para esta configuración.
- Cuando creas la copia de seguridad en la unidad E, esta se formatea y se  oculta. Des-ocúltala proporcionándola una letra a la unidad (E:) . Puedes  hacerlo desde el administrador de discos 

Para acceder a la característica instalada, vamos a **Herramientas>Copias de seguridad de Windows Server** 

<img width="362" height="179" alt="image" src="https://github.com/user-attachments/assets/b87c2f0f-d6b3-4eb8-ba78-45c89d386f5d" />

Lo que nos abrirá la siguiente ventana:

<img width="583" height="210" alt="image" src="https://github.com/user-attachments/assets/d8658e3e-0f93-426a-a261-8519a04d2df4" />

Si vamos a la carpeta Documentos veremos que tenemos los archivos que usaremos más adelante para poder hacer las copias.
Ahora necesitamos el directorio **Charles Perraut**.

<img width="668" height="476" alt="image" src="https://github.com/user-attachments/assets/4c22fee8-692e-4e53-8aa1-ceab16eedb8a" />

Volvemos a las Copias de seguridad y seleccionamos la opción **Programar copia de seguridad**.

<img width="335" height="180" alt="image" src="https://github.com/user-attachments/assets/5cd78464-5f96-4073-a962-84d3c5421fee" />

Lo que nos abrirá un asistente para hacer la copia. 

<img width="665" height="255" alt="image" src="https://github.com/user-attachments/assets/c81940be-7b5a-4f12-9b66-32f43dc29664" />

Lo primero, es especificar la configuración de la copia de seguridad, si va a ser del servidor completo o solo de los archivos que queramos
Seleccionamos la segunda opción. 

<img width="647" height="252" alt="image" src="https://github.com/user-attachments/assets/4b44534a-414c-434e-896a-f46904dcdbc2" />

Pasamos a la siguiente pantalla, donde elegiremos los archivos a copiar.
Se nos abrirá un menú, donde elegiremos el directorio Charles Perraut. 

<img width="398" height="232" alt="image" src="https://github.com/user-attachments/assets/a943929b-666f-4c39-9f1f-dc9e7b001438" />

En **Configuración avanzada** podemos **agregar exclusiones** y especificar el **tipo de copia de seguridad de VSS**.

<img width="631" height="445" alt="image" src="https://github.com/user-attachments/assets/0a54a9eb-6534-47b2-bda6-260d2c231147" />

Como pone en el enunciado, excluiremos la papelera de reciclaje.

<img width="151" height="41" alt="image" src="https://github.com/user-attachments/assets/1385835a-f996-41b8-957c-f62047da97a5" />

Y le diremos que queremos crear una copia de seguridad completa de VSS.

<img width="584" height="141" alt="image" src="https://github.com/user-attachments/assets/ec0c34be-6e46-4143-be39-c297046f57b9" />

Toca especificar la frecuencia con la que haremos la copia. 
Como pone en el enunciado, será cada media hora.

<img width="629" height="388" alt="image" src="https://github.com/user-attachments/assets/3f147181-2bd3-44b4-888b-c48cdcbb633a" />

↓

<img width="235" height="251" alt="image" src="https://github.com/user-attachments/assets/f2e4b55a-c9ac-41d9-978a-91b09e1a56c8" />

Proseguimos, ahora vamos a especificar donde se guardarán las copias. 
Como dice el enunciado, en el disco E:\

<img width="519" height="285" alt="image" src="https://github.com/user-attachments/assets/dc8b1ad1-cff8-464d-8e3c-94395ea8a745" />

Se abre un menú y elegimos el disco E:\ 

<img width="548" height="285" alt="image" src="https://github.com/user-attachments/assets/c3e84b37-e122-4538-9941-a7075d48b815" />

↓

<img width="510" height="271" alt="image" src="https://github.com/user-attachments/assets/7eeaae1d-8baf-4e8f-b2e4-e22b60581ac7" />

Y ya pasamos al paso final, el cual es iniciar la copia. 
Antes de hacer nada, nos saldrá un mensaje diciendo que se van a formatear los discos que hemos seleccionado (E:\) 

<img width="560" height="304" alt="image" src="https://github.com/user-attachments/assets/46c5f751-cdb6-4f11-bc73-c49b534300cd" />

Y nos saca un pequeño resumen sobre la copia. 

<img width="633" height="279" alt="image" src="https://github.com/user-attachments/assets/2fd21e8c-8b18-4a13-a3a6-eabbdb595f3c" />

Si volvemos a la pantalla inicial (y dejamos que se haga uns copia de seguridad) podremos ver que estas se están haciendo de forma correcta, de hecho, nos dice cuando será la próxima copia de seguridad.

<img width="568" height="170" alt="image" src="https://github.com/user-attachments/assets/5efb385d-97f5-448c-8801-2c87692338ab" />

Una cosa importante a realizar, es que cuando se crea la copia de seguridad, la unidad E: se formatea y desaparece su letra de unidad, por lo que no podremos verla.

<img width="614" height="115" alt="image" src="https://github.com/user-attachments/assets/8199b306-d503-4e74-aeca-4f713dd7167f" />

Para verla, tenemos que asignarle de nuevo su letra de unidad. 

<img width="439" height="128" alt="image" src="https://github.com/user-attachments/assets/08f49c41-49a9-4eda-a2db-c1b6413278f8" />

Y así, podremos ver la copia de seguridad. 

<img width="497" height="104" alt="image" src="https://github.com/user-attachments/assets/a1a6371d-9d5e-4b78-921f-f4340fede24b" />

↓

<img width="563" height="163" alt="image" src="https://github.com/user-attachments/assets/28d0a184-e16b-42f3-b5ba-e1479c5d3f10" />

↓

<img width="666" height="384" alt="image" src="https://github.com/user-attachments/assets/073a6578-2746-4c7d-a5cd-4ee09001cd40" />

---

## Comprueba que se realiza la copia 

Esperaremos a que se haga la próxima copia de seguridad (o bien podemos cambiar el reloj del SO para que se haga en 1 minuto.) 

<img width="471" height="248" alt="image" src="https://github.com/user-attachments/assets/e5686ac8-220d-40d0-958c-02070858628e" />

Una vez se realiza, podemos ver los detalles de la copia, donde nos indica cosas como: 

- Fecha de inicio/final
- Datos transferidos
- Tipo de copia

<img width="542" height="383" alt="image" src="https://github.com/user-attachments/assets/283d2512-8395-49d6-809e-a56094033fb9" />

Como hemos especificado a la hora de crear la copia, la primera copia será completa mientras que el resto será incremental. 
Como no hemos cambiado nada, no se ha copiado nada. 

---

## Añadir y modificar archivos 

Como estamos haciendo copias incrementales, a no ser de que hagamos un cambio, no se copiará nada. 
Así que vamos a crear un directorio dentro de **Charles Perraut** llamado otros que tendrá otros 2 archivos.
Además de que vamos a modificar el archivo elGatoConBotas y añadirle unas líneas. 

<img width="472" height="137" alt="image" src="https://github.com/user-attachments/assets/7e38e8c6-7ce1-416c-b4a5-4d0731bba6b8" />

↓

<img width="399" height="215" alt="image" src="https://github.com/user-attachments/assets/b45f3e7b-1b97-4502-9e99-e2e0bd6bf4da" />

---

## Realiza una nueva copia y visualizar cambios 

A la siguiente copia de seguridad, veremos que se han copiado los archivos que hemos modificado. 
Si en los detalles de la copia, vamos a **Ver una lista de todos los archivos de la copia de seguridad** veremos un .txt con la ruta de los archivos que se han copiado. 

<img width="487" height="540" alt="image" src="https://github.com/user-attachments/assets/2561f03f-6659-48ba-8ad4-4ada0a7070d1" />

↓

<img width="622" height="82" alt="image" src="https://github.com/user-attachments/assets/09727082-9031-4e32-83dc-472467bd6e62" />

---

## Borrado de archivos

Ahora procedemos a borrar los archivos **elGatoConBotas** y **caperucitaRoja** del directorio del cual estamos haciendo la copia de seguridad. 

<img width="630" height="155" alt="image" src="https://github.com/user-attachments/assets/72868db0-9623-4eb7-8c58-6aae34958cb1" />

---

## Recuperar archivos

### Recuperar archivos sueltos

Para recuperar archivos que hemos perdido (o borrado a propósito) vamos a **Copias de seguridad de Windows>Recuperar**.

<img width="143" height="41" alt="image" src="https://github.com/user-attachments/assets/436ab72f-cda3-4c43-9707-6e87ed62a9b8" />

↓

<img width="536" height="251" alt="image" src="https://github.com/user-attachments/assets/13246b5f-9de9-4576-863f-36e3c6f791e8" />

Lo que nos inicia un asistente para realizar la recuperación de los archivos. 
La primera opción que nos sale, es decir donde se encuentra la copia a restaurar. 
Le diremos que se encuentra en una unidad local.

<img width="507" height="267" alt="image" src="https://github.com/user-attachments/assets/e03411e9-84b0-4f8d-a487-7a77fe8bf85d" />

Como solo tenemos una copia de seguridad, por defecto nos saca la copia que tenemos en el disco **E:** 

<img width="530" height="227" alt="image" src="https://github.com/user-attachments/assets/d924b942-8266-4a2b-a4dd-928a157d68df" />

Seleccionamos los datos del servidor a recuperar (y pues solo tenemos uno, así que no es una elección difícil).

<img width="420" height="283" alt="image" src="https://github.com/user-attachments/assets/d12f7786-4c99-4985-8a76-72ff932e11fc" />

El siguiente paso es especificar la copia que deseamos restaurar.

<img width="502" height="268" alt="image" src="https://github.com/user-attachments/assets/ac26da0d-09b1-453e-8fe9-aa7db9996d0a" />

Proseguimos, especificando que vamos a **recuperar archivos**

<img width="642" height="347" alt="image" src="https://github.com/user-attachments/assets/5519930e-3b44-4291-8962-645f427fc848" />

Seleccionamos los archivos que hemos borrado para poder recuperarlos. 

<img width="627" height="288" alt="image" src="https://github.com/user-attachments/assets/62274512-5d1d-4f62-99c6-dd2e867f2aef" />

Pasamos al último punto, que es elegir el lugar de la restauración. 
Además, en esta pantalla, podemos activar la opción de **Restaurar los permisos de lista de control de acceso del archivo que se recupera**. 
Esto quiere decir, que al restaurar estos archivos, también se restaurarán sus ACL

<img width="527" height="328" alt="image" src="https://github.com/user-attachments/assets/4d855cc3-3edc-4cab-b205-ce53e0c35fff" />

Confirmamos la recuperación.

<img width="624" height="150" alt="image" src="https://github.com/user-attachments/assets/ddb9e052-3961-4097-8ff3-324f0d62dae8" />

Y finaliza la recuperación.

<img width="563" height="260" alt="image" src="https://github.com/user-attachments/assets/844148cb-ae72-4443-8b4e-a05ebb37a3ca" />

Si vamos al directorio **Charles Perraut** veremos que se han restaurado los archivos correctamente.

<img width="633" height="173" alt="image" src="https://github.com/user-attachments/assets/c009694a-d2e0-442b-a16e-9b1d46cc3951" />

---

## Borrado de directorio 

El siguiente paso, va a ser restaurar el directorio **Charles Perraut**. 

<img width="588" height="425" alt="image" src="https://github.com/user-attachments/assets/be5f659f-c8ea-42e4-98b1-d5f950ebab64" />

En esta parte de la práctica, deberíamos de recuperar el volumen que contiene el directorio **Charles Perraut**, pero debido a que este se encuentra en Documentos, ósea en el disco C: no podemos, así que tendremos que volver a usar la opción de **recuperar Archivos, carpetas**. 
Iniciamos el asistente de recuperación una vez más y seguiremos el mismo procedimiento. 

<img width="440" height="205" alt="image" src="https://github.com/user-attachments/assets/bef31fc1-122c-42ab-8cc7-7204206b59d3" />

↓

<img width="437" height="230" alt="image" src="https://github.com/user-attachments/assets/410bd52b-39d4-4f50-b50a-d32b74263571" />

↓

<img width="440" height="189" alt="image" src="https://github.com/user-attachments/assets/ed95508e-4c9f-4239-9e68-55661339e423" />

↓

<img width="431" height="234" alt="image" src="https://github.com/user-attachments/assets/b2b76e39-afc0-4d53-9e57-631ce6882775" />

↓

<img width="371" height="252" alt="image" src="https://github.com/user-attachments/assets/1f7d8923-24eb-4d87-b0d1-dc3c509387fb" />

↓

<img width="432" height="227" alt="image" src="https://github.com/user-attachments/assets/861024bb-b6de-4838-a662-de2571349d69" />

↓

<img width="431" height="205" alt="image" src="https://github.com/user-attachments/assets/d3bde0ce-ab34-43b2-9569-cd700b127523" />

↓

<img width="359" height="219" alt="image" src="https://github.com/user-attachments/assets/c01135a4-5f35-4ed8-8c75-ec6b033f8c40" />

Y recuperamos el directorio. 

<img width="463" height="102" alt="image" src="https://github.com/user-attachments/assets/ca6dbd0b-60bb-4535-9850-e0a8c4ce697f" />

No he explicado esta parte, debido a que sigo los mismos pasos que anteriormente. 

---

## Investiga como crearías una copia de seguridad única del estado del sistema usando la línea de comando 

Para poder realizar tal cosa, deberíamos de usar el comando **wbadmin**. 
Este comando, sirve para realizar copias de seguridad y restauraciones de los sistemas operativos, volúmenes, archivos, carpetas y aplicaciones desde una línea de comandos o un script.

```bash
wbadmin start systemstatebackup -backupTarget:D: 
```

Inicia una copia de seguridad del estado del sistema, en la cual se indica que debe de guardarse en la unidad D:

---

## Investiga como crearías una copia de seguridad programada del estado del sistema diariamente a las 9:00 a.m, sin avisos al usuario guardándola en el volumen E usando la línea de comandos.

Volveremos a usar el comando wbadmin de la siguiente manera: 

```bash
wbadmin enable backup -addtarget:E: -schedule:09:00 -systemState 
```

**enable backup**
- Subcomando de wbadmin que habilita una tarea programada para realizar copias de seguridad

**addtarget:E:**
- Esta opción especifica que la copia de seguridad se debe guardar en la unidad E:

**schedule:09:00**

- Esta opción establece que la tarea programada para la copia de seguridad se ejecutará todos los días a las 9:00.

**systemState**

- Indica que la copia de seguridad debe incluir el estado del sistema.

---

## Recuperación de datos con recova 

### Parar las copias de seguridad 

Ahora vamos a recuperar datos que hayan sido borrados completamente de nuestro sistema con un software de recuperación llamado **Recova**. 
Pero antes de eso, vamos a parar de hacer copias de seguridad. 

Vamos a **Copias de seguridad de Windows Server>Modificar configuración de copia de seguridad programada** y nos saldrá un asistente, donde podemos decir que queremos cambiar la configuración de la copia de seguridad o detenerla.

Como queremos detenerla, marcamos esa opción.

<img width="586" height="450" alt="image" src="https://github.com/user-attachments/assets/830f28a3-8bd1-44da-934f-d060af8cdaa3" />

Confirmamos la detención y ya no se harán más copias de seguridad.

<img width="616" height="229" alt="image" src="https://github.com/user-attachments/assets/39f7aec6-4ddb-4a21-9c2a-fb9b83789d4e" />

---

### Borra la carpeta “CharlesPerrault” de D: y elimínala de la papelera de reciclaje. Elimina los archivos de la copia de seguridad

Pasamos al siguiente paso y es borrar el directorio **Charles Perrault. **

<img width="613" height="225" alt="image" src="https://github.com/user-attachments/assets/67c6bb21-ad08-4016-8eef-48e9e92c270b" />

↓

<img width="422" height="122" alt="image" src="https://github.com/user-attachments/assets/fea45333-96b6-4545-b69e-deb88e2b2740" />

Y tambien borraremos los archivos de la copia de seguridad. 

<img width="356" height="170" alt="image" src="https://github.com/user-attachments/assets/8cf199e3-e555-412b-ae99-c381436c97a3" />

---

### Buscar en D:\ los archivos borrados con Recova

Recova es un software de recuperación de archivos. [Enlace de descarga](https://www.ccleaner.com/es-es/recuva)
Lo instalaremos e iniciaremos. 

<img width="106" height="84" alt="image" src="https://github.com/user-attachments/assets/bb544a66-2914-462b-9223-f4e6153f1c76" />

La primera opción que nos sale es elegir el tipo de archivo a restaurar. 
Especificaremos que archivos de todo tipo.

<img width="448" height="304" alt="image" src="https://github.com/user-attachments/assets/0c5cf195-d036-44c7-bf16-4280c7ce9f39" />

Y que busque en la unidad **D:\**.

<img width="528" height="366" alt="image" src="https://github.com/user-attachments/assets/d4580580-e1ee-41a7-b135-651be33c0bf3" />

Y esta es la última pantalla que nos sale antes de restaurar, donde podemos marcar la opción de escaneo profundo, la cual investigaremos más adelante. 

<img width="408" height="265" alt="image" src="https://github.com/user-attachments/assets/486cd8db-bac1-4d73-ae6d-34ab2cbc9d67" />

Iniciamos el escaneo y hemos encontrado los archivos.

<img width="513" height="407" alt="image" src="https://github.com/user-attachments/assets/f2d5c6be-7e89-46ef-8261-dcce3d395a60" />

Diremos que los queremos recuperar en **C:\**

<img width="298" height="68" alt="image" src="https://github.com/user-attachments/assets/e5f936a7-da8a-41b1-b37d-11a76beeb2ae" />

Confirmamos la recuperación y estos se recuperan.

<img width="518" height="199" alt="image" src="https://github.com/user-attachments/assets/176bf263-149f-432d-95e9-5d84569ae059" />

Si vamos a **C:\** veremos que están los archivos. 

<img width="602" height="301" alt="image" src="https://github.com/user-attachments/assets/c52692be-5f40-4053-ad99-8d96b36e0089" />

Pero, ¿Por qué hay que recuperar los datos en otra unidad? 
Al borrar los datos, estos no se guardan realmente, si no que se marcan los sectores del disco que utilizaban esos archivos como libres. 
Ósea que esos datos aún están ahí. 

Si recuperamos los discos en la misma unidad, siempre estará el riesgo de que los datos que intentamos recuperar, se sobrescriban con los nuevos datos que estamos escribiendo durante la restauración. 

---

### Realizar escaneo profundo 

Como hemos visto antes, tenemos otra opción para recuperar los archivos, que es el Deep scan. 
Esta opción, hace que Recova examine cada sector del disco en busca de patrones que coincidan con los perfiles de archivos conocidos. 
Este modo es útil cuando la tabla de asignación de archivos ha sido dañada o sobrescrita, o cuando se intenta recuperar archivos que se han eliminado hace mucho tiempo.  
Sin embargo, los archivos recuperados de esta manera pueden no tener sus nombres originales y pueden estar en un directorio diferente al original 

En cambio, el escaneo que hemos realizado antes, busca la dirección de los archivos que han sido borrados. 
Por lo que es más rápida y por lo general, es más que suficiente, sobre todo si los archivos acaban de ser borrados. 

Marcamos la opción de **Deep scan**.

<img width="205" height="43" alt="image" src="https://github.com/user-attachments/assets/bdf547fe-9302-4c32-973d-86a8181ad7e6" />

Y también encuentra los archivos, pero esta vez le ha tomado unos segundos más de tiempo.

<img width="480" height="332" alt="image" src="https://github.com/user-attachments/assets/ac271c2c-7c3a-4a9e-8dd2-5661ec39af74" />

Como vemos, tenemos algunas opciones más que antes, aunque esto no es por el escaneo profundo, si no por el modo avanzado de **Recova**, el cual contiene más opciones como las siguientes: 

### General 

Son opciones de idioma, de actualizaciones etc, nada importante a la hora de resturar archivos. 

<img width="450" height="290" alt="image" src="https://github.com/user-attachments/assets/99d11dfb-5e6d-41e7-98cf-ba80cd19b543" />

### Acciones 

Estas opciones si nos interesan más, puesto que estas opciones nos permiten ver más archivos o marcar distintas opciones para el escaneo y recuperación de los archivos. 

<img width="452" height="348" alt="image" src="https://github.com/user-attachments/assets/66d5ca79-ec05-47f0-9cf3-2fdf438e2c26" />

### Avanzadas 

Estas opciones permiten añadir opciones al menú contextual y si queremos o no, guardar los ajustes de un archivo **INI**

<img width="440" height="341" alt="image" src="https://github.com/user-attachments/assets/57414a94-a6f0-48a3-b918-9bef08a58247" />

### Discos 

Permite seleccionar que discos mostrar:

<img width="398" height="274" alt="image" src="https://github.com/user-attachments/assets/d1943e8b-eebb-416f-990c-4911a9db09ed" />









