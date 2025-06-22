
<details>
  <summary><h2>Índice</h2></summary>
  
- [Particiones en Miui 13.0.3 – Android 12](#particiones-en-miui-1303--android-12)
  - [Particiones de seguridad y verificación](#particiones-de-seguridad-y-verificación)
  - [Particiones de Hardware y configuración](#particiones-de-hardware-y-configuración)
  - [Particiones de personalización](#particiones-de-personalización)

- [Particiones en EMUI 8.0 – Android 8.0](#particiones-en-emui-80--android-80)
  - [Particiones del sistema y arranque](#particiones-del-sistema-y-arranque)
  - [Particiones de componentes de radio / módem](#particiones-de-componentes-de-radio--módem)
  - [Particiones personalizadas de Huawei](#particiones-personalizadas-de-huawei)
  - [Particiones de recuperación y actualización](#particiones-de-recuperación-y-actualización)
  - [Particiones de seguridad](#particiones-de-seguridad)
  - [Particiones de interfaz](#particiones-de-interfaz)
- [Estructura en MIUI 13.0.3 – Android 12](#estructura-en-miui-1303--android-12)
- [Estructura en Android 8.0 – Emui 8.0](#estructura-en-android-80--emui-80)
</details>

## Particiones en Miui 13.0.3 – Android 12 

En MIUI 13.0.3 la cantidad de particiones crece de forma masiva:  

![image](https://github.com/user-attachments/assets/f6bba376-fb5d-4ec3-98d8-e4ad370c8a6b)

↓

![image](https://github.com/user-attachments/assets/0eec3e9c-e5fe-4d00-b825-9a73476658ca)

He remarcado las particiones que he explicado anteriormente, ahora procederé a explicar el resto de las particiones importantes que se encuentran en el dispositivo:

### Particiones de seguridad y verificación

![image](https://github.com/user-attachments/assets/9c2f5a83-9e80-4b64-98ca-8d9d66f47ded)

### Particiones de Hardware y configuración  

Estas particiones están dedicadas al hardware de este modelo de Xiaomi, ya que están relacionadas con el hardware que contiene. 

En mi caso, tiene un procesador Mediatek Helio G85. Si hubiera otro Xiaomi Redmi Note 9, pero que llevara un procesador de Qualcomm, algunas de estas particiones no estarían. 

![image](https://github.com/user-attachments/assets/25de2fe8-e2ac-4fa2-96c2-50da88f32d15)

### Particiones de personalización 

![image](https://github.com/user-attachments/assets/e857e545-5caa-4202-9016-ea3af2d80fe9)

---

## Particiones en EMUI 8.0 – Android 8.0 

El comando que estaba usando anteriormente no funciona en este dispositivo, ya que la versión de Android es más antigua. 
Ahora he de usar el comando:

```bash
adb shell ls -l /dev/block/platform/*/by-name/
```

![image](https://github.com/user-attachments/assets/d7562a0a-33a2-4c42-a109-dec7c8babf6e)

↓

![image](https://github.com/user-attachments/assets/e235e761-5aca-41b7-9c6f-5ad80285d849)

### Particiones del sistema y arranque

![image](https://github.com/user-attachments/assets/4b42c113-d435-4207-a873-41c25df44a74)

### Particiones de componentes de radio / módem

![image](https://github.com/user-attachments/assets/fd971937-41f4-44ab-87b9-ee5c933320d8)

### Particiones personalizadas de Huawei 

![image](https://github.com/user-attachments/assets/721918ec-cc79-4f13-b716-c7151b46cf77)

### Particiones de recuperación y actualización

![image](https://github.com/user-attachments/assets/1ac2a9b7-b492-4049-bfdf-535a53a6f1df)

### Particiones de seguridad

![image](https://github.com/user-attachments/assets/3bdc3027-bc51-4bf0-abb8-8f24d4311e97)

### Particiones de interfaz

![image](https://github.com/user-attachments/assets/697b4017-bdf1-4627-b3fe-eabbfe96bdf5)

---

## Estructura en MIUI 13.0.3 – Android 12 

![image](https://github.com/user-attachments/assets/002c124e-4d15-4bca-af74-f94baf183e75)

Como se puede observar, la mayoría de los directorios están presentes en ambas versiones, pero en MIUI se puede apreciar una gran cantidad de  archivos y scripts **init.miui.*.rc**. 

Estos son archivos de inicialización propios de MIUI que se ejecutan al arrancar el sistema: 

![image](https://github.com/user-attachments/assets/0077248c-d1b3-4527-819d-9a83727d7ade)

El único directorio diferente es **cust** el cual contiene configuraciones regionales, aplicaciones preinstaladas (bloatware) y ajustes específicos para cada país. 

Su contenido es el siguiente:

![image](https://github.com/user-attachments/assets/19d21966-bede-4e4d-a072-b802f5e702c0)

Para España, tenemos las siguientes aplicaciones: 

- Amazon
- Netflix
- Linkedin
- WPS Office
- Facebook
- Ebay

Este conjunto de aplicaciones preinstaladas se llama bloatware y son aplicaciones de terceros que ya vienen preinstaladas en los dispositivos. 

Las desarrolladoras pagan a los fabricantes para incluir sus aplicaciones, para incitar al usuario a usar las que ya vienen instaladas antes de buscar y usar otra. 

Por lo general no se relaciona el bloatware con el malware, de hecho, en el propio directorio cust vienen firmas digitales de las aplicaciones (archivos partner*), garantizando que son aplicaciones auténticas y no han sido modificadas.

---

## Estructura en Android 8.0 – Emui 8.0  

Este es, con diferencia, el sistema que presenta más cambios, lo cual es normal, ya que esta versión de Android salió hace ya 8 años. 

![image](https://github.com/user-attachments/assets/c8c5843a-4cb0-4bc8-8399-409ae5993d67)

También se puede observar una gran cantidad de archivos, los cuales directamente me salen con el mensaje de **Permission denied**. 

Estos archivos incluyen:

![image](https://github.com/user-attachments/assets/d9e9860d-5dc9-459b-bf7a-1a893dcad454)

A parte de estos archivos, también hay directorios diferentes:

![image](https://github.com/user-attachments/assets/9e7b569a-8aa3-42e4-98db-d1bff82543dd)
































































