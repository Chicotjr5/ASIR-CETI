<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Activación](#activación)
 - [Probar funcionamiento](#probar-funcionamiento)
</details>

---

## Introducción

El acceso controlado a carpetas es una característica de seguridad de Windows.

Defender la cual protege nuestros archivos y directorios frente amenazas de ransomware. 

Cuando se activa, solo las aplicaciones seguras y confiables podrán modificar los directorios protegidos 

Si una aplicación no autorizada (por ejemplo un ransomware) intenta modificar ese directorio, se le bloqueará el acceso. 

---

### Activación

**Seguridad de Windows>Protección contra Ransomware>Administrar protección contra ransomware>Controla el acceso a la carpeta.**

![1 1](https://github.com/user-attachments/assets/26f641ce-7681-4630-b8f2-bb0c465d4667)

↓

![1 2](https://github.com/user-attachments/assets/291b082c-9fe0-4e2d-9c49-2426fc38085e)

↓

![1 3](https://github.com/user-attachments/assets/ab364250-3cb7-4cba-bd0f-59108bf1430a)

En carpetas protegidas ya vienen unas cuentas protegidas por defecto, pero yo voy a crear una nueva:

![1 4](https://github.com/user-attachments/assets/96d25965-c4be-4053-9401-e49fc717e6d9)

↓

![1 5](https://github.com/user-attachments/assets/b902d22d-61aa-4ced-b22c-c36053fc3baa)


---

### Probar funcionamiento 

Como dije, esta funcionalidad protege los directorios de las aplicaciones que no son seguras ni confiabes, así que he preparado un pequeño script (con ayuda) para comprobar el funcionamiento de esta funcionalidad.

```bash
@echo off 
echo Probando acceso controlado a carpetas... 
echo Esto es una prueba > C:\Users\usuario\Desktop\Guardar_informacion\miku.txt 
:: Espera un momento para asegurar que el archivo se haya creado 
timeout /t 2 >nul 
:: Verifica si el archivo existe 
if exist C:\Users\usuario\Desktop\Guardar_informacion\miku.txt ( 
echo No está protegido 
) else ( 
echo Está protegido 
) 
pause 
```

Este script lo que hace es crear un archivo dentro de la carpeta protegida y luego comprueba la existencia de ese fichero. 
Si se ha creado, entonces la funcionalidad no funciona, si no se ha creado, funciona.

Lo ejecuto y efectivamente, no se crea: 

![1 7](https://github.com/user-attachments/assets/8bab8147-4479-4e7b-b1e7-aa795f8ba4a9)

Si yo entro a ese directorio y quiero crear un fichero, sí que puedo hacerlo:

![1 8](https://github.com/user-attachments/assets/c07221d2-bc6a-4ad7-b00f-77edd7ea061a)


Hago una modificación al script y ahora en vez de crear un archivo dentro del directorio protegido, le digo que lo cree en el escritorio (no está protegido). 

```bash
@echo off 
echo Probando acceso controlado a carpetas... 
echo Esto es una prueba > C:\Users\usuario\Desktop\miku.txt 
:: Espera un momento para asegurar que el archivo se haya creado 
timeout /t 2 >nul 
:: Verifica si el archivo existe 
if exist C:\Users\usuario\Desktop\miku.txt ( 
echo No está protegido 
) else ( 
echo Está protegido 
) 
pause
```

Si que lo crea:

![1 10](https://github.com/user-attachments/assets/a798eee8-c03e-4b3a-88e4-e289e8313069)










































