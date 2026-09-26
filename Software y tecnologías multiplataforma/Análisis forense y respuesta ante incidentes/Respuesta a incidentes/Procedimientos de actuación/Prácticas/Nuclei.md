<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Escaneo controlado](#escaneo-controlado)
 - [Plantillas](#plantillas)
 - [Comparación](#comparación-con-nmap)
 - [Escaneo real](escaneo-real)
</details>

---

## Introducción

**Nuclei** es una herramienta de escaneo de seguridad que permite encontrar y clasificar vulnerabilidades e información de sitios/aplicaciones web, infraestructuras, servicios etc. 
Para poder realizar estos análisis usa plantillas con formatos **.yaml** las cuales, podemos editar a nuestro gusto o incluso, podemos crearlas. 

---

### Instalación

Para poder instalar Nuclei copio el repositorio de github de la herramienta y el de sus plantillas: 

```bash
git clone https://github.com/projectdiscovery/nuclei.git 
git clone https://github.com/projectdiscovery/nuclei-templates.git
```

![1 1](https://github.com/user-attachments/assets/c7cf7b81-f520-4369-89e9-f1574f648459)

↓

![1 2](https://github.com/user-attachments/assets/1876466d-dd77-4f9e-88c9-1f43bb0fd27f)

La estructura de ambos directorios en la siguiente: 

![image](https://github.com/user-attachments/assets/2d6681cc-6ca0-4471-bc7b-d6cf1a16379c)

---

### Escaneo controlado

**Como primer objetivo, he usado la máquina de metasploitable** que instalamos meses atrás. 
Esta máquina cuenta con varios servicios vulnerables, así que podremos sacar información sobre las vulnerabilidades de esta.

![image](https://github.com/user-attachments/assets/c4a8af43-7b44-407e-9417-1715e5f0c0bd)

Para poder hacer un escaneo normal y “simple” ejecuto:

```bash
nuclei -u http://192.168.1.150 
```

Al hacer este escaneo se ejecutan todas las plantillas que sean relevantes para 
http las cuales son las de los directorios: 

- CVE – Vulnerabilidades conocidas
- Misconfigurations – Errores de configuracion
- Exposures – Fugas de información
- Technologies – Detección de tecnologías
- Default Login – Credenciales por defecto

El resultado de la ejecución de ese comando es la siguiente: 

![2 2](https://github.com/user-attachments/assets/65223a7e-f075-483b-910b-d4a7a8f585d2)

Se puede observar la cantidad de errores y vulnerabilidades que tiene la máquina. 
Pero la ejecución del comando nos da información de más, como advertencias y mensajes poco relevantes. 
Para eliminarlos, se puede usar el parámetro **-silent** el cual elimina estos mensajes. Y si solo queremos que nos saque las vulnerabilidades más importantes, también se puede usar el parámetro **-severity** al cual le especificaremos la gravedad de las vulnerabilidades que tiene que sacar. 

Además, si queremos guardar el resultado de la ejecución en un archivo para poder verlo más tranquilamente más tarde, se puede usar el parámetro -o pasandole un archivo de salida. 
Quedaría así: 

```bash
nuclei -u http://192.168.1.150 -severity hig,low -silent -o escaneos/metasploitable_2.txt 
```

![2 3](https://github.com/user-attachments/assets/e1798621-a5d6-4e72-89a7-77a4d72f01d0)

El resultado del comando sale por pantalla y se guarda en el archivo que le hemos especificado, aunque no se guarda con los colores:

![2 4](https://github.com/user-attachments/assets/96ea6450-47c0-474f-8e20-7fe701b1c13b)

Lo malo de este escaneo completo, es que si lo lanzamos sobre un objetivo real, van a llegar muchas peticiones al servidor. 
No se va a sobrecargar  o provocar un posible ataque DoS, si no  que esta cantidad de peticiones sera registrada por los sistemas de protección de la infraestructura a la que estamos haciendo el escaneo y seguramente nos pillen. 

---

### Plantillas

Así que otra forma de hacer escaneos, es eligiendo las templetes (plantillas) que queremos usar. 
Esto se hace con el parámetro -t pasandole las plantillas que queremos ejecutar. 
En este ejemplo especifico que solo use las plantillas relacionadas con los CVE.

```bash
nuclei -u http://192.168.1.150 -t cves/ -o metasploitable_3.txt
```

![image](https://github.com/user-attachments/assets/3de01128-a211-4a55-a07c-0f9ca35d5d23)

En este escaneo solo ha escaneado un solo CVE: [ CVE-2012-1823](https://www.incibe.es/incibe-cert/alerta-temprana/vulnerabilidades/cve-2012-1823)

Ahora voy a realizar más escaneos pequeños: 
**exposures** buscara información sobre archivos sensibles, paneles de administración, sobre directorios, etc expuestos 

```bash
nuclei -u http://192.168.1.150 -t nuclei-templates/http/exposures/ 
```

![image](https://github.com/user-attachments/assets/4c7ff42d-b4a9-4f0c-ad9f-dd95cf96b163)

**technologies** detecta e identifica tecnologías específicas que están presentan en el servidor web

```bash
nuclei -u http://192.168.1.150 -t nuclei-templates/http/technologies/  
````

![image](https://github.com/user-attachments/assets/1dc7af37-3eac-4342-9642-e0676efbdabb)

**javascript** obtiene información sobre todas las vulnerabilidades relacionadas con **javascript**.

```bash
nuclei -u http://192.168.1.150 -t javascript/ -p ../nuclei/escaneos/metasploitable_4.txt 
```

![image](https://github.com/user-attachments/assets/0713cdf6-8d72-4827-9cd6-4ebf9bbcabb2)

↓

![image](https://github.com/user-attachments/assets/f8b34f48-4e64-47fc-9279-84e41685f9b8)

---

### Comparación con nmap

Con **nmap** ejecutaré el comando:

```bash
nmap -p- -sV –script=http-vuln* 192.168.1.150 
```

Lo que hace básicamente es escanear todos los puertos, detectando las versiones de los servicios y ejecutando scripts que detectan vulnerabilidades específicas de **http**.

El resultado es el siguiente:

![image](https://github.com/user-attachments/assets/623a6a21-953b-4a2b-b180-6179047a5741)

Mientras que con nuclei obtengo menos información:


```bash
nuclei -u http://192.168.1.150 -t network/
```

![image](https://github.com/user-attachments/assets/4cba5b60-bb96-4cdd-94b3-ffd245978b81)

Otra cosa que se puede hacer con nuclei y de la que hable antes, es que podemos crear nuestras propias plantillas para poder detectar las vulnerabilidades que nosotros queramos. 
Esta por ejemplo muestra si la URL que nosotros le pasemos es o no vulnerable a XSS. 

![image](https://github.com/user-attachments/assets/efc162ac-183a-4b28-b1c7-5118c5c8606f)

**La ejecuto pero al parecer, no detecta nada**

```bash
nuclei -u http://192.168.1.150 -t mitemplate.yaml
```

![image](https://github.com/user-attachments/assets/6821a39f-d8d7-4927-8bad-c9d082c1c933)

---

### Escaneo real 

Como ya dije, nuclei se usa para realizar escaneos y no es bueno hacer escaneos completos a objetivos reales porque nos pueden pillar. 
Pero la cosa es esa, si nos pillan, malo, si no, aquí no ha pasado nada.

Mi objetivo será https://pramita.co.id  la cual es una página de  Indonesia que tiene una gran cantidad de vulnerabilidades. 
Antes de hacer el escaneo,  inicio una VPN, para más protección.

![image](https://github.com/user-attachments/assets/441bfabd-fec1-46d4-acdd-959eba545b08)

El primer escaneo que hago será el “básico” es decir, sin seleccionar x templates, el que hace por defecto nuclei.

```bash
nuclei -u https://pramita.co.id/id -o ../nuclei/escaneos/pramita1.txt
```

![5 1](https://github.com/user-attachments/assets/784fe452-8327-4610-b51e-0114c4cf78aa)

La información que ha mostrado este escaneo es que se ha detectado el **puerto 3306 abierto**, usando la **versión 8.0.37 de mysql** además de que usan la contraseña nativa de mysql para acceder.

El **puerto 22** también está abierto y está instalada la **versión OpenSSH 8.2p1.** 
El método de autenticación es con clave pública y usan el algoritmo HMAC SHA1 el cual puede ser inseguro según la configuración que tengan. 

El **puerto 443** obviamente también está abierto y ha encontrado la siguiente información: 

- Usan TLS 1.2 y 1.3
- No tienen HSTS
- CSP faltante.
  -  CSP ayuda a prevenir ataques de XSS
-  No tienen una política de permisos
-  No limpian los datos almacenados en el navegador

Además de que tenemos información de su dominio:

- El dominio se registro el 27 de Octubre de 2003
- Sus DNS son
  - ns1.excellent.co.id
  - ns2.excellent.co.id
- No está configurado DNSSEC lo cual permite ataques de suplantación de DNS.

El siguiente escaneo va a ser sobre las **exposures**:

```bash
nuclei -u http://pramita.co.id/id -t exposures -o ../nuclei/escaneos/pramita2.txt
```

![5 2](https://github.com/user-attachments/assets/58b91a86-2aa9-49e8-8c29-f749eb9dc999)

Este escaneo a revelado un endpoint de Azure. 
Esto no es necesariamente un problema a nivel de acceder a Azure o no, sino que ahora sabemos que Pramita está asociado con Azure AD, por lo que es información útil para un atacante para ataques de phishing o fuerza bruta. 

El siguiente escaneo es sobre las tecnologías que usa este dominio:

```bash
nuclei -u http://pramita.co.id/id -t technologies/ -o ../nuclei/escaneos/pramita3.txt
```

![5 3](https://github.com/user-attachments/assets/84bbbcc9-b3c0-48a9-b6ca-ff7b0ac1b4a2)

La información que arroja este escaneo es la siguiente:

- Tienen un WAF el cual es un firewall de aplicaciones web
- Tienen varias librerías para mejorar la estética del sitio
  - Usan Lightbox la cual es una librería de Javascript usada para mostrar imágenes y contenido multimedia
  - Font Awesome - Biblioteca de iconos y fuentes para mejorar la estética del sitio
  - Animate.css – Biblioteca css para implementar animaciones
  - Bootstrap – Framework de CSS y Javascript
- El sitio tiene videos de youtube incrustados

















