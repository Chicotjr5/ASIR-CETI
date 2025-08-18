## Instalación de todas las máquinas virtuales

Antes de instalar todos los sistemas operativos/herramientas que voy a usar, he de preparar las máquinas virtuales donde se instalarán. 

### Kubuntu

**Prerequisitos**

- RAM – 4GB
- Disco Duro – 25GB

Al iniciar la máquina, saldrán las siguientes 4 opciones: 


<img width="608" height="338" alt="image" src="https://github.com/user-attachments/assets/dc92a244-92a6-41b2-afb4-6c8def346dbe" />

**Try or Install Kubuntu**  
- Da la opción de probar una versión Live de Kubuntu antes de instalarlo, o instalarlo directamente 
**Kubuntu (safe graphics)**  
- Es una opción útil cuando el equipo no puede iniciar correctamente la tarjeta gráfica, estableciendo parámetros de arranque que nos permiten iniciar el equipo y corregir cosas. 
**OEM install**  
- Es una opción para los fabricantes de equipos. 
- Nos permite personalizar el equipo en la etapa de instalación 
**Test Memory**  
- Permite comprobar si hay problemas con la RAM del equipo 


Yo elijo la primera opción, puesto que voy a instalar Kubuntu. 
Después de esperar un momento, aparecerá la siguiente pantalla, preguntándome el idioma y si quiero probar Kubuntu antes o pasar a instalarlo directamente. 
Instalamos directamente.


<img width="555" height="356" alt="image" src="https://github.com/user-attachments/assets/5ab17853-60ba-4253-83b7-e3e12ea2cbe7" />


<img width="555" height="359" alt="image" src="https://github.com/user-attachments/assets/d9630b62-af44-4e98-8218-b7f9d543fb96" />

Al instalarlo, pedirá que elija como se va a distribuir el disco. 
No es algo importante, así que selecciono la opción de **Utilizar todo el disco**.


<img width="630" height="397" alt="image" src="https://github.com/user-attachments/assets/9cf95f94-ee13-4492-b64d-d252d5a72be2" />

Seguimos configurando cosas sin importancia hasta que nos pide el nombre del equipo, del usuario y su contraseña. 


<img width="653" height="422" alt="image" src="https://github.com/user-attachments/assets/7ad4143a-1763-4bdf-a689-69fa416b1460" />

---

## Ubuntu Server 22.04.3

**Prerequisitos**

- RAM – 4GB 
- Disco Duro – 25GB 

Ya que el servidor DNS y el servidor XAMPP usan el mismo sistema operativo, la instalación es prácticamente la misma, con unos ligeros cambios. 
Creo una nueva máquina y la inicio 
Lo primero que pide, es elegir el idioma de la instalación, obviamente será el español.


<img width="561" height="209" alt="image" src="https://github.com/user-attachments/assets/f45e1aed-667f-479d-887f-771143c2502c" />

Uno de los puntos críticos de la instalación es la configuración de la red. 
Podría configurarla ahora en la instalación, o cuando ya esté instalado el sistema operativo. 
Así que la dejo para después


<img width="685" height="194" alt="image" src="https://github.com/user-attachments/assets/46328baf-0fd8-4b56-bd90-9c8d994cdd50" />

El siguiente paso consiste en configurar la distribución del disco, pero no es algo importante, así que digo que use el disco entero.


<img width="666" height="145" alt="image" src="https://github.com/user-attachments/assets/c05e8531-1088-43ed-b6fb-6945b72a322e" />

Prosigo y ahora toca configurar el nombre del equipo, del usuario y su contraseña. 
En este caso, tanto el nombre del equipo como del usuario en **adminixampp**, una clara referencia a los usuarios que hemos usado en las máquinas de **Implantación de Aplicaciones Web**. 

↓


<img width="645" height="284" alt="image" src="https://github.com/user-attachments/assets/e9139e99-ce03-4299-aa4b-31041490a5e8" />

Y, por último, nos permite elegir entre instalar **OpenSSH** o no.
**OpenSSH** permite realizar comunicaciones cifradas entre equipos. 

Esto es importante, debido a que desde el servidor no voy a hacer nada (o casi nada), sino que desde Kubuntu voy a conectarme mediante SSH al servidor, para poder hacer todas las instalaciones y configuraciones correspondiente. 


<img width="644" height="247" alt="image" src="https://github.com/user-attachments/assets/dc4e41d3-797c-4043-9aa4-e781d4167e76" />

---

## Kali Linux

