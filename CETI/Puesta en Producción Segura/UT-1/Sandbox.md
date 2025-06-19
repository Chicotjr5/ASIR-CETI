<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
</details>

---

## Introducción

En esta práctica se va a hablar sobre los sandbox y se va a realizar un caso práctico sobre ellos.

---

## Qué es un sandbox

Es un entorno aislado utilizado para ejecutar software o programas con fines de evaluación, monitoreo o prueba sin afectar el sistema principal.

**Características principales**

- Permiten a los usuarios ejecutar programas / abrir ficheros en un entorno controlado, preveniendo cualquier efecto dañino en su equipo real.
- Las sandbox permiten volver a un estado anterior para repetir un proceso que ha salido mal o si se ha aplicado alguna configuración que ha roto la propia sandbox.
- También permiten a los usuarios ejecutar sus programas en sistemas diferentes y con diferentes configuraciones (tanto del sistema como de la red) para comprobar que este se comporta de manera correcta incluso en diferentes situaciones.
- Permite reducir los costes para realizar diferentes pruebas, debido a que no tienes que montar otro equipo diferente para hacerlas.

### Tipos de sandbox

#### Según su proposito

- Seguridad informática
  - Para análisis de malware
  - Para probar vulnerabilidades
- Desarrollo de software
- Aislamiento de aplicaciones

#### Según su implementación técnica

- Basados en hardware
- Basados en software
- Basados en navegador

#### Según el nivel de aislamiento

- Completo
  - Para análisis de malware
  - Para probar vulnerabildiades
- Parcial
- Aislamiento de aplicaciones

#### Sandbox de software 

Usan aplicaciones o herramientas específicas para proporcionar aislamiento en un sistema operativo anfitrión. 

Son útiles para ejecutar programas desconocidos, sospechosos o en desarrollo sin comprometer el sistema además ser menos exigentes en recursos que las máquinas virtuales.

**Casos de uso**

**Análisis de malware**

Permiten a los investigadores ejecutar y analizar malware en un entorno seguro.
Ejemplos
- Cuckoo Sandbox
- Firejail

**Pruebas de software**

Se utiliza para probar aplicaciones en una simulación cercana al entorno real. 
Ejemplos
- Sandboxie
- Jailkit

**Aislamiento de aplicaciones**

Previenen que las aplicaciones interactúen con otras partes del sistema. 

#### Sandbox virtuales

Utilizan tecnologías de virtualización para crear máquinas virtuales (VM) completas que funcionan de forma independiente del sistema anfitrión. 
Proporcionan un alto nivel de aislamiento y pueden simular sistemas completos, como servidores o redes.

**Casos de uso**

**Entornos de desarrollo y pruebas**

Probar aplicaciones en diferentes sistemas operativos o configuraciones.
Ejemplos

- VirtualBox
- VMware
- Hyper-V

**Análisis forense**

Investigar sistemas infectados o sospechosos sin modificar los datos originales. 

**Ciberseguridad**

Probar exploits o realziar pentesting sin afectar el sistema anfitrión

#### Sandbox en la nube 

Ofrecen entornos aislados en plataformas de computación en la nube, accesibles de manera remota. 
Proporcionan escalabilidad y flexibilidad, ya que el usuario paga solo por los recursos que utiliza. 

**Casos de uso**

**Pruebas de software y DevOps**

Permiten a los desarrolladores crear y probar aplicaciones en entornos escalables. 
Ejemplos
- AWS Cloud
- Gogle Cloud Sandbox
- Azure DevTest Labs

**Análisis de malware y ciberseguridad**

Analizar amenazas sin necesidad de un hardware dedicado. 

**Infraestructura temporal**

Usar entornos temporales para realizar pruebas sin afectar la infraestructura real. 


#### Comparación

![image](https://github.com/user-attachments/assets/6349b5b7-f3aa-43a8-b75b-d33aaf80f515)

---

### Ejemplos de uso

He probado ha ejecutar el archivo Calculadora.py en 3 máquinas virtuales con sistemas operativos diferentes:

- Windows 10
- Ubuntu 24.04
- Kali Linux 22

El software que he usado para la virtualización ha sido **Oracle Virtualbox 7.1.4**

### Windows 10

Al ejecutarlo en Windows 10, se observa un comportamiento deseado del programa, al ejecutarlo, se abre una ventana con la calculadora. 
Los resultados no se muestran en la ventana, si no que se muestran en el terminal desde el cual se ha ejecutado el programa

![image](https://github.com/user-attachments/assets/2f6ba483-6cad-49ef-b327-8e2060b7db8a)

### Kali Linux

En cambio, en Kali Linux la interfaz gráfica de la calculadora se ve mal, debido a que parte de la calculadora se corta. 
La muestra de los resultados se hace desde la interfaz del programa y desde el terminal, cosa que en Windows no pasaba. 

![image](https://github.com/user-attachments/assets/d3cc36ea-8ab7-437d-bca9-bb81f493de58)

### Ubuntu

Y por último, en Ubuntu la interfaz se ve de forma correcta y se muestra el resultado de los cálculos en la terminal y en la interfaz. 

![image](https://github.com/user-attachments/assets/6b4bdc39-c5bc-4285-8ca5-6cf454e17295)

Tambien he probado la siguiente [web](https://hybrid-analysis.com/) en la cual se puede elegir en quesistema comprobar la ejecución del archivo y también nos indica si el archivo es malicioso o no y da más datos. 
Yo elijo que lo “ejecute” en un equipo Ubuntu 20.04 

![image](https://github.com/user-attachments/assets/ce0725ac-ca52-420c-94bc-cfbe1226e4c5)

Los resultados de las pruebas que nos da es que es un script de Python  y según el antivirus de **MetaDefender** esta todo limpio y no hay ningún problema

![image](https://github.com/user-attachments/assets/e83ba316-71b9-4b2e-a83a-0042201304b4)

Pero según Falcon Sandbox en Windows es un archivo sospechoso, pero en Linux no.

![image](https://github.com/user-attachments/assets/56eb00a0-866c-404e-a2b8-a5baf085e829)























