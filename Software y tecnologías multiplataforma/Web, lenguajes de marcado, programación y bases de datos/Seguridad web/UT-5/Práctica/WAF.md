<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Crear página web](#crear-página-web)
  - [Instalar apache](#instalar-apache)
- [WAF](#waf)
  - [Instalación](#instalación)
  - [Configuración](#configuración)
  - [Instalación de reglas](#instalación-de-reglas)
  - [Comprobar funcionamiento](#comprobar-funcionamiento)
  - [¿Qué otras reglas se podrían haber implementado?](#qué-otras-reglas-se-podrían-haber-implementado)

</details>

## Introducción

En esta práctica se va a ver que es un WAF y se va a realziar un caso práctico en el cual se instala y configura uno para proteger un sitio web.

### Crear página web

#### Instalar apache

Lo primero que hay que hacer en esta práctica es la creación de una página web.
Para ello instalaré y configuraré apache2.

```bash
apt install apache2
```

![1 1](https://github.com/user-attachments/assets/a1886cae-0203-4b6f-b14d-634f0a32ee7b)


Ya solo con la instalación hecha, ya tengo una página índice creada:

![1 2](https://github.com/user-attachments/assets/5aaa588c-eb04-4d5a-956c-a18a6c43a719)


Pero voy a personalizarlo algo más:

Edito el fichero **/etc/apache2/apache2.conf** y al final de este añado las siguientes líneas:

```bashListen 80
DocumentRoot “/var/www”
DirectoryIndex index.htm index2.htm index.php
```

![1 3](https://github.com/user-attachments/assets/3e080400-05a6-4c36-a2fb-af2b69063d0b)


Voy al directorio **/var/www/** y creo un archivo para poder verlo en el servidor web:

![1 4](https://github.com/user-attachments/assets/b4320b99-4340-4c74-a1d3-08f93178d2a3)



Si voy al navegador y escribo – http://192.168.1.142/prueba.html podré ver el archivo.

![1 5](https://github.com/user-attachments/assets/33fcf953-b4db-4554-a15f-85b909bd308c)


---

### WAF

#### Instalación

El WAF que voy a usar es **ModSecurity** el cual está diseñado específicamente para apache. 
Para instalarlo:

```bash
apt install libapache2-mod-securtity2
```

![2 1](https://github.com/user-attachments/assets/3da131e5-6d11-4b42-9b6b-6851a82a3732)


Ya instalado, hay que habilitar su módulo:

```
a2enmod security2
```

![2 2](https://github.com/user-attachments/assets/9a9334dd-c062-4ea8-92bf-711897cf13bb)


Para que se guarde la configuración, reinicio el servidor apache2

```bash
systemctl restart apache2
```

---

#### Configuración

En el archivo **/etc/apache2/mods-enabled/security2.conf** hay que editar la línea **IncludeOptional** y poner la ruta **/etc/modsecurity/.conf** 
Esto hará que Apache incluya todos los archivos **.conf** del directorio **/etc/modsecurity**.

![2 3 la del medio](https://github.com/user-attachments/assets/e1e99e4d-3918-44fc-b7fd-6629abaeae76)


Para que esto funcione, hay que cambiar el nombre del fichero que se encuentra en este directorio, debido a que tiene otro nombre:

```bash
sudo mv /etc/modsecurity/modsecurity.conf-recommended /etc/modsecurity/modsecurity.conf
```

![2 4](https://github.com/user-attachments/assets/3fd1275d-e807-4623-999a-992d64267d63)


Ya con el nombre cambiado hay que editar este fichero. 
En la línea **SecRuleEngine** pondremos el valor **DetectionOnly**:

![2 5](https://github.com/user-attachments/assets/2d29f88a-58d2-443d-b824-e565259b0ec6)


Esta configuración le dice a **ModSecurity** que registre transacciones HTTP, pero no toma ninguna acción cuando se detecta un ataque.

Para que tome acciones sobre un ataque, hay que cambiar el valor a **On**:

![[2.6.png]]![2 6](https://github.com/user-attachments/assets/9cc41042-3860-4a29-b9df-dae841a94537)

Aún así, la configuración predeterminada es incorrecta, así que hay que cambiarla.
El valor **SecAudiotLogParts** está por defecto:

![2 7](https://github.com/user-attachments/assets/26e80d38-54c8-4737-864d-54c78c3eac97)


Así es como hay que configurarlo:

![2 8](https://github.com/user-attachments/assets/5268237a-cbdb-44aa-b65f-6d2210710849)


Para que se actualicen estas configuraciones hay que reiniciar el servicio **apache2**.

```bash
systemctl apache2 restart
```

---

#### Instalación de reglas

Para que **ModSecurity** funcione, hay que crear una serie de reglas de detección. 
En mi caso voy a instalar las reglas OWASP que contiene reglas para detener ataques relacionados con el OWASP como por ejemplo:

- Inyección
	- SQL
	- XSS
- Configuraciones por defecto
- Broken Access Control

**Descarga:**

```bash
wget https://github.com/coreruleset/coreruleset/archive/v3.3.0.tar.gz
```

![3 1](https://github.com/user-attachments/assets/5f5a7961-79bd-4091-9029-5cb97130defa)


Extracción del archivo:

```bash
tar xvf v3.3.0.tar.gz
```

![3 2](https://github.com/user-attachments/assets/00fd359d-b659-416c-80e0-63f54da1e70d)


Ya con todo descargado, creamos un directorio para guardar estas reglas:

```bash
mkdir /etc/apache2/modsecurity-crs
```

![3 3](https://github.com/user-attachments/assets/5415328d-9d64-4d8c-bb37-e5993ae875ee)


Y movemos el directorio extraído al directorio creado:
```bash
mv coreruleset-3.3.0/ /etc/apache2/modsecurity-crs
```

![3 4](https://github.com/user-attachments/assets/76de3fc9-2b46-4414-95f9-b1a97ab315ef)


Dentro de este directorio vemos los siguientes archivos:

![3 5](https://github.com/user-attachments/assets/c8ac8613-27e1-415a-af7b-de44ad1a2ba0)


Al archivo **crs-setup.conf.example** le cambiamos el nombre, quitándole el **example**:

```bash
mv crs-setup.conf.ejemplo crs-setup.conf
```

![3 6](https://github.com/user-attachments/assets/16d0309f-e488-4240-a81a-bc4923e24221)


Y lo edito, cambiando el último valor **IncludeOptional**.

![3 7](https://github.com/user-attachments/assets/f30ba614-6bcd-49b2-8262-f6d4d5439dea)


↓

![3 8](https://github.com/user-attachments/assets/ef681b72-a57c-482f-8f6d-ceeb29b119ea)


Esto hará que **ModSecurity** use las últimas reglas de OWASP. 
Compruebo que la sintaxis de los archivos de configuración es correcta:

```bash
apache2ctl -t
```

![3 9](https://github.com/user-attachments/assets/09c3a3cd-6e3c-4d94-8556-d0a11eefc65e)


---

#### Comprobar funcionamiento

Si ahora vuelvo a intentar conectarme al sitio web, ya no me saldrá la página de inicio, porque no tengo permiso para poder acceder a ese recurso::

![5 3](https://github.com/user-attachments/assets/1b1e7b4f-74af-4081-88f8-40489842ac05)


En cambio, si puedo acceder a **prueba.html**:

![5 4](https://github.com/user-attachments/assets/ddf29a87-9e94-467b-8843-9893eb74f2aa)


Además, otra forma de verificar el funcionamiento y existencia del WAF, es lanzado un **nuclei** sobre el sitio web:

```bash
nuceli -u http://192.168.1.142
```

![5 5](https://github.com/user-attachments/assets/8e2c2abd-b3e3-4f99-8923-97e751be256f)


---

#### ¿Qué otras reglas se podrían haber implementado?

Las reglas que yo puse son las del OWASP TOP TEN que protegen mi sitio frente a las 10 amenazas más amenazantes de los servidores web. 
Pero se podrían haber creado otras reglas más específicas:

**Este bloquea ciertos user-agents maliciosos:**

```bash
SecRule REQUEST_HEADERS:User-Agent "@rx (nmap|sqlmap|dirbuster)" \ "id:1001,deny,status:403,msg:'Bloqueado: User-Agent malicioso'"
```

**O esta regla que bloquea métodos HTTP como TRACE u OPTIONS.**

```bash
SecRule REQUEST_METHOD "@streq TRACE" "id:1002,deny,status:405,msg:'Método TRACE bloqueado'"
```

**Esta regla bloquea accesos recuentes de una misma IP:**

```bash
SecRule IP:REQS "@gt 50" "id:2002,deny,status:429,msg:'Demasiadas peticiones en poco tiempo'"
```

**Esta limita los intentos de login en una misma IP:**
```bash
SecRule REQUEST_FILENAME "@streq /login.php" "id:4001,chain,deny,status:403,msg:'Demasiados intentos de login'" SecRule IP:ATTEMPTS "@gt 5"
```


También se podrían haber importado reglas avanzadas ya definidas (como las de OWASP) como:

**Trustwave SpiderLabs Rules**
- Reglas comerciales de ModSecurity que incluyen protección contra nuevas vulnerabilidades y amenazas emergentes.

**Atomic ModSecurity Rules (Atomicorp)**

- Es otro conjunto comercial con reglas constantemente actualizadas contra nuevas técnicas de ataque.