La instalación de Kali Linux es muy sencilla, tan sencilla que se podría decir que no hay. 
Voy a la página oficial de [Kali Linux](https://www.kali.org/get-kali/#kali-virtual-machines) y elijo descargarme la máquina virtual de 64b para VirtualBox.


<img width="649" height="228" alt="image" src="https://github.com/user-attachments/assets/6efb03a3-1576-42ae-9ac9-0a52f05804fa" />

Una vez nos descargada la máquina, la importamos a VirtualBox y la inicio. 
No hay que configurar nada, la máquina ya está preparada para que sea iniciarla y empezar a usar. 


<img width="518" height="387" alt="image" src="https://github.com/user-attachments/assets/e7186320-73ac-41c2-a2dd-525c6b9ef596" />

---

## T-POT

hora toca el sistema más importante y complejo de instalar, el cual es **T-POT 22.04**. 
**T-POT** no es solo 1 HoneyPot, sino que es una plataforma de Honeypots, contando con más de 20 de estos, permitiendo una gran variedad de ataques hacia él. 
De hecho, T-POT permite emular una gran serie de servicios, como, por ejemplo:

- Android ADB
- SSH
- FTP
- MSSQL
- SMB
- SMTP

Además, de que es bastante fácil de instalar y configurar comparado con otros HoneyPots, sumándole que la visualización de datos/eventos recopilados es muy intuitiva, llegando estos datos a estar disponibles durante muchos días (incluso meses en algún caso) 

En resumen, T-POT es la mejor opción si queremos tener una gran variedad de HoneyPots y no queremos rompernos mucho la cabeza.


<img width="379" height="390" alt="image" src="https://github.com/user-attachments/assets/f5723866-191a-485a-b0c0-05d096468de1" />

**Prerequisitos**

- RAM: 4-8GB 
- Disco Duro: 256GB 

Al iniciar la instalación, salen las siguientes opciones de instalación:

- Instalar T-POT 
- Opciones avanzadas 
- Ayuda 

Como solo a instalar el T-POT y no vamos a hacer otra cosa, elijo la primera opción. 


<img width="490" height="197" alt="image" src="https://github.com/user-attachments/assets/0e9a192b-b619-43f5-bd98-b049471d34a6" />

Como ya es habitual en todas las instalaciones, lo primero que se pide, es elegir el idioma de instalación. 
Obviamente, estamos en España así que elijo el español.


<img width="549" height="396" alt="image" src="https://github.com/user-attachments/assets/b56b7ddd-cdc1-43d7-a1c1-38714bc7a20f" />

La máquina empezará a realizar diferentes configuraciones, y llegaré a esta pantalla, donde se me pregunta que seleccione un **Debian Archive Mirror**. 
Un **Debian Archive Mirror**, es una réplica del repositorio de software Debian, el cual, contiene todas las arquitecturas de Debian. 
Por defecto, sale **deb.debian.org** así que será el que elegiré


<img width="636" height="378" alt="image" src="https://github.com/user-attachments/assets/e696fba9-4563-4e86-b0d3-aafb90e3df2c" />

En la siguiente pantalla, permite elegir entre si queremos instalar un sistema normal, o uno live, 
El sistema normal, se instala sobre el disco duro del equipo, mientras que el live no necesita instalarse sobre el disco para arrancar. 
Yo quiero instalar el sistema en el disco duro, que para algo le pongo 256GB, así que elijo la opción de normal


<img width="625" height="227" alt="image" src="https://github.com/user-attachments/assets/c44ce244-b3fb-4213-9fcd-54d7a9ddd8bb" />

Después de esto, empezará a instalarse y procederá a reiniciarse, para proseguir con la configuración 
Antes de reiniciarse, hay que quitar el archivo ISO, porque si no, vuelve a empezar con la instalación normal. 
Al iniciar de nuevo, ya no saldrá la misma pantalla que antes, si no que ahora veremos esta: 


<img width="632" height="125" alt="image" src="https://github.com/user-attachments/assets/65a379bb-fbfb-4466-8be7-27ce2a6e3f4a" />

Inicio el sistema y lo primero que pregunta es que edición de T-POT vamos a instalar. 

**STANDARD** 
- Esta es la versión estándar de T-POT que incluye una gran variedad y cantidad de honeypots y herramientas de seguridad.  
- Es ideal para la mayoría de los usuarios que desean un sistema de honeypots completo y versátil. 
**HIVE** 
Contiene las herramientas ELK y otras utilidades 
- Requiere menos recursos 
**HIVE_SENSOR** 
- Contiene más honeypots y la integración de NSM 
**INDUSTRIAL** 
- Es igual que la versión STANDARD, pero más centrada en Conpot 
**LOG4J** 
- Formado por LOG4POT, ELK, NSM y otras herramientas 
**MINI** 
- Igual que la edición STANDARD, pero enfocado en los qHoneypots. 
**SENSOR** 
- Conformado solamente por Honeypots y NSM

Para este proyecto, voy a elegir la versión **STANDARD**, puesto que es la más completa.


<img width="514" height="264" alt="image" src="https://github.com/user-attachments/assets/ce891f8c-e867-475f-8aa4-b0aecde8287f" />

Después de elegir la edición, pide que proporcionemos la contraseña para el usuario del modo consola. 
Este usuario se llama **tsec** y es con el que iniciaremos sesión tanto en el modo comando como en la interfaz gráfica.


<img width="443" height="189" alt="image" src="https://github.com/user-attachments/assets/4fbab7f2-0efe-436b-b372-811569e49e81" />

Posteriormente pide de nuevo un nuevo usuario y contraseña 
Este usuario es con el que iniciare sesión con las herramientas principales de **T-POT** mediante interfaz gráfica.


<img width="382" height="171" alt="image" src="https://github.com/user-attachments/assets/bb780226-2889-4a2a-b741-e1c40acb6897" />

↓


<img width="450" height="163" alt="image" src="https://github.com/user-attachments/assets/7dee2f24-64db-45ec-b4ae-07d7eaf3cc81" />

Ahora habrá de esperar un buen tiempo a que termine de instalarse el **T-POT**. 
Una vez instalado, iniciaremos sesión con el usuario **tsec** y la contraseña que hemos configurado anteriormente, además de que podemos ver la IP de la máquina y los puertos por los que acceder a diferentes herramientas gráficas.

<img width="484" height="290" alt="image" src="https://github.com/user-attachments/assets/0945f86f-2c7d-4ac6-9b16-7b2063e631c8" />
























