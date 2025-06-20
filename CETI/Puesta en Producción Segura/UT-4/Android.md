<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Explica qué son los modelos de permisos en sistemas operativos móviles y cómo protegen al usuario.](#explica-qué-son-los-modelos-de-permisos-en-sistemas-operativos-móviles-y-cómo-protegen-al-usuario)
 - [Qué diferencias clave existen entre el modelo de permisos de Android y iOS](#qué-diferencias-clave-existen-entre-el-modelo-de-permisos-de-Android-y-ios)
 - [Explica detalladamente qué es, para qué sirve y qué elementos componen el AndroidManifest.xml](#explica-detalladamente-qué-es-para-qué-sirve-y-qué-elementos-componen-el-androidmanifest.xml)
 - [Descarga una aplicación desde un repositorio confiable como FDroid o APKMirror](#descarga-una-aplicación-desde-un-repositorio-confiable-como-fdroid-o-apkmirror)
 - [Extrae y analiza su archivo AndroidManifest.xml utilizando herramientas como APKTool o JADX.](#extrae-y-analiza-su-archivo-androidmanifest.xml-utilizando-herramientas-como-apktool-o-jadx)
 - [Clasifica los permisos detectados](#clasifica-los-permisos-detectados)
 - [Valora si los permisos son coherentes con la funcionalidad ofrecida por la aplicación](#valora-si-los-permisos-son-coherentes-con-la-funcionalidad-ofrecida-por-la-aplicación)
 - [Lanza un análisis con la herramienta MobSF](#lanza-un-análisis-con-la-herramienta-mobsf)
 - [Identifica al menos dos vulnerabilidades documentando qué y cómo se han encontrado y explica los riesgos](#identifica-al-menos-dos-vulnerabilidades-documentando-qué-y-cómo-se-han-encontrado-y-explica-los-riesgos)
 
</details>

---

## Introducción

En esta práctica se va a hablar sobre las aplicaciones en Android, los tipos de permisos que tienen, como se estructuran y al ifnal, se analizará una apk creada por mi mismo.

---

## Explica qué son los modelos de permisos en sistemas operativos móviles y cómo protegen al usuario

Son mecanismos de seguridad que controlan el acceso de las aplicaciones a 
recursos sensibles del dispositivo, como:

- La cámara
- El micrófono
- La ubicación
- Los contactos
- Los archivos
- Los SMS

El objetivo principal de los permisos es proteger la privacidad y seguridad del usuario evitando que una app acceda a información o funciones sin nuestro consentimiento. 

Todas las aplicaciones han de declarar los permisos que van a usar en el archivo AndroidManifest.xml y desde Android 6.0, estos permisos se solicitan cuando la app los necesita o cuando la app se ejecuta por primera vez. 

Esto se llama modelo de permisos granulares. 

El usuario deberá aceptar o denegar cada permiso, si se deniegan varios, la app podría seguir funcionando, pero de forma limitada.

---

## Qué diferencias clave existen entre el modelo de permisos de Android y iOS

Una de las principales diferencias de cada modelo de servicios, es el como se gestiona el acceso a los recursos (cámara, micrófono, ubicación etc) y su transparencia. 

**Gestión de permisos**

En Android se usa el sistema de grupo de permisos, además de que estos se solicitan en tiempo de ejecución y algunos de estos se conceden automáticamente si pertenecen en al mismo grupo que una ya aceptado. 

Esto ultimo hace referencia a los permisos de firma en los cuales, si se instala x app con x firma y solicita x permiso, si mas tarde se instala y aplicación, con x firma, esa aplicación tendrá ese x permiso. 

En cambio, en iOS los permisos se gestionan de una forma mas individualizada y estricta, teniendo cada recurso (cámara, micrófono etc) su propia autorización especifica, además de que en Android los permisos se agrupan los permisos en AndroidManifest.xml, mientras que en iOS no están agrupados. 

La única similitud es que en iOS también se solicitan los permisos en tiempo de 
ejecución.

**Control del sistema sobre el comportamiento de las apps**

Android es mucho más flexible con los permisos, de hecho, algunas capas de personalización como MIUI y EMUI permiten modificar el comportamiento del sistema base y en versiones antiguas era más sencillo que las apps accedieran a informacion privada. 

iOS impone más restricciones, sobre todo en el comportamiento que una app cuando está en segundo plano o cuando solicita permisos especiales o peligrosos. 

Todas las aplicaciones pasan por una revisión manual antes de ser publicadas en 
la App Store. 

---

## Explica detalladamente qué es para qué sirve y qué elementos componen el AndroidManifest.xml 

Es el archivo más importante de la aplicación, donde se: 

- Declaran los componentes de la app
- Declaran los permisos que necesita la aplicación para funcionar
- Se define la actividad principal que se lanza al iniciar la aplicación
- Se define el hardware que necesita la aplicación (cámara, micrófono etc)

Un ejemplo de AndroidManifest es el siguiente: 

![image](https://github.com/user-attachments/assets/76d6732b-7c4c-46bc-bc27-0b596b6b11d1)

Sus componentes principales son los siguientes: 

**<manifest>**
- Es la raíz del archivo
- Contiene le nombre del paquete y metadatos
- En el caso de ejemplo, el nombre del paquete es com.metasploit.stage

**users-permission**
- Es donde se declaran los permisos que la app necesita
- En el ejemplo, se necesita
  - Acceso a internet y al estado de la conexión
  - Contactos
  - Localización
  - Cámara
 
**<uses-feature>**
- Declara el hardware que necesita para funcionar
- En el ejemplo, al requerir permisos de cámara, necesita acceso a la misma, además de acceso al micrófono

**<application>**
- Define toda la aplicación:
  - Nombre
  - Icono
  - Interfaz gráfica de la app
  - Tareas en 2º plano
 
**<activity>**
- Componente de interfaz gráfica de la app
- En el caso de ejemplo, la aplicación no muestra nada por pantalla

**<service>**
- Es el componente que define las tareas en segundo plano
- En el caso de ejemplo, crea un proceso persistente que se queda ejecutándose siempre, hasta que el usuario apaga el móvil
- Estos servicios en 2º plano se han de definir en archivos .smali

**<receiver**
- Responde a diferentes eventos del sistema, como el encendido del dispositivo

**<intent-filter>** 
- Define como responde cada componente a ciertas acciones o eventos del sistema

---

## Descarga una aplicación desde un repositorio confiable como FDroid o APKMirror 

En mi caso he descargado la siguiente [apk](https://www.apkmirror.com/apk/jam-city-inc/bingo-pop-play-live-online/bingo-pop-play-live-online-10-11-11-release/bingo-pop-play-live-online-10-11-11-android-apk-download/) la cual es un juego de bingo online:

![image](https://github.com/user-attachments/assets/375caf62-2baa-48f1-8587-b59fdaa7ed38)

---

## Extrae y analiza su archivo AndroidManifest.xml utilizando herramientas como APKTool o JADX

Después de descargar la APK, la he descompilado usando apktool y el siguiente comando: 

```bash
apktool d casino.apk -o casino 
```

![image](https://github.com/user-attachments/assets/e510cfcd-eb0e-4365-ad47-f2c08f099c7f)

Esto genera un directorio con todos los componentes de la aplicación, entre ellos, el archivo **AndroidManifest.xml** 

![image](https://github.com/user-attachments/assets/38f096e9-51f3-4654-ab9e-52b9212272a6)

## Clasifica los permisos detectados 

Los permisos que requiere la aplicación son los siguientes:

![image](https://github.com/user-attachments/assets/98fceb82-23ca-4184-aec4-74ffe6812482)

**Permisos normales** 
Estos permisos se conceden de forma automática, sin intervención del usuario y la apk tiene:

```bash
<uses-permission android:name="android.permission.INTERNET"/> 
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/> 
<uses-permission android:name="android.permission.VIBRATE"/> 
<uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/> 
<uses-permission android:name="android.permission.WAKE_LOCK"/> 
<uses-permission android:name="android.permission.FOREGROUND_SERVICE"/> 
```

**Permisos de firma**
Estos solo se conceden si las aplicaciones comparten la misma firma digital. 

```bash
<uses-permission android:name="com.google.android.gms.permission.AD_ID"/> 
<uses-permission android:name="com.android.vending.BILLING"/> 
<uses-permission android:name="com.google.android.c2dm.permission.RECEIVE"/> 
<uses-permission android:name="com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE"/> 
<uses-permission android:name="com.applovin.array.apphub.permission.BIND_APPHUB_SERVICE"/> 
<uses-permission android:name="com.uken.BingoPop.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"/> 
<uses-permission android:name="com.uken.BingoPop.permission.C2D_MESSAGE"/>
```

**Permisos especiales**
Estos requiren la configuracion manual del usuario o un acceso privilegiado: 

```bash
<uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/> 
(permite iniciar procesos al arrancar el sistema, considerado de alto impacto) 
<uses-permission android:name="android.permission.POST_NOTIFICATIONS"/> 
(desde Android 13 requiere consentimiento explícito del usuario) 
<uses-permission android:name="android.permission.ACCESS_ADSERVICES_ATTRIBUTION"/> 
<uses-permission android:name="android.permission.ACCESS_ADSERVICES_AD_ID"/> 
<uses-permission android:name="android.permission.SCHEDULE_EXACT_ALARM"/> 
(desde Android 12, requiere que el usuario lo habilite en Ajustes) 
```

---

## Valora si los permisos son coherentes con la funcionalidad ofrecida por la aplicación

Todos los permisos que necesita la APK son necesarios para el correcto funcionamiento de la aplicación y no hay ninguno que este poco relacionado con el contexto de la APK. 

Lo único, el permiso **RECEIVE_BOOT_COMPLETED** es algo intrusivo ya que indica a la apk cuando se ha realizado un encendido del dispositivo y el algo intrusivo, tendría sentido si la aplicación tuviera que iniciar algún servicio a la hora de encender el dispositivo (por ejemplo, que mande una notificación de que el usuario se ha de gastar 5€ en el día de hoy para poder realizar un bingo gratis).

---

## Lanza un análisis con la herramienta MobSF 

En mi caso voy a usar una apk propia que he realizado para mi proyecto, la cual se llama Kimoa. 
Su AndroidManifest.xml es el que he analizado en el punto 3 al principio de la práctica: 

![image](https://github.com/user-attachments/assets/04137104-1cf2-4ee1-849b-62d67f1e274f)

Esta aplicación lo que hace es que cuando la inicias, no aparece nada, pero se establece una conexión al PC del atacante, donde este ejecuta una serie de comandos, pudiendo sacar información como los contactos, la ubicación, realiza un stream desde el cual se ve en directo la cámara y el dónde se encuentra el usuario.

Mi primera idea era instalar la herramienta y lanzar un análisis sobre el apk, pero 
tuve problemas a la hora de la instalación, asi que encontré la siguiente página, 
donde se integra la herramienta -  [enlace](https://mobsf.live/)  

![image](https://github.com/user-attachments/assets/050f88a9-5c3d-43cc-ab48-3c993caf46df)

Subo el APK y se inicia el análisis:

![image](https://github.com/user-attachments/assets/b417229a-d066-479d-ab03-800fc03d7d6e)

Al acabar, genera un reporte

![image](https://github.com/user-attachments/assets/a964a4cb-7e9a-42c0-939c-1933d845d929)

---

## Identifica al menos dos vulnerabilidades documentando qué y cómo se han encontrado y explica los riesgos

Lo primero que vemos a la hora de abrir el reporte es lo siguiente: 

![image](https://github.com/user-attachments/assets/88ccc540-8a26-410b-9e22-3d4304d326df)

Se nos da informacion de todo tipo, como el hash, el nombre de la aplicación, del paquete, de la actividad principal y de la versión de Android a la que va dirigida. 

Además de que nos permite ver y descargar el código de la aplicación. 

Esta herramienta lanza análisis de todo tipo, análisis de permisos, de certificados etc. 
Si vemos los permisos solicitados vemos que se clasifican a 4 de ellos como peligrosos:

![image](https://github.com/user-attachments/assets/6062889b-3b0f-432f-88f7-f943fe566039)

En el análisis del certificado, nos comenta que la aplicación al estar firmada con el esquema V1, el cual es vulnerable a **Janus**.

![image](https://github.com/user-attachments/assets/62b2df5d-97c0-424b-a4a9-aff0fcd1ea98)

Esta vulnerabilidad permite a un atacante modificar el código de la APK sin  
invalidar su firma digital. 

Otro análisis nos da 3 vulnerabilidades: 

![image](https://github.com/user-attachments/assets/a192777f-7fe4-4dda-9bf6-53b64f03701d)

La primera es que la aplicación puede instalarse en versiones antiguas, por lo que es propenso a ser explotado por vulnerabilidades conocidas. 

Otra vulnerabilidad es que cualquiera con un acceso físico al móvil puede copiar los datos privados de la app. 

Y, por último, el servicio **MainService** no tiene restricciones, por lo que, si este servicio ejecuta acciones sensibles, otras apps podrías manipularlo. 









































