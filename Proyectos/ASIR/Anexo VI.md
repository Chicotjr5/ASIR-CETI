## ¿Qué es UFW?

**T-POT** tiene una gran cantidad de puertos abiertos (he llegado a escanear más de 800), así que se notaría muchísimo que es un HoneyPot o algún equipo de ese estilo, por lo que los atacantes no se fijarían en él. 

Si reducimos el nº de puertos abiertos, tendremos un entorno algo más realista. 

Por lo que primero voy a cerrar algunos puertos usando la herramienta UFW. 

**UFW** es una interfaz de gestión de firewall simplificada que se usa para simplificar el proceso de configuración de un firewall que nos ofrece una forma de configuración muy sencilla, permitiéndonos cerrar puertos, abrirlos, crear reglas de entrada y salida etc con 1 simple comando. 

Es **similar a iptables**, aunque esta puede resultar algo más difícil de aprender a usar. 
Una vez introducida la herramienta, procedo a instalarla y enseñar su funcionamiento.

---

## Cerrar puertos

Para poder instalar UFW ejecuto el comando 

```bash
sudo apt -y install UFW
```

<img width="792" height="39" alt="image" src="https://github.com/user-attachments/assets/503b0941-1bdf-4c05-81cd-210ba025276a" />

Una vez instalado, hay que hacer 3 cosas: 

**Activar UFW**

```bash
ufw enable
```

**Iniciar el servicio UFW **

```bash
systemctl start ufw 
```

**Habilitar el registro de UFW **

```bash
ufw logging on
```

<img width="831" height="216" alt="image" src="https://github.com/user-attachments/assets/b6ce63df-1a97-49a4-b80a-045045047807" />

Una vez habilitado realizaré la configuración por defecto de UFW, la cual es denegar todo el tráfico entrante y permitir todo el saliente:

```bash
ufw default deny incoming   Denegar tráfico entrante 
ufw default allow outgoing   Permitir tráfico saliente
```

<img width="808" height="193" alt="image" src="https://github.com/user-attachments/assets/1ce100fd-ef09-4883-8d99-59d837e90574" />

---

## Escaneo de puertos 

Muy bien, ya tenemos la configuración por defecto, ya solo con esto, se han cerrado más de 802 puertos y para comprobarlo, voy a realizar un escaneo de los puertos abiertos de T-POT

En Kali Linux usaré nmap, ejecutando el siguiente comando: 

```bash
nmap -V -sV
```

Este comando da información sobre todos los puertos abiertos de un equipo, mostrando el servicio afectado y la versión de este. 
Ahora voy a mostrar un antes y después del escaneo. 

<img width="717" height="253" alt="image" src="https://github.com/user-attachments/assets/b3574dd7-d40b-40a6-90cd-571ce9b9d2c0" />

↓

<img width="562" height="582" alt="image" src="https://github.com/user-attachments/assets/6def37c8-2c62-442f-8f8a-fb9d5d33d88c" />

---

## Solucionar problemas

Todo bien hasta aquí, pero con esta configuración tambien se han cerrado los puertos que usaba para acceder a la administración de **T-POT (64294 y 64297)** así que ya no puedo acceder. 

<img width="718" height="311" alt="image" src="https://github.com/user-attachments/assets/32f698c1-8807-4d77-9308-529799e13ede" />

Pero arreglar este problema es algo muy sencillo, tan solo tengo que permitir el tráfico a través de esos puertos y ya dejaría volver a conectarnos. 
Y ya me puedo conectar de nuevo. 

<img width="760" height="169" alt="image" src="https://github.com/user-attachments/assets/937998d3-cde2-4069-bda3-66fb9b40b329" />

↓

<img width="699" height="458" alt="image" src="https://github.com/user-attachments/assets/25d78ae2-8937-4e97-9e3a-f25ec81ed994" />

---

## Ver reglas

Para terminar, con el comando 

```bash
ufw status
````

se pueden ver las reglas que vamos añadiendo 

<img width="506" height="220" alt="image" src="https://github.com/user-attachments/assets/03d2b162-5b87-44b3-a78a-dfd7cafbc177" />















