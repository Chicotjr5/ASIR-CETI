<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Visor de eventos](#visor-de-eventos)
 - [ELK](#elk)
</details>

---

## Introducción

En esta práctica se va a hablar sobre los logs en Windows, el tipo de información que registran, desde donde se pueden ver y como se pueden mandar a ELK.

---

### Visor de eventos

Para poder verlos tenemos el Visor de Eventos el cual es una aplicación del sistema que recoge todo tipo de eventos y nos da información sobre ellos.

Dentro del visor tenemos 2 clasificaciones generales: 

- Registros de Windows
  - Eventos relacionados con el sistema operativo
  - Sistema
  - Seguridad
  - Instalación
  - Aplicación
  - Eventos reenviados
 
- Registros de aplicaciones
  - Registros relacionados con x aplicaciones instaladas en el equipo
 
![1 1](https://github.com/user-attachments/assets/85affa9d-cdad-4918-988b-ab3f09fc45b8)

Al acceder a un tipo de logs, veremos lo siguiente:

![1 2](https://github.com/user-attachments/assets/aa9f6f9a-f90e-4efb-aa85-caf56b2e31db)

Una pantalla donde se vislumbran los logs que se han ido generando.

![image](https://github.com/user-attachments/assets/31b54190-6354-486d-a05b-a618e7351060)

Una pequeña descripción del log

![image](https://github.com/user-attachments/assets/10bf431f-194b-4181-9f75-b443d7498b52)

Se puede ver información del log en formato XML

![image](https://github.com/user-attachments/assets/bb7fa8a1-cdf0-4942-bf1c-c441c97fa065)

Y por último, tenemos un panel donde se pueden realizar diferentes acciones como: 

- Abrir la ruta del log en el sistema
- Ver sus propiedades
- Guardar los logs en otra ubicación

![image](https://github.com/user-attachments/assets/884e7c7b-5a22-46b8-bec3-e43bda6595ed)

Si vamos a las **propiedades** de un archivo se puede observar más información sobre el mismo.

![1 3](https://github.com/user-attachments/assets/44dcd051-e3b0-48f8-8566-b698590bd597)

Dentro de estas propiedades se encuentra la ruta del registro, así que accedo a ella: 

![1 4](https://github.com/user-attachments/assets/7c30fb1d-513f-410f-ae30-73a66cee86fb)

Todos los Logs del sistema se encuentran en la ruta: **C:\Windows\System32\winevt\Logs**

Pero no se crea un Log por cada evento, si no que se crea un log por cada clasificación que hay. 

![image](https://github.com/user-attachments/assets/c478d43a-ab4f-4fbd-8716-78ced9dc4518)

---

### ELK

Los logs de Windows se pueden monitorear a través de ELK. Con las versiones actuales he tenido problemas, así que obtuve una versión anterior que se encontraba en el siguiente repositorio de [github](https://github.com/justmeandopensoruce/elk )

```bash
git clone https://github.com/justmeandopensoruce/elk 
```

![image](https://github.com/user-attachments/assets/34f3fa35-0cee-4ba3-b343-98d983318384)

Dentro del directorio descargado entro al directorio Docker donde hay varios archivos de configuración, cada uno de una versión de ELK diferente. 
Yo elijo usar la versión 7.1.1 así que sustituyo el fichero de configuración por el de esta versión.

![image](https://github.com/user-attachments/assets/8a824eb8-9df4-47a2-b25d-e3cf85edaf86)

Ahora toca instalar Docker en el equipo.

```bash
apt install -y docker.io 
apt install Docker-compose 
```

![image](https://github.com/user-attachments/assets/b3aa1fc0-2068-4eba-afa0-e80b27f4d58d)

↓

![image](https://github.com/user-attachments/assets/0042cf32-cfc8-423b-9575-919adf281532)

Lo habilito e inicio:

```bash
systemctl enable Docker –now 
systemctl start docker 
```

![image](https://github.com/user-attachments/assets/363d7a0a-dfed-4efa-92fe-1f1a4d6dd57b)

↓

![image](https://github.com/user-attachments/assets/df7ef1f4-fcfe-4945-afd3-de7778e03e18)

Inicio los contenedores de Docker en 2º plano: 

```bash
docker-compose up d
```

![image](https://github.com/user-attachments/assets/fe660f79-1f35-478b-b761-fcfe8aec5d62)

Para que Docker y ELK se ejecuten sin problemas modifico el parámetro vm.max_map_count. 
Este parámetro define el número máximo de áreas de memoria mapeadas por proceso. 

Como ELK necesita muchas asignaciones de memoria, aumento el número de asignaciones de memoria, puesto que por defecto son **65530**.

```bash
sysctl -w vm.max_map_count=262144 
```

![image](https://github.com/user-attachments/assets/7975036a-38f5-4ba9-848d-8a0035dc072d)

Compruebo que Docker se esté ejecutando 

```bash
docker-compose ps
```

![image](https://github.com/user-attachments/assets/f4f6a976-4b5f-4e9d-9533-c76a903ce1d4)

Para que Windows le envíe los logs a Kibana, hay que instalar Winlogbeat el cual es un agente que permite recopilar y enviar los logs de Windows a ELK. 
Como mi versión de Kibana es algo antigua (del 2019) necesito una versión de Winlogbeat en específico, la 7.3.0, así que la descargo desde el siguiente [enlace](https://www.elastic.co/downloads/past-releases/winlogbeat-7-3-0)

Una vez descargado, instalo el agente con los siguientes comandos:

```bash
Set-ExecutionPolicy Unrestrictes -Scpe Porcess -Force 
# Este comando permite ejecutar cualquier script de Powershell sin restricciones, si no 
lo ejecuto, no se instala winlogbeat
.\install-service-winlogbeat.ps1 
Start-Service winlogbeat 
```

![image](https://github.com/user-attachments/assets/23c90bfc-1b7f-4582-a107-61a11eb9822c)


Ya con el agente instalado, hay que configurarlo. Se editará el archivo **winlogbeat.yml** 
Se habilitarán los dashboards y el host al que debe mandar los logs, que será la IP del equipo Kali Linux a través del puerto 5601

![image](https://github.com/user-attachments/assets/f86215ce-ecc3-41f4-834d-869216b05541)

Además de que configurar el destino al que se mandarán esos logs que es la IP de Kali Linux junto con el puerto **9200** 

![image](https://github.com/user-attachments/assets/1e94d3fc-a0d9-4e7f-85a5-456730711c96)

Guardo los cambios y acedo a Kibana desde un navegador web con la dirección **localhost:5601**. 

![image](https://github.com/user-attachments/assets/be779c82-901b-4af9-8c36-a52e0fa37885)

Voy a los Dashboards y veo el dashboard de **winlogbeat** 

![image](https://github.com/user-attachments/assets/f61072e7-b6e9-4419-9342-a072efa9d19d)

Al entrar se pueden observar todos los logs que está enviando Windows a Kibana:

![image](https://github.com/user-attachments/assets/d4e93abf-b535-48f6-bab7-b1ec1461901c)

Además de que se pueden realizar diferentes búsquedas, como por ejemplo la siguiente, donde se ven los logs que tengan el **id 4624** que corresponden a los inicios de sesión 

![image](https://github.com/user-attachments/assets/e5d8145d-228f-44f0-b113-3d25927e68f6)










