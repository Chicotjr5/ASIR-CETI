## Haz una copia de seguridad de todo el registro y guarda el archivo en el escritorio 

Para abrir el registro, ponemos en el buscador de Windows: **Regedit**

![3 1](https://github.com/user-attachments/assets/eeb35c70-a865-47cb-91ea-a00cba12a1f8)

Dentro del registro, nos vamos a **Archivo>Exportar** y le decimos que lo guarde en el escritorio.

![image](https://github.com/user-attachments/assets/fe9af385-b281-4bc7-81ad-440e9949ad8e)

↓

![image](https://github.com/user-attachments/assets/57048e9b-3d32-4bf9-b085-4966d8fbaa2b)

↓

![image](https://github.com/user-attachments/assets/f8eb3bba-793b-44ca-831d-d1bc2fcefc26)

---

## Ve a HKEY_CURRENT_USER\Control Panel\Desktop y edita el valor Wallpaper, pon su contenido en vacío y observa los cambios 

Una vez en la clave, buscamos el valor Wallpaper.

![image](https://github.com/user-attachments/assets/f8ddd723-31bf-45f4-b1cf-e90900c34bd2)

Y le asignamos un valor de 0. 

![image](https://github.com/user-attachments/assets/7d6a65d6-64d9-4925-8916-0e0fd7c0c3f5)

↓

![image](https://github.com/user-attachments/assets/5a938e94-282d-4979-a76c-7c640a767100)

Para ver los cambios, cerramos e iniciamos sesión.

![3 8](https://github.com/user-attachments/assets/e6936df8-c56a-4597-a636-41008c727f94)

## Ve a la clave HKEY_CURRENT_USER\ Software\Microsoft\Windows\CurrentVersion\Run Inserta un nuevo valor de tipo cadena, que tenga como valor CMD y observa los cambios

Vamos a la clave y creamos un nuevo valor tipo cadena

![image](https://github.com/user-attachments/assets/dde3a897-74d5-4b79-bfb5-5bc0a82e51ea)

Su nombre será Consola y su valor CMD

![image](https://github.com/user-attachments/assets/a73ea459-35d3-49e3-b2a2-3459d187c49d)

Si cerramos y volvemos a iniciar la sesión, veremos que automáticamente se nos abre un CMD en modo Administrador

![3 11](https://github.com/user-attachments/assets/4824beb6-9008-4da6-b73d-66c069abb7c2)

## Crea la clave HKEY_CURRENT_USER \Software\Microsoft\CommandProcessor Inserta un Nuevo valor de tipo cadena que se llame AutoRun cuyo valor será echo “texto” y comprueba el resultado

Al ir a **HKEY_CURRENT_USER \Software\Microsoft\** veremos que **la clave CommandProcessor no existe**, así que tenemos que crearla.

![image](https://github.com/user-attachments/assets/a5e6ffb5-2410-4cf2-acd7-56164d1e3411)

Es muy importante que al crearla, separemos el nombre (Command Processor), debido a que si no, no funcionara.

Le añadiremos un valor de cadena llamado AutoRun cuyo valor será un echo con un texto. 
Y si vamos al CMD, veremos que nos saldrá el mensaje que hemos puesto en el valor.

![image](https://github.com/user-attachments/assets/710930fd-dcbf-4418-ae6e-1819d1999412)

↓

![image](https://github.com/user-attachments/assets/53fda43b-5603-4b00-807a-44073ccd54e7)

## Localiza las claves donde se encuentra cada uno de los tipos y los valores donde están realmente almacenada cada variable

Las variables de usuario se encuentran almacenadas en **HKEY_USERS\S1-5-21-1813830996-1037627682-3924054409-1001\Environment** 

![image](https://github.com/user-attachments/assets/57f06ce2-e610-4f51-b0a8-6b1c510d16bb)

Y las variables de sistema se encuentran almacenadas en **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Enviroment.**

![3 17](https://github.com/user-attachments/assets/5a393980-7f7c-4841-872e-faa09437a02f)

## Investiga qué es la característica de telemetría y recolección de datos. 

Son unas funciónes incluidas en Windows, mediante la cual se recopilan y envían todo tipo de datos personales e información, sobre el comportamiento del usuario a Microsoft. 

Según Microsoft su objetivo es el de identificar problemas y ayudar a solucionarlos, analizar la actividad y el comportamiento y así mejorar la experiencia de usuario. 
La información incluye datos básicos como nombre, datos del equipo, uso de aplicaciones, hasta otros más extremos como información en documentos, contraseñas, historial de navegación, etc

**Ventajas**

- Si Microsoft realmente lo usa para mejorar el Sistema y para dar solucionar a x problemas que podamos tener, o ofrecernos unas búsquedas más rápidaso más personalizadas, esto sería una gran ventaja, debido a que nos facilitaría mucho el S.O 

**Desventajas**

- Si no lo usan para eso, estamos mandando todos nuestros datos privados a una empresa, la cuál puede vender esa información y exponernos

Para desactivarlo, vamos a **HKEY_LOCAL_MACHINE\SOFTWARE \Policies\Microsoft\Windows\DataCollection** y creamos un nuevo valor **DWORD** cuyo nombre será **Allow Telmetry** y valor 0.

![image](https://github.com/user-attachments/assets/bb75bd9f-0b3a-4f22-96cb-5abe71a71a02)

## Mediante órdenes

### Inserta una nueva clave llamada Necrosoft dentro de HKEY_CURRENT_USER\Software

Vamos al CMD y ponemos el comando:

```bash
reg add HKEY_CURRENT_USER\SOFTWARE\Necrosoft
```

![image](https://github.com/user-attachments/assets/b6534353-5fb8-43f9-8f74-4f4c3d7b8c29)

### Crea un valor de tipo cadena, dentro de la clave que acabas de crear

Dentro de la clave creada, vamos a crear un nuevo valor de tipo cadena cuyo contenido sea FreeSoftware. 
Así que pondremos el comando: 

```bash
reg add HKEY_CURRENT_USER\Necrosoft /v Licencia /t REG_SZ /d FreeSoftware 
```

![image](https://github.com/user-attachments/assets/856a3b11-be15-4ecf-9d62-367619d1509c)

### Inserta un nuevos valores DWORD

Para insertar un valor DWORD es igual pero tenemos que cambiar el parámetro /t y en vez de ser REG_SZ será REG_DWORD.

Además, debemos especificar un valor en decimal y otro en hexadecimal. Para poner el decimal, ponemos el numero que sea y ya.

Para ponerlo en hexadecimal, ponemos delante 0x y especificamos el numero (0x25). 

![image](https://github.com/user-attachments/assets/89ea8c65-0848-4eee-948b-285aa71501ed)

### Consulta la clave Necrosoft 

Para consultarla, ponemos el comando: 

```bash
reg query HKEY_CURRENT_USER\Necrosoft 
```

![image](https://github.com/user-attachments/assets/c1237627-7c4a-409d-a095-cd4ad50e744a)

### Elimina el valor Version

Para eliminar valores, ponemos el comando:

```bash
reg delete HKEY_CURRENT_USER\SOFTWARE\NECROSOFT /v versión
```

Después de eliminarlo, lo consultamos y vemos que efectivamente, se borró.

![image](https://github.com/user-attachments/assets/d231a32c-3333-4a3d-8532-61808347ed82)


### Elimina la clave Necrosoft

Para eliminar claves, usamos el comando: 
```bash
reg delete HKEY_CUURENT_USERS\SOFTWARE\NECROSOFT  
```

Al consultar la clave, nos dirá que ya no existe. 

![image](https://github.com/user-attachments/assets/f72589fd-9a44-4878-94de-ab59e71dc97e)

## Restaura la copia de seguridad que hiciste al principio 

Para restaurar la copia que hicimos al principio, tenemos que darle a la opción Archivo>Importar 

Elegimos nuestra copia que creamos antes y empieza a importarse.

![image](https://github.com/user-attachments/assets/f9848e11-4f09-4426-b281-4d5806ee65e7)

Quizás nos sale un error de que no se pudo importar porque faltan permisos o porque no se copiaron bien las claves

![image](https://github.com/user-attachments/assets/bfe17d3b-8b63-415b-b7cd-c191a71bd593)

Esto lo ignoramos debido a que si que nos ha restaurado los valores. 
Por ejemplo, el valor Wallpaper vuelve a tener su contenido correspondiente. 
Además, de que las claves que hemos creado nuevas, no se borran, si no que siguen ahí

![image](https://github.com/user-attachments/assets/8980e5cd-3bed-45d6-9951-c076fccb14fe)

↓

![image](https://github.com/user-attachments/assets/0e91eb36-ec48-4f8f-ada7-02d6cebd8633)

---

## Busca en Internet información acerca de 3 herramientas que permitan hacer una limpieza del registro

### Wise Registry Cleaner:

- Limpiador gratuito que ofrece una interfaz limpia y opciones intuitivas.
- Tiene 3 modos de limpieza
  - Escaneo rápido
  - Escaneo profundo
  - Área personalizada
- Además de crear copias de seguridad antes de realizar cualquier cambio
- Y se pueden programar trabajos de limpieza para que se ejecuten automáticamente y dispone de una herramienta para desfragmentar del registro, reducir su tamaño y lograr que el PC funcione mucho más rápido.

![image](https://github.com/user-attachments/assets/4477916f-f86b-46da-9b17-df270713e40a)

---

### Auslogics Registry Cleaner

- Aplicación dedicada en exclusiva a mantener el registro de Windows 10 en plena forma, limpiando entradas innecesarias, duplicadas o corruptas 

- Es muy fácil de usar y es capaz de arreglar fallos en
  - Accesos directos rotos del menú Inicio
  - El inicio rápido
  - Documentos recientes
  - Elementos del escritorio.
- Su funcionamiento es muy simple
- Con un escaneo completo donde el software analiza el sistema e informa de los problemas en el registro para que el usuarios seleccione y excluya los que desea o no desea corregir
- Pero para tener todas estas funcionalidades, deberemos de obtener la versión PRO

![image](https://github.com/user-attachments/assets/ab719d81-6c15-4f9a-8dc8-c2ef3aeb0e51)

---

### CCleaner 

- Fue muy usado en XP, pero desde la compra por Avast perdió algo de valoración
- Pero eso no significa que sea un mal limpiador de registro
- Destaca su limpiador del registro de Windows 10, que examina
  - Archivos DLL compartidos que faltan en el sistema
  - Extensiones de archivo no utilizadas
  - Problemas con ActiveX y Class
  - Bibliotecas de tipos
  - Fuentes
  - Software obsoleto
  - Elementos de inicio
  - Otros problemas que impiden que el sistema funcione correctamente.

![image](https://github.com/user-attachments/assets/bc63fe98-353a-4b9b-beec-07ea0d4b1d71)

---

## Instala y prueba uno de ellos 

Yo instalé y probé **Wise Registry Cleaner** 
Para instalarlo, vamos a su página principal, nos descargamos el programa, lo ejecutamos y lo instalamos. 

![image](https://github.com/user-attachments/assets/4ad3b1b8-39e7-44c0-8ac7-dd416a96af3f)

Nada más iniciarlo, nos crea un backup del registro, en caso de que algo salga mal. 

![image](https://github.com/user-attachments/assets/0f03ac42-4b73-4d15-902e-e394cd86b3df)

Una de las funciones que especifique anteriormente, es la de desfragmentar el registro, para que el ordenador vaya más rápido y ocupe menos espacio. 
Así que vamos a la opción Desfragmentar y lo iniciamos. 

![image](https://github.com/user-attachments/assets/a6dd8819-9cb6-4bbe-adb7-8ae41b55d3da)

↓

![image](https://github.com/user-attachments/assets/ab57081f-a0e5-44ef-8e06-3d445efffbf3)

↓

![image](https://github.com/user-attachments/assets/6c5fdeef-2742-44ae-8139-a49cd9591ebf)


## Trucos registro

### Cambiar Windows con un solo clic en la barra de tareas 

Lo que haremos, será que al pinchar sobre un elemento que este en la barra de tareas y tenga varias ventanas abiertas, abrirá la ventana más reciente. 
Para ello, vamos a:

**HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced** y crearemos un nuevo valor 
**DWORD** llamado **LastActiveClick** y le pondremos un valor de 1.

![image](https://github.com/user-attachments/assets/29a30b1a-6467-4b58-b44d-42844876ff6b)

Ahora, al pinchar sobre una aplicación con varias ventanas abiertas en la barra de tareas, no nos saldrá la opción de elegir a cuál entrar, si no que nos saldrá directamente la última en la que estuvimos. 

![image](https://github.com/user-attachments/assets/c84544af-3733-42a1-a45c-2ff3a3443768)

---

### Mostrar los segundos en el reloj de la barra de tareas

Ahora, haremos que en el reloj de la barra de tareas, se nos muestren los segundos. 

Vamos a: 
**HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced** y creamos un nuevo valor **DWORD **llamado **ShowSecondsInSystemClock** cuyo valor sea 1.

![image](https://github.com/user-attachments/assets/bb9616ef-d1c7-4298-a118-d856683ea54b)

Ahora veremos que se nos muestran los segundos en el reloj.

![image](https://github.com/user-attachments/assets/d683e911-15e9-4083-b2f2-b301251088e9)

---

### Quitar la pantalla de bloqueo

Ahora, crearemos un valor para que no se nos muestre la pantalla de bloqueo de Windows. 
Vamos a: 

**HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows** y creamos una nueva clave llamada **Personalization** donde crearemos un valor DWORD llamado **NoLockSceen** 

![image](https://github.com/user-attachments/assets/f14cd33e-e699-4ee0-a73c-a8edb2584539)

Al reiniciar, no nos saldrá la pantalla de bloqueo con la hora y una imagen, si no directamente nos saldrá el usuario con el que iniciar sesión

![image](https://github.com/user-attachments/assets/295e7528-7127-45f0-903e-fb12be2eeb0f)

### Deshabilitar Cortana 

Vamos a:
**HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\WindowsSearch** y creamos un nuevo valor DWORD llamado **AllowCortana** cuyo contenido sea 0. 

![image](https://github.com/user-attachments/assets/84436d08-ebbe-4423-bb81-c51928f7273d)

Al reiniciar, si intentamos consultar algo en cortana, veremos que se encuentra deshabilitada. 

![image](https://github.com/user-attachments/assets/59d840f3-363e-451e-ba2c-c9f6f66e7cd6)













