## Introducción

En esta práctica se vanm a ver varias BIOS y se van a realizar diferentes actividades.

---	

# Estudio BIOS set-up

![image](https://github.com/user-attachments/assets/27b9f52d-b004-4a36-972a-d9bb108cfd4a)

El apartado de favoritos permite que asignes opciones favoritas para así poder acceder más fácilmente a estas mismas.

## Easy Mode

Este modo, nos permite ver la información básica del sistema y hacer algunos ajustes simples. 
El modo avanzado se activa presionando F2 y nos sale el menú anterior, donde podemos hacer y ver muchas mas cosas.

![image](https://github.com/user-attachments/assets/d677400a-a7a0-45cb-8510-b839ab12d3b8)

## Tweaker 

Este menú nos permite manipular la velocidad a la que queremos que trabaje nuestra CPU y nuestra memoria RAM.

![image](https://github.com/user-attachments/assets/656358ef-18c4-4743-b12b-fdb7067de5a0)

**ADVANCED CPU SETTINGS**

En la sub ventana de configuración avanzada de CPU nos encontramos con ajustes para la CPU que nos permiten desde maximizar la velocidad de la CPU hasta que se ralentice cuando note que está sobrecalentada.

**ADVANCED MEMORY SETTINGS**

Esta sub ventana de configuración avanzada de memoria RAM nos permite desde configurar manualmente la frecuencia de reloj de esta misma hasta que el propio sistema te mande una alerte cuando la memoria RAM no esté instalada en el canal más optimo.

## Settings

Este menú nos dirige a las configuraciones generales.

![image](https://github.com/user-attachments/assets/1c1a81e5-0996-48e0-8683-b30bd26d62ef)

**PLATFORM POWER**

En esta sub ventana podemos configurar desde un ahorro de energía en los dispositivos PCI Express que estén activos en ese momento hasta que debe hacer el sistema una vez vuelve la energía después de un corte de corriente súbito.

**IO PORTS**

En esta sub ventana podemos configurar desde que la cantidad de memoria que puede usar la tarjeta grafica hasta configurar los controladores VMD (controlador de almacenamiento con lógica).

**MISCELLANEOUS**

En esta sub ventana podemos configurar desde si queremos que los leds de la placa estén encendidos o no hasta activar o desactivar el TPM (Trusted Platform Module: un microcontrolador dedicado diseñado para proteger el hardware a través de claves criptográficas integradas). 

**PC HEALTH ESTATUS**

Permite ver el estado de los componentes hardware y el voltaje de la CPU. 

## System Info

Este menú provee información de la placa madre y de la versión de la BIOS. 

![image](https://github.com/user-attachments/assets/5924e2dd-8a16-4139-a0b7-5b19e70bd6bc)

**PLUG IN DEVICES INFO**

Muestra información del PCI Express y si esta instalado de los servicios M.2. 

## Boot

Este es el menú de configuración de arranque, este nos permite ver desde las contraseñas de administradores y usuarios hasta el S.O que tenemos.

![image](https://github.com/user-attachments/assets/54b5f4f9-c0b2-4462-a86f-cfc7fd144e9f)

**SECURE BOOT**

Permite activar, desactivar y configurar el arranque seguro pero solo si antes deshabilitamos el soporte CSM.

 ## Save and Exit

Este menú sirve para guardar los cambios realizados en la BIOS o salir de ella sin guardarlos. 
También podemos cargar la configuración por defecto de la BIOS 
Además también sirve para iniciar desde la unidad que nos sale en el apartado Boot Override.

![image](https://github.com/user-attachments/assets/43bc03c3-05d5-494e-999d-fb67d861c9ce)

# Procesos del POST 

![image](https://github.com/user-attachments/assets/4661e169-a347-4ccc-a7a2-c472f8306f84)

Durante el POST, pueden darse errores, los cuales serán informados a 
través de una serie de sonidos y mensajes que aparecerán por pantalla.

# Configuración de BIOS 

Para acceder a esta BIOS, tendremos que presionar las teclas F2/F12 durante el arranque del sistema.

## Consultar la versión de la BIOS

La versión de la BIOS la consultaremos en el menú **System Info**

![image](https://github.com/user-attachments/assets/7cfb71f5-9807-4f32-9e01-357ec2b4a8e5)

## Cambiar la fecha 

Desde el mismo menú que el apartado anterior, podremos cambiar la fecha. 
Seleccionamos la opción **System Date**, damos Enter y la cambiamos. 

![image](https://github.com/user-attachments/assets/7b2a2d18-38de-4e44-95f5-4b1e6fc7e058)

Desde el menú **Favorites** podremos ver el voltaje del procesador. 
A la derecha del menú, en CPU podremos ver el voltaje de este.

![image](https://github.com/user-attachments/assets/adef43fe-252a-491f-a52f-8761b115cbda)

## Activar la tecnología de virtualización del procesador 

Para activar la virtualización, vamos al menú **Settings>PC Health Status>Configuración de Frecuencia Avanzada>Configuraciones Avanzadas del CPU y habilitamos el Modo SVM**

![image](https://github.com/user-attachments/assets/f8218861-5fb9-463b-862d-ee2b5bcb77c3)

## Cargar en la BIOS los valores de configuración por defecto. 

Vamos al menú **Save And Exit** y seleccionamos la opción **Load Optimized Defaults**.

![image](https://github.com/user-attachments/assets/f1987f3d-e748-43ea-816b-7e88a08b20f0)

## Cambiar la secuencia de arranque para que arranque desde una unidad de almacenamiento secundario determinada. 

Desde el menú de BOOT podemos elegir otra opción para iniciar el sistema. 
Vamos a Boot Option y elegiríamos una segunda opción (en este caso no hay pero sería así) 

![image](https://github.com/user-attachments/assets/f0cd0625-ec74-4366-a1fb-5cfe97477f0d)

## Conocer la cantidad de memoria instalada en el ordenador

Para conocer la cantidad de memoria instalada, nos vamos al modo avanzado y da igual en que menú estemos, a la derecha siempre saldrá la información general de la CPU, de la RAM y de los voltajes. 

![image](https://github.com/user-attachments/assets/034c1e88-a0c3-42c5-9dd1-725f594a1a04)

## Indicar a la BIOS que utilice los gráficos integrados o la tarjeta gráfica. 

Para seleccionar la gráfica integrada o dedicada, vamos al menú **Settings>I/O Ports>Internal Graphics** y los desactivamos, así que ahora la BIOS debería de elegir la tarjeta dedicada como primera opción.

![image](https://github.com/user-attachments/assets/c0e4049e-d290-4c38-92ce-a6eabd2722bc)

## Cambiar velocidad de los ventiladores. 

Presionaremos la tecla F6, esto nos llevará al menú de los ventiladores. 
Desde aquí podemos configurarlo todo relacionado con los ventiladores, pero ahora solo queremos cambiar la velocidad. 

En el menú de la izquierda elegimos el ventilador que queremos configurar y en el menú de la derecha, en la opción **Fan Speed Control** podemos seleccionar 4 opciones: 

- **Normal** - dependiendo de la temperatura va a más velocidad o a menos 
- **Silent** - Ira a poca velocidad para no hacer mucho ruido 
- **Manual** - Podemos configurar la velocidad que nosotros queramos 
- **Full Speed** - Máxima velocidad 

![image](https://github.com/user-attachments/assets/e77f9256-de27-49dd-b9a2-496824a5a2ff)

## Activar en el teclado el BLOCKNUM al arrancar 

En el menú BOOT, la primera opción que nos sale es la de activar el teclado numérico. 
Así que la seleccionamos y la habilitamos.

![image](https://github.com/user-attachments/assets/2ab9b273-d69a-4f8e-b439-6b0313044359)

## Ver la velocidad del FSB y el valor del multiplicador

En el menú de Favoritos podemos ver la velocidad del FSB y su valor.

![image](https://github.com/user-attachments/assets/b5807048-3a5c-4e69-94f8-58fac6dd1977)

## Poner contraseña a la BIOS. 

Para ponerle una contraseña a la BIOS, iremos al menú BOOT y en la opción **Administrator Password y User Password** podemos especificarle una contraseña.  
Además, en la opción **Security Option** podemos decirle si la contraseña solo la queremos para entrar a la BIOS o si también la queremos al arrancar el ordenador. 

![image](https://github.com/user-attachments/assets/c474e743-2d68-47cb-81eb-1cb3b66695a3)

## Actualizar BIOS

Para actualizar la BIOS, nos descargaremos el archivo de actualización de la página oficial de Gigabyte, lo meteremos en un USB y arrancaremos desde el **Easy Mode** de la BIOS. 

Vamos al menú **Q-Flash**/presionamos **F8**. 

![image](https://github.com/user-attachments/assets/73a6b7ad-4967-430b-86a3-a7670fce9d28)

Aquí dentro, nos saldrá en grande la opción de actualizar la BIOS o de guardar la BIOS, nosotros obviamente, seleccionaremos la opción de actualizar. 

![image](https://github.com/user-attachments/assets/b3aef295-bc4a-49f8-aa77-e27b0b39460e)

## Actualizar BIOS

Ahora seleccionaremos el archivo que habremos descargado.

![image](https://github.com/user-attachments/assets/cf313c2a-f662-4d9b-859e-076fc82d95b4)

Y actualizamos la BIOS

![image](https://github.com/user-attachments/assets/cb66d597-0e12-446c-9183-22c404735ec5)

# BIOS Lenovo

La BIOS que elegí fue la del portátil **Lenovo Thinkpad P1 GEN 5** que tiene BIOS en modo texto y modo gráfico.

## Menú principal 

Este el es menú principal, donde se encuentra la información sobre la BIOS y algunas configuraciones de este y sobre varios componentes como la CPU, la RAM instalada etc.

![image](https://github.com/user-attachments/assets/f2983c68-072a-4f2f-9524-7b9f1a036c65)

## Config

Aquí podemos configurar algunas opciones, como por ejemplo: 
- Habilitar el WAKE ON LAN 
- Seleccionar la pantalla (si queremos usar la del portátil o otra) 
- Cantidad de memoria integrada 
- Poder usar  multiprocesamiento 
- Si queremos que la CPU este en modo ahorro de energía 
- Habilitar los servicios de nube de Lenovo

![image](https://github.com/user-attachments/assets/20a5d26e-d522-4340-976c-fe4bad6bc919)

## Date/Time

Aquí podemos ver la fecha y hora del sistema

![image](https://github.com/user-attachments/assets/c2525cd7-8bc8-4cef-af1e-66902b0b7b1d)

## Security

Desde esta ventana podemos configurar temas de seguridad relacionadas 
con la BIOS, por ejemplo: 
- Ponerle una contraseña. 
- Si queremos usar desbloqueo por huella dactilar. 
- Como queremos actualizar la BIOS 
- Habilitar o deshabilitar la virtualización 
- Si queremos habilitar o deshabilitar los puertos 
- Habilitar o deshabilitar el Secure Boot 
- Habilitar o deshabilitar el borrado seguro

![image](https://github.com/user-attachments/assets/bc5cc117-ef99-4ec5-b04b-ee47e4d8bc39)

## Startup  

Desde este menú podemos configurar opciones sobre el inicio del sistema, como por ejemplo, que inicie desde la red, que saque la pantalla de información del Hardware durante el POST etc

![image](https://github.com/user-attachments/assets/fe7d68a8-b93a-41c8-846f-e09b9080f3c0)

## Restart 

Este menú sirve para salir de la BIOS guardando o no los cambios que hayamos realizado en ella. 

![image](https://github.com/user-attachments/assets/5f8b6881-f74e-4a75-8432-7d2fc805fefd)

## Consultar la versión de la BIOS

Desde el menú **Main** podemos ver la versión de la BIOS 

![image](https://github.com/user-attachments/assets/16a16369-cd35-451c-89b0-2a05d293e843)

## Cambiar la fecha 

Esta opción se cambia desde el menú DATE/TIME (a mi no me deja cambiarla, pero sería desde aquí)

![image](https://github.com/user-attachments/assets/89fe8b97-fb72-4ea1-9e8c-962f7f381b81)

## Activar la tecnología de virtualización

Vamos a **Security>Virtualization** y la activamos (aunque por defecto está activada). 

![image](https://github.com/user-attachments/assets/cdd8df61-810c-44a3-aa1f-be96e01dbd40)

## Cargar en la BIOS los valores de configuración por defecto 

En la parte de debajo de la BIOS, tenemos una opción para volver a los valores por defecto de la BIOS, la cual se selecciona presionando F9.

![image](https://github.com/user-attachments/assets/4608e597-09c7-400a-9eab-4780cd634cb9)

## Cambiar la secuencia de arranque 

Para realizar esta acción, tenemos que irnos a la interfaz BIOS (como ya dije antes, tenemos entorno gráfico y de texto)

Vamos a Starup>Boot y desde aquí podemos cambiar el orden de inicio y elegir otro dispositivo (a mi no me dejo, pero sería desde aquí).

![image](https://github.com/user-attachments/assets/f95f9f09-483a-49a7-88fe-efd54a6f1cd5)

## Conocer la cantidad de memoria instalada en el ordenador 

Desde el menú **Main** podemos verlo

![image](https://github.com/user-attachments/assets/74386337-023b-43db-af61-b53ab36ec5ae)

## Indicar a la BIOS que utilice los gráficos integrados o la tarjeta gráfica. 

Vamos al menú **Config>Display** y en la opción **Graphics Device** podemos elegir el rendimiento de los gráficos (no es lo que pide el enunciado, pero es lo más parecido)

![image](https://github.com/user-attachments/assets/3022f593-3d4c-4aa3-b110-69f37ad3866e)

## Poner contraseña a la BIOS

Vamos al menú **Security>Password** y activamos la opción **Lock UEFI BIOS Settings**.

![image](https://github.com/user-attachments/assets/08f72564-b6f2-44c9-9bf0-e2575116c4d5)

# Preguntas BIOS 

## Si dispongo de un USB de instalación de Windows y no se inicia ¿A qué se puede deber?

- Puede ser porque en la BIOS, en la opción de Boot order, no este el USB como primera selección de arranque 
- Quizá la BIOS no lo reconoce 
- El USB instalador, está roto 
- Quizá esta particionado en un sistema no reconocible por la BIOS

## ¿Qué formas puedo utilizar para acceder a la BIOS?

- Podemos acceder presionando la tecla de función **(F2-F10)** correspondiente durante el arranque del ordenador 
- Desde Windows, en **Configuración>Actualización y seguridad>Recuperación>Inicio avanzado>Opciones avanzadas** y nos saldrá un menú donde podremos hacer varias cosas, entre ellas, acceder a la BIOS

## ¿En qué tipo de memoria se almacena la BIOS y por qué se utiliza ese tipo de memoria? 

Se almacena en una memoria CMOS.

Se utilizan este tipo de memorias porque es capaz de almacenar, procesar y transmitir datos digitales y analógicos al mismo tiempo, además de que es más fácil actualizar la BIOS desde este tipo de memorias.

## ¿Qué puede ocurrir si la pila del ordenador se queda sin 
batería y cuáles son los síntomas para que nos demos cuenta de ello?

Si la pila se queda sin carga, no podremos encender el ordenador, puesto que la BIOS no tiene alimentación, así que no arrancará. 

Además, se nos pueden borrar los datos de la BIOS, puesto que la memoria CMOS no tiene alimentación. 

Un síntoma es el retraso en la hora del reloj (siempre y cuando el reloj no esté conectado a Internet), que el ordenador vaya más lento etc.

Incluso se pueden borrar algunos datos de la BIOS, como, por ejemplo, cual es la unidad de arranque. 

## ¿Cuáles son las diferencias entre UEFI y BIOS? 

La UEFI cuenta con más funcionalidades:

- Más rápido
- Se necesita una partición UEFI de boot
-  Permite + de 4 particiones primarias, y discos de más de 2TB
-   La UEFI usa GPT para las particiones, en cambio BIOS usa MBR
-   UEFI solo puede instalarse en equipos de 64 bit

## ¿Cómo ha evolucionado la tecnología de almacenamiento de las BIOS y cuáles son las diferencias entre ellas? 

Al principio, las BIOS se implementaban en memorias ROM, de solo lectura, por lo que no se podían actualizar. 

Luego evolucionaron a las EPROM y EEPROM , las cuales podían actualizarse y podían ser borradas mediante radiación y corriente eléctrica. 

Actualmente se almacenan en memorias Flash, facilitando su actualización y configuración. 






















































































































































































