## Índice

- [Introducción](#introducción)
- [Rootear Huawei P8 Lite](#rootear-huawei-p8-lite)
- [Rootear Xiaomi Redmi Note 9](#rootear-xiaomi-redmi-note-9)

## Introducción

En esta práctica se va a intentar rootear 2 dispositivos móviles, un Huawei P8 Lite y un Xiaomi Redmi Note 9 mediante el uso de diferentes herramientas nativas y de 3º.

---

### Rootear Huawei P8 Lite

Rootear un móvil es un proceso algo complicado y tedioso y de hecho, algunos móviles ya no se pueden rootear o requieren de mucha suerte y herramientas específicas.


Generalmente, para poder rootear un móvil, este ha de tener el **bootloader desbloqueado**, lo que diferentes acciones que no se podrían hacer de forma normal. 
Para poder comprobar si el **bootloader** de un móvil esta desbloqueado o no:


`adb reboot bootloader`
`fastboot oem get-bootinfo`

![4 3](https://github.com/user-attachments/assets/f4d9ef16-cb82-4bc5-9cf8-5a811d0cac91)


Como se puede observar, en el caso de mi **Huawei P8 Lite 2017** se encuentra bloqueado.

Intente desbloquearlo usando la herramienta **DR Fone** pero esta me dijo que mi dispositivo ya no se puede rootear:

![5 5](https://github.com/user-attachments/assets/12dd7656-9c16-4916-b234-2650189dffb1)


Además de que estuve buscando guías en internet y todas las que estaban disponibles hace un tiempo ya no lo están, por lo que no podré usar este móvil para la práctica. 
Tampoco funciono con la herramienta **Kingo Root** ya que esta detecta el dispositivo e intenta el rooteo, pero falla:

![1 1](https://github.com/user-attachments/assets/dca776de-21ea-4603-a883-8500bb84aa16)


↓

![1 2](https://github.com/user-attachments/assets/fde49667-21a1-47ce-bfdd-c31422e3dd40)


---

### Rootear Xiaomi Redmi Note 9

Con la herramienta DR fone no pude rootear el Xiaomi tampoco, debido a que dice que solo es compatible con móviles de Samsung:

![6 2](https://github.com/user-attachments/assets/f2e884b7-4b2a-443b-8eb5-bf162b3339d9)



Así que use la aplicación **Mi Unlock** la cual la proporciona la propia Xiaomi y sirve para desbloquear el **fastboot**. 
Lo primero que hay que hacer es instalar el driver necesario para que el PC reconozca el dispositivo y luego arrancar la herramienta:

![6 3](https://github.com/user-attachments/assets/bb9bd124-f1fb-4158-b85c-23cc3df2cf4b)


Mientras tanto, **iniciaremos el móvil en modo Fastboot** y el móvil será reconocido por la herramienta:
![6 4](https://github.com/user-attachments/assets/38d92478-b3da-4726-a208-5709f8f40817)


El rooteo de un movil tiene como consecuencia la perdida de la información del mismo, además de que este podría quedar inutilizable.
![6 5](https://github.com/user-attachments/assets/e2b77bf0-ba23-47a9-ac90-de8ce41f3d0c)


Pero al iniciar el desbloqueo, me dice que no y que espere 1 SEMANA para volver a intentarlo:

![6 6](https://github.com/user-attachments/assets/11b79489-db34-43c1-a9f3-05843f4b0699)


Con **kingoapp** tampoco funciono y es que paso lo mismo que con el Huawei, se detecta el dispositivo, pero falla el rooteo

![7 1](https://github.com/user-attachments/assets/5014b105-601e-491a-bb15-ce95f570e79b)


↓

![7 2](https://github.com/user-attachments/assets/96089130-0356-43eb-b9b6-cc1ce39eec3d)

