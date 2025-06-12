<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Instalación](#instalación)
 - [Realizar escaneo](#realizar-escaneo)

</details>

---

## Introducción

RapidScan es una herramienta de escaneo automatizado para aplicaciones web, que integra más de 80 herramientas de seguridad como:

- Nmap
- wafw00f
- nikto
- theHarvester
- whatweb
- dnsrecon

Su objetivo es realizar **reconocimiento y detección de vulnerabilidades** en sitios web de forma rápida.

- Automatiza el escaneo usando múltiples herramientas en una sola ejecución.
- Detecta puertos abiertos, cabeceras HTTP, WAFs, CMS, tecnologías web, servicios, subdominios, y vulnerabilidades conocidas
- Genera informes en pantalla y en archivos (rs.dbg.<IP>.<fecha>).

---

### Instalación y preparación

Su instalación es muy sencilla, tan solo hemos de clonar el repositorio de github en nuestra máquina: 

```bash
git clone https://github.com/skavngr/rapidscan.git 
cd rapidscan
```

![1 1](https://github.com/user-attachments/assets/5d078531-72b0-416f-b395-96650b9041fc)

Y darle permisos de ejecución al script de **rapidscan.py**

```bash
chmod +x rapidscan.py 
```

![1 2](https://github.com/user-attachments/assets/8ca7b207-3ae8-4649-b0f2-b04809238213)

Si lo ejecuto directamente asi, me saldrá una pantalla con información sobre la herramienta:

![1 3](https://github.com/user-attachments/assets/ac9a907a-382f-4d05-8471-4cc3a77271ce)

---

### Metaspoitable

En la pantalla se nos dan ejemplos de como usar el script, de que podemos parar los escaneos haciendo Ctrl+C, la cantidad de tiempo que dura cada escaneo y el tipo de vulnerabilidades que se pueden obtener y que significa cada una.


En este caso, voy a lanzar la herramienta contra una máquina con metaspoitable y otra con DVWA. 
Primero la metaspoitable: 

![2 1](https://github.com/user-attachments/assets/aa539a0c-0154-4d45-8dcc-8ca5f8cdd604)

Al lanzarla se van realizando diferentes escaneos, que tardaran mas o menos tiempo, en los cuales se nos da información sobre el resultado del escaneo, si se ha completado, si no, si ha sacado alguna vulnerabilidad etc: 

![2 3](https://github.com/user-attachments/assets/03b87ba3-c7c6-45dc-a603-bd6c7999cb20)


#### Análisis de la información

Paso el archivo que se ha generado a txt y al revisarlo se distinguen las siguientes vulnerabilidades: 

**Cabeceras de Seguridad HTTP Ausentes**

- X-Frame-Options no presente
  - Permite ataques de Clickjacking
- X-Content-Type-Options no presente
  - Puede permitir que el navegador interprete tipos MIME incorrectamente (MIME-sniffing).
- X-XSS-Protection aparentemente ausente
  - Podría permitir ejecución de scripts maliciosos si hay una vulnerabilidad XSS.
 
**Servidor y Tecnología Obsoleta (Nikto)**

- Apache 2.2.8 + PHP 5.2.4 (Ubuntu)
  - Ambas versiones están fuera de soporte, conocidas por múltiples vulnerabilidades (RCE, LFI, etc.).
 
**HTTP TRACE se encuentra habilitado**

- Lo cual habilita ataques de tipo Cross-Site Tracing (XST).

**Vulnerabilidad a Slowloris (Nmap + NSE)**

- El servidor es vulnerable a un ataque DoS tipo Slowloris, al mantener muchas conexiones abiertas sin cerrarlas.
  - Se confirma la vulnerabilidad ya que se lanzó un ataque exitoso con 1001 conexiones durante 2min 22s.
 
**Puertos y Servicios Abiertos (Nmap Full TCP)**

- El host tiene numerosos servicios abiertos, algunos peligrosos si no están protegidos:
  - **FTP (21)** - sin información de seguridad adicional, podría permitir acceso anónimo.
  - **Telnet (23)** – servicio inseguro (sin cifrado).
  - **SMTP (25)** – podría ser explotado para spam o spoofing si mal configurado.
  - **MySQL (3306), PostgreSQL (5432)** – verificar si requieren autenticación fuerte.
  - **VNC (5900), X11 (6000)** – potencial para acceso remoto o captura de sesión.
  - **AJP (8009)** – Apache JServ Protocol, relacionado con vulnerabilidad Ghostcat (CVE-2020-1938).
 












