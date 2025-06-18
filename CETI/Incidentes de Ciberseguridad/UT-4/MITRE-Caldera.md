<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [](url)
 - [](url)
 - [](url)
 - [](url)
</details>

---

## Introducción

En esta práctica se va a usar Caldera, el cual es un FrameWork de MITRE / ATT&CK que sirve para automatizar ataques y evaluar la seguridad de un sistema mediante la explotación de tácticas y técnicas basadas en MITRE / ATT&CK. 

**Principales usos:**

- Simular ataques realistas
- Automatizar Red Teaming
- Evaluar y mejorar las defensas de un equipo
- Ejecutar ataques en entornos controlados
- Facilitar la investigación de amenazas

---

### Instalación

En mi caso particular, no pude instalar Caldera, ya que los comandos que vienen en la guia de instalación, no me funcionaban, en cambio, a algunos de mis compañeros si.

Estos son los comandos:

```bash
git clone https://github.com/mitre/caldera.git --recursive 
cd caldera 
pip3 install -r requirements.txt 
python3 server.py --insecure --build
```

---

### Acceso a caldera:

Con caldera instalado, ejecuto el siguiente comando para iniciar caldera: 

```bash
python3 server.py –insecure --build 
```


![4 1](https://github.com/user-attachments/assets/5967638e-92f1-47f1-9d47-44b621ae4044)

↓


![4 2](https://github.com/user-attachments/assets/bba6e1b2-9925-4a8f-bf51-5a9fc1c97394)

Para acceder a caldera vamos a **https://localhost:8888**


![4 3](https://github.com/user-attachments/assets/2bed5902-9e63-4fea-b3e9-4f0aa2eea6b2)

En la panel de la izquierda se pueden observar varios componentes:


![image](https://github.com/user-attachments/assets/857c2d7a-046c-47a4-b94c-8fd4e48afc3c)

↓


![image](https://github.com/user-attachments/assets/7ebeb002-4fbf-429d-8efe-d903a3043f12)

---

### Usar Caldera

En mi caso voy a usar caldera contra un equipo Windows 10. Me hubiese gustado hacerlo contra la máquina de metasploitable o contra la de amadapa, pero en ninguna de estas pude hacerlo. 

Primero compruebo que tengo conexión a la máquina:


![5 1](https://github.com/user-attachments/assets/83a201ee-2dc9-463a-a063-42c25acb158f)

Ahora he de desplegar un **agent**. 
Un **agent** es un componente clave que actúa como un puente entre el servidor CALDERA y el sistema objetivo. Su función principal es ejecutar las instrucciones enviadas por CALDERA

![image](https://github.com/user-attachments/assets/c2921cc1-ec63-4183-9741-d34a5f2d5725)

Tenemos 3 principales: 

![image](https://github.com/user-attachments/assets/d75a1daa-b866-449c-aadc-a629f6f8314d)

**Sandcat** es el agente principal de caldera y el que usaré.

A la hora de crearlo, hay que elegir el sistema sobre el cual lo usare y poner la IP de Kali Linux: 

Ahora mismo lo lanzare contra el propio kali, para poder explicar todas las opciones y componentes más a fondo: 

![image](https://github.com/user-attachments/assets/abb4f7d4-6720-4d16-8967-de37d37d0b82)

A la hora de desplegarlo tenemos varias opciones: 

**Red Team**

![image](https://github.com/user-attachments/assets/221a5daa-b66d-48cd-a54e-e9aca66f91a1)


Este es el comando por defecto, que descarga y ejecuta un **agente Red Teaming** permitiéndonos ejecutar comandos en el sistema objetivo. 

**Blue Team**

![image](https://github.com/user-attachments/assets/46fce0d9-14a3-4f59-b77d-41aa9f663def)


Este es algo más sigiloso y es de **Blue Team**, lo que quiere decir que esta enfocado para actividades defensivas.

**Otras**

![image](https://github.com/user-attachments/assets/7bc6130f-7e0a-4c7e-b2e7-321c0f743021)

↓

![image](https://github.com/user-attachments/assets/024ed633-a1f5-43d1-afc0-7ae9653ff2d0)

El resto de pociones son menos interesantes y no las voy a usar.

Ahora este comando hemos de ejecutarlo en el equipo objetivo: 

![5 7](https://github.com/user-attachments/assets/9f4b0690-5267-4634-983e-77adcd930631)

Al volver a caldera, veremos que se ha desplegado un agente:


![5 8](https://github.com/user-attachments/assets/4e681727-a997-4467-997a-1ac90365987d)

Analizando la información vemos que el equipo se llama **kali** y es un equipo Linux, la conexión se hace por **HTTPS los privilegios que tenemos son elevados y el agente está habilitado**.


El siguiente punto son las **“abilities”** que consisten en diferentes tácticas y técnicas específicas basadas en **MITRE** que un agente puede ejecutar en un sistema.


![5 9](https://github.com/user-attachments/assets/a7f36f86-81c4-4b35-92bd-dd9b125fa6eb)

Caldera ya tiene muchas habilidades creadas por defecto, e incluso, nos permite 
crear a nosotros una “abilitie”


![5 10](https://github.com/user-attachments/assets/f495c981-c466-47a6-92e7-9be4527127f2)

Estas habilidades cuentan con:
- Nombre
- Descripción
- Tipo de táctica
- ID de la técnica
- Nombre de la técnica.

Un ejemplo es la siguiente, la cual nos saca información sobre el usuario actual del sistema: 

![5 11](https://github.com/user-attachments/assets/1e5a14dc-3b3e-4652-8409-763635324170)

Para poder lanzar estas **“abilities”** hay que crear una nueva operación 
Estas operaciones son las simulaciones del ataque, donde podemos ejecutar varias abilities en la máquina objetivo. 


![5 13](https://github.com/user-attachments/assets/b556a19e-cdc9-4675-9ac6-44d27b56ba45)

Lanzo la operación y se ve la siguiente pantalla:


![5 14](https://github.com/user-attachments/assets/d41953b9-5b08-4dc3-94d9-1b6396e029d8)

Dentro de la operación se pueden ejecutar comandos manuales o lanzar habilidades
Primero voy a poner yo un comando propio, el **comando id** 

![5 15](https://github.com/user-attachments/assets/ee410ed5-95c1-48de-b689-2a4d17dda32f)

Al lanzar el comando, nos sale un símbolo con el logo del sistema al que estamos atacando, haciendo referencia al equipo objetivo: 

![image](https://github.com/user-attachments/assets/e7eb222d-3ca0-4b5b-a4a5-e8ac1f07a333)

Después de esperar unos segundos, la operación se ha realizado con éxito y podemos ver el resultado de su ejecución:

![5 16](https://github.com/user-attachments/assets/5f62eddd-e6ab-4bd4-a415-f0b90b6b0432)

↓

![5 17](https://github.com/user-attachments/assets/89bd7c74-813a-4bdc-a3ed-274728b8b4f1)

---

### Ataque W10

Ya sé cómo funciona caldera, así que ahora lo voy a lanzar sobre un equipo Windows 10: 
En el equipo ejecuto el agente: 

![6 1](https://github.com/user-attachments/assets/5cbd9969-24a7-4a5e-8dae-4ce86bea9070)

Y este se crea dentro de Caldera:

![6 4](https://github.com/user-attachments/assets/56a8ebc8-ede2-4926-a8bd-62e439c21c5d)

**NOTA** para que funcione se ha de crear una regla en el firewall para que se pueda realziar la conexión de W10 a Kali Linux.

Creo una nueva operación: 

![6 5](https://github.com/user-attachments/assets/049fae56-d933-43eb-9eca-5c68600c6b10)

Y empiezo a ejecutar habilidades para ver qué información obtienen del sistema: 
Por ejemplo, esta me saca una lista con todos los servicios que se están ejecutando en el equipo:

![6 7](https://github.com/user-attachments/assets/cf0b7d36-e506-4b04-b4c3-367f7149fa7c)

Tras esperar un tiempo se ejecuta y veo el resultado: 

![6 9](https://github.com/user-attachments/assets/aace2e20-42f7-4cd1-b6b7-4addd1a6411e)

Hay algunas habilidades que no se ejecutan, ya sea por falta de permisos u otras razones. 
Por ejemplo, esta habilidad ejecuta el programa **Akagi64.exe con el método bypass nº 30**. 
Este programa se utiliza para bypassear el UAC de Windows.

![6 10](https://github.com/user-attachments/assets/4c13f2e5-601a-4cac-b128-901387b45e66)

Al lanzar este, como no tengo la herramienta instalada, pues me saldrá un estado de **Failed**.

![image](https://github.com/user-attachments/assets/c8a3666e-a1b3-48d4-9b98-3196f640c66c)

Otro que probe fue este, que cambia la contraseña del usuario: 

![image](https://github.com/user-attachments/assets/9715db75-63e9-495d-813c-39ff98da3f20)

Este no debería de funcionar, debido a que el usuario AtomicAdministrator no existe en el equipo. Y efectivamente, nos sale un error, pero no de que el usuario no existe, si no que no tenemos permisos para ejecutar ese comando

![image](https://github.com/user-attachments/assets/d19c0bfb-4ba6-4b01-8774-cc785713a841)

**Otras más que ejecute son las siguientes:**

![6 21](https://github.com/user-attachments/assets/c263ee0e-45b6-4773-b78e-7953257fb35e)

↓

![6 22](https://github.com/user-attachments/assets/a9aca009-a3c2-4e2f-b87c-2fc2f19ef421)

Esta habilidad realiza una consulta **DNS** y obtiene información sobre el **controlador de dominio (Domain Controller - DC)** en un entorno Windows Active Directory.

---

![6 12](https://github.com/user-attachments/assets/61bd882f-d82c-484b-b97a-a3accf821e4f)

↓

![image](https://github.com/user-attachments/assets/aadab8b5-e799-4741-b42e-0ed8188191cd)

Este me permite obtener la versión del SO.

---

### CVE-2025-27364

Esta es una vulnerabilidad descubierta el día 25 de Febrero de 2025 que afecta a las versiones 4.2.0 – 5.0.0 de Caldera. 

Esta vulnerabilidad reside en la funcionalidad de compilación dinámica de agentes (implantes) del servidor Caldera. Un atacante remoto no autenticado puede enviar solicitudes web especialmente diseñadas a la API del servidor Caldera, que se utiliza para compilar y descargar agentes como Sandcat o Manx. 

Mediante el uso indebido del flag del enlazador gcc -extldflags con subcomandos, es posible ejecutar código arbitrario en el servidor donde se ejecuta Caldera.

La explotación de esta vulnerabilidad permite a un atacante ejecutar código en el servidor afectado. Debido a esto, se ha ganado una puntuación de 10 en la escala CVSSv3, clasificándose como un impacto crítico. 

Para poder mitigar esta vulnerabilidad, se debe actualizar a la versión 5.1.0 de caldera. También se recomienda revisar logs, monitorizar actividad en el servidor de Caldera etc
