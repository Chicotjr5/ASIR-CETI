<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Instalación](#instalación)
 - [Realizar escaneo](#realizar-escaneo)

</details>

---

## Introducción

En esta práctica se va usar la herramineta **Nessus**, la cual es usada para escanear vulnerabilidades e identificar fallos en:

- Sistemas operativos
- Dispositivos de red
- Servidores
- Bases de datos
- Aplicaciones

Su funcionamiento se basa en el análisis activo de los equipos dentro de una red, detectando configuraciones erróneas, puertos inseguros, servicios vulnerables o software desactualizado. 

Uno de sus puntos fuertes, es la gran base de datos de vulnerabilidades con la que cuenta, que además se actualiza constantemente con nuevas amenazas descubiertas.

Nessus ofrece escaneos personalizados, informes detallados y recomendaciones para mitigar los riesgos detectados. 

Cuenta con distintas versiones: **Nessus Essentials (gratuita y limitada a 16 IPs)**, ideal entornos de prueba y para lo que voy a hacer y versiones de pago como **Professional y Expert**, que ofrecen más capacidad, funciones avanzadas y soporte técnico, que no voy a usar.

Es multiplataforma (Windows, Linux y macOS) y muy utilizado por profesionales en auditorías, pentesting, y compliance (cumplimiento de normativas como PCI-DSS o ISO 27001). 

---

### Instalación

Para poder obtener el programa tuve que crear una cuenta y solicitar una prueba de **Nessus essentials**. 
Obtuve el instalador e inicié la instalación de Nessus.
Para configurar la instalación, hay que abrir un navegador y acceder a la dirección **localhost:8834**

![10 0](https://github.com/user-attachments/assets/3f7296b6-2a2c-4b81-a3c3-0455053f7abe)

Se ve la siguiente pantalla, donde NO hay que marcar la opción de registro online, ya que es más difícil de activar.

![10 1](https://github.com/user-attachments/assets/472ea3a2-0ace-4af6-865d-4807db8e3e26)

El siguiente paso es elegir la versión de Nessus que se va a instalar, en mi caso (aunque no sale aquí) es la Nessus Essentials. 

![10 2](https://github.com/user-attachments/assets/4fce10d4-bbe7-40cd-82ab-7bc644f6e0ed)

Al elegirlo, saldrá una pantalla, donde se nos pide poner el correo electrónico con el cual nos registramos y pedimos la licencia de Nessus Essentials, junto con la licencia que la gente de Tenable nos ha proporcionado. 

Después, creamos un usuario para poder acceder y se terminará de instalar la herramienta.

---

### Realizar escaneo

Después de esperar unas 3 horas a que se terminen de instalar y compilar los plugins, ya podemos acceder a Nessus Essentials.

![10 8](https://github.com/user-attachments/assets/f73ef321-b79c-4d05-b180-c1eaffe124b7)

Para poder crear un nuevo escaneo, hay que darle al botón de **New Scan**.
En mi caso, este botónno funcionaba, asi que tuve que ver el código de la página (F12) y manualmente darle al enlace que tiene ese botón para poder hacer el escaneo.

![image](https://github.com/user-attachments/assets/80b11f68-35d4-45e2-897e-614d016156e0)

Entonces se abrirá una pantalla donde se pueden realizar diferentes escaneos y pruebas: 

![10 12](https://github.com/user-attachments/assets/3ee73d9b-1d93-408f-95ff-f507d9207c8d)

Algunas pruebas no están disponibles ya que son de las versiones más avanzadas (aunque se puede solicitar una prueba gratuita).

![image](https://github.com/user-attachments/assets/4eb21765-e21a-41b0-84d1-e1a5e4553dc7)

Yo voy a probar un Basic Network Scan el cual consiste en un escaneo de vulnerabilidades de todos los dispositivos de red que se encuentren en la red

![10 13](https://github.com/user-attachments/assets/3c52dfb1-b084-423b-9db0-506debdf66d8)

En este escaneo no he necesitado configurar nada más, pero hay varias opciones de configuración, como las siguientes:

**Tipo de escaneo**

Donde se elige entre un escaneo de puertos comunes, o de todos los puertos 

![image](https://github.com/user-attachments/assets/686175b9-a733-4d17-a706-7dc8e1edd424)

**Evaluación**

Donde se elige el tipo de escaneo, si queremos que sea más intenso o no: 

![image](https://github.com/user-attachments/assets/b847c9fa-712d-4653-a191-d4013f01e7bc)

Lo siguiente sería elegir plugins, donde podemos añadir algunos para añadir más funcionalidad al escaneo, aunque si no añadimos ninguno, no pasa nada, ay que estos escaneos ya tienen algunos implementados por defecto.

![image](https://github.com/user-attachments/assets/83cff6f6-e15b-40ab-b48f-3b1b7fa9641d)

Con todo explicado, inicio el escaneo y tras esperar unos minutos, finaliza: 

![10 22](https://github.com/user-attachments/assets/0b65fd8b-0202-4dd0-bd61-ab6f8d267ec6)

El escaneo lo realice sobre mi red, en la cual estaba activa la máquina de metasploitable, que es de donde más vulnerabilidades se han obtenido.

En el apartado Vulnerabilitles encontramos todas las vulnerabilidades que ha detectado el escaneo junto con su valoración y nombre. 
Si seleccionamos una vulnerabilidad, veremos una descripción de esta, junto con una recomendación/solución para mitigarla y más información sobre la misma. 

![image](https://github.com/user-attachments/assets/d19ffdd1-d3c9-4aab-9d68-64fb3fe93cf2)












