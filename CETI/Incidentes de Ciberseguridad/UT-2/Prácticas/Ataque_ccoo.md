<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Ataque](#ataque)
 - [Intentar replicar el ataque](#intentar-replicar-el-ataque)
 - [Conclusiones](#conclusiones)
</details>

---

## Introducción

En esta práctica se va a hablar sobre el ataque que sufrio el sindicato CCOO en el año 2023.

### Ataque

El día 2 de diciembre de 2023 el servidor web del sindicato CCOO fue atacado, dejando su web inoperativa, además de que se filtraron varias claves de acceso y el atacante obtuvo información valiosa del sitio como bases de datos y varias páginas.

El ataque se realizó desde la página **afíliate.ccoo.es** la cual contiene u formulario para tramitar la afiliación al sindicato. 

La URL incluía nombres de archivos como parámetros, así que el atacante se encontró con una vulnerabilidad **Path Trasversal**. 

Esta vulnerabilidad tiene como objetivo acceder a archivos y directorios que están almacenados fuera de la carpeta raíz web. Al manipular variables que hacen referencia a archivos con secuencias “punto-punto-barra (../)” y sus variaciones o al utilizar rutas de archivo absolutas, es posible acceder a archivos y directorios arbitrarios almacenados en el sistema de archivos, incluido el código fuente o la configuración de la aplicación. y archivos críticos del sistema.

Explotando esta vulnerabilidad se encontró con el archivo **/etc/passwd** el cual guarda información sobre todos los usuarios del sistema.

![image](https://github.com/user-attachments/assets/2203ff03-3911-445d-9a8d-0da6cf22d406)

Al atacante le llamo la atención el hecho de que en la ruta hubiera una letra E debido a que pensaba que sería un volumen, pero no lo era. Aunque usando la letra D fue capaz de leer el código fuente de los archivos PHP sin necesidad de ser 
procesados.

![image](https://github.com/user-attachments/assets/ccf3a8ab-5015-47e7-999a-466d71ea1e96)

La letra E se usa para ejecución y D o R se usan para lectura y envío y según esto se incluirán los archivos procesados o en plano.

Investigando el código el atacante se encontró con que hay un cargador de archivos que almacena las subidas en la ruta **/usr/paginas/v5.file/cms** con el DNI DEL USUARIO como nombre del archivo. 

![image](https://github.com/user-attachments/assets/d5fce099-de56-4197-8db8-2158986a4aa6)

Después de revisar el código, el atacante introduce el código de la shell en el archivo que va a subir para ejecutarlo desde **coco.php**.

![image](https://github.com/user-attachments/assets/3632c502-e656-491d-9a5d-9ce1a32bfe90)

Al subir el archivo y accediendo al mismo desde la URL se da cuenta de que puede ejecutar comandos en el sistema usando al usuario **www-data**.

![image](https://github.com/user-attachments/assets/c5d4e4d4-654a-4688-ada4-d7e01e5aabcf)

Navegando por varios archivos de autenticación el atacante da con claves de autenticación para bases de datos escritas en texto plano.

![image](https://github.com/user-attachments/assets/212977c7-ba62-4c8f-b22f-ee2f8f8870f2)

Usando estas credenciales el atacante accede a las bases de datos y ejecutando una **shell inversa** exporta las bases de datos. 
Una shell inversa es un proceso en el que la máquina de la víctima se conecta a la del atacante para recibir comandos. 
Es una técnica eficiente, ya que evade los firewalls y filtros de seguridad del tráfico que ingresa al ordenador. 

![image](https://github.com/user-attachments/assets/7272e430-6d81-4f1e-8ea9-e369d0b70513)

En una tabla de la base de datos encuentra **LA CONTRASEÑA DEL USUARIO ROOT EN TEXTO PLANO**

![image](https://github.com/user-attachments/assets/c2fb7ff8-8bc8-4521-8a30-b44b09012f99)

Con estas credenciales accede al sistema con privilegios de root.
También dice que incluso sin estas credenciales podría haber escalado privilegios igualmente explotando la vulnerabilidad **CVE-2017-7533**:

Una condición poco común en la implementación de fsnotify en el kernel de Linux hasta la versión 4.12.4 permite a los usuarios locales obtener privilegios o provocar una denegación de servicio (corrupción de memoria) a través de una  aplicación diseñada que aprovecha la ejecución simultánea de las funciones **inotify_handle_event** y **vfs_rename**.

Y después de guardar archivos y bases de datos el atacante modifico el inicio del dominio **ccoo.es** y junto con esto otros 50 subdominios mostraban la siguiente pantalla de inicio: 

![image](https://github.com/user-attachments/assets/fc8d00f8-bf2a-438c-bd26-2fd1f44862c3)

---

### Intentar replicar el ataque

Si accedo al formulario de afiliación a fecha **03/01/2025** se puede observar que el nombre del script ha cambiado de **coco.php** a **solicitud.php**. 

![image](https://github.com/user-attachments/assets/32430e94-6345-4070-b540-ae9eb9e2055d)

Si intento explotar la vulnerabilidad **Path Trasversal** de nuevo no podré y saldrá un **error 403**.

![image](https://github.com/user-attachments/assets/3172b9a3-81a4-43ea-92e1-d900df54ca65)

De hecho, tampoco se puede acceder al robots.txt

![image](https://github.com/user-attachments/assets/e9c614a9-749d-4634-90f6-edaca6f5c9c0)

Además he encontrado un pequeño error y es que si estas en **afiliate.ccoo.es/sol_afi_web/index.php** y le das al logo de ccoo, te lleva a **afiliate.htm**, pero esta página no está dentro de **sol_afi_web**, si no que está dentro de afiliate dando un error ya que no puede encontrar esa página.

![image](https://github.com/user-attachments/assets/1a54b768-0223-4571-98d7-66794b73f20b)

↓

![image](https://github.com/user-attachments/assets/4e24c54e-f032-45b1-842c-1fb8aca0ec63)

Esta es la página **afiliate.htm**

![image](https://github.com/user-attachments/assets/882cdbfb-d24c-4579-bcb3-b96cebb3a872)

Como se puede observar ya no se puede realizar el mismo ataque ya que el administrador del sitio web lo ha bloqueado. 

--- 

### Conclusiones

Lo que más me llama la atención de este ataque es el hecho de la pobre seguridad que tenía un sitio web de una organización tan importante como es **CCOO** pudiendo acceder a archivos importantísimos como **/etc/passwd** o el hecho de 
que haya credenciales de bases de datos o credenciales del sistema en texto plano. 

Y esto no es todo, si no que en Febrero de 2024 recibieron otro ataque donde se expusieron casi 22k credenciales de usuarios:

[Enlace1](https://bitlifemedia.com/2024/02/filtracion-de-datos-en-comisiones-obreras-exponen-mas-de-21-000-credenciales-en-un-foro-de-ciberdelincuencia)
[Enlace2](https://www.escudodigital.com/ciberseguridad/comisiones-obreras-brecha-seguridad-22000-credenciales_58130_102.html )
 
Otro detalle gracioso es que 1 mes antes de este ataque, recibieron otro ataque más que dejo inoperativa su web.

[Enlace](https://theobjective.com/espana/politica/2023-11-22/ccoo-ataque-informatico-sistema-web/)

Si vamos a [Wayback Machine](https://web.archive.org/web/20231122130850/https:/www.ccoo.es/) para ver el estado de la página en esas fechas, se puede observar que esta caída. 











