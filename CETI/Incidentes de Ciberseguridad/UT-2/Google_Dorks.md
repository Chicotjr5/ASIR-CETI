<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Realizar búsquedas](#realizar-búsquedas)
</details>

---

## Introducción

Los Google Dorks consiste en la realización de búsquedas avanzadas usando operadores especiales de Google. 
Estas búsquedas permiten encontrar información de todo tipo en Internet, localizando bases de datos, páginas de login, logs, dispositivos IoT etc.

---

### Realizar búsquedas

intext:password filetype:log - busca archivos de registro (.log) que contienen términos relacionados con contraseñas. 
Me he encontrado con el siguiente [archivo](https://kc.200888net.com/Operate/xiaochengxu/source/runtime/log/202405/05_sql.log)

![image](https://github.com/user-attachments/assets/e48dea49-ec58-4f7b-935b-0215f28e4b7b)

**intitle:"Index of" htpasswd** 
Busca directorios públicos en servidores web que contengan archivos denominados .htpasswd

Con este dork he encontrado la siguiente [url](https://acaciaconsulting.ca/private/phpmyadmin/) la cual es un directorio que contiene los siguientes archivos:

![image](https://github.com/user-attachments/assets/4fd2b592-6772-4088-b404-6c800adcc280)

El contenido de esos archivos son los siguientes: 

![image](https://github.com/user-attachments/assets/bcac5c5a-54d7-4f05-9a3c-73a90ed43cdd)

↓

![image](https://github.com/user-attachments/assets/63e6163e-dfe0-473d-844a-8c7fe4e4e7cf)

Si salgo del directorio, me encuentro con otros 2 archivos: 

![image](https://github.com/user-attachments/assets/ae5492cc-c879-4a59-beaa-63bc72cd85c3)

↓

![image](https://github.com/user-attachments/assets/26d88ea1-d010-420c-bd0f-7fc1910991bf)

↓

![image](https://github.com/user-attachments/assets/9d8fa8ac-abdb-4e03-a108-2e03a69f0ea4)

Si voy para atrás, llego a la página: https://acacia.consulting.ca

![image](https://github.com/user-attachments/assets/0190e723-2eb2-46e7-9d95-250c1fa14e7b)

---

**intitle:"index of" "/usernames"** 
Busco directorios indexados que contengan la palabra username.

Este enlace: http://www1.udel.edu/CIS/181h/pconrad/06S/work/labs/lab07/
Contiene un directorio con un archivo llamado **usernames.txt** perteneciente al domino de la **Universidad de Delaware**:

![image](https://github.com/user-attachments/assets/e9c71c59-8119-4dc5-a17b-2786aa583763)

El contenido de este archivo no es lo que más me llama la atención, si no que se puede retroceder y acceder a más directorios, hasta llegar a la que parece ser la raíz: 

![image](https://github.com/user-attachments/assets/af19b187-6590-46fa-86c8-8a70b35a82ab)

La mayoría de los archivos/directorios que se encuentran tienen son bastante antiguos, teniendo algunos casi 20 años. 
Pero el directorio con información más reciente es el 106h así que accedo a él para ver la información que contiene.

![image](https://github.com/user-attachments/assets/2545e52d-55a8-4ead-ac12-3879accc42e6)

Contiene 3 archivos siendo el más actual el **20F** 
Accedo a él y se ve la siguiente página:

![image](https://github.com/user-attachments/assets/6b655096-003c-4650-98ba-67e1a49c4abe)

Esta página está relacionada con el curso CISC106 Honors: General Computer Science de la Universidad de Delaware para el otoño de 2020. Ofrece recursos para aprender los fundamentos de la programación y la ciencia computacional, incluyendo programación con bucles, recursión, estructuras de datos, y algoritmos básicos. 

Nada que me interese mucho, quitando que tenemos varios nombres y correos: 

![image](https://github.com/user-attachments/assets/62ffd2f9-a739-457d-b63c-758cb1a114b3)

Pero estas páginas contienen información personal de profesores de esta universidad y si veo otras páginas, me encuentro con información como la siguiente: 

![image](https://github.com/user-attachments/assets/84f1608b-4845-4a15-a5d0-2c863158cb71)

Nombre, dirección de su oficina, horarios en los que esta, correo

https://www1.udel.edu/CIS/

---

**intitle:"index of" "tomcat-users.xml**

Proporciona el nombre de usuario, la contraseña y la contraseña del servidor web Apache Tomcat y detalles de roles.

He encontrado el siguiente sitio:

http://103.78.9.106/tools/apache-tomcat-8.5.50/conf/

![image](https://github.com/user-attachments/assets/12c808f6-4982-4734-917e-28913754ad05)

Este directorio contiene la configuración del **servidor apache-tomcat**. 
Si salgo de este directorio y voy al directorio raíz se puede observar el archivo de configuración de Apache además de un fichero **content.xml** 

![image](https://github.com/user-attachments/assets/96ef1fbd-636c-4720-ba7a-fb3f1c22fa27)

Este archivo de configuración define recursos JNDI en un archivo **<Context>** para una aplicación Java que utiliza conexiones a bases de datos MySQL. 
Cada recurso especifica un DataSource con parámetros como: 

- **Nombre del recurso**
  -  jdbc/one_lis_dev, jdbc/nasional.
- **Credenciales**
  - Nombres de usuario y contraseñas.
- **Conexión**
  -  URLs como jdbc:mysql://localhost:3306/one.
- **Optimización**
  -  Parámetros para gestionar conexiones como maxActive, maxIdle, y removeAbandoned. 

Y el contenido del archivo **000.defaul.conf**:

![image](https://github.com/user-attachments/assets/8017f730-9cc1-4254-b391-b043a2ce99c1)

Si intento ir para atrás, me sale una página de **Login de Pramita Lab**

![image](https://github.com/user-attachments/assets/723ecbfc-a774-4773-aa9c-0475e6eca2f7)

Pramita Lab es una red de laboratorios médicos fundada en Indonesia, especializada en análisis clínicos, diagnósticos, y servicios relacionados con la salud.

Si la IP 103.78.9.106 (que salía antes en la url) la busco en shodan me saldrá información sobre la misma: https://www.shodan.io/host/103.78.9.106 

![image](https://github.com/user-attachments/assets/adeabbc0-ec95-4f74-a03e-f0e4653a9fc2)

↓

![image](https://github.com/user-attachments/assets/f7da6e79-0ea2-430e-9236-530a4e164709)

↓

![image](https://github.com/user-attachments/assets/d3518840-e444-4ca8-bae7-9edae03ab7ef)

---

**intitle:"index of" "passwords" gov**

Busca directorios de acceso público en sitios web gubernamentales que contengan archivos o listados con la palabra "contraseñas"

He encontrado la URL - https://www.openaccessgovernment.org/wpadmin/js/?SA – en la cual estoy dentro del directorio wp-admin/js del dominio 

![image](https://github.com/user-attachments/assets/77fe24dc-d75d-4bef-87f5-6f81e68809b5)

Este directorio guarda los scripts que contienen funciones específicas para mejorar la funcionalidad y la experiencia del usuario en el panel de administración.

Por supuesto es una página en Wordpress y también deja acceder a **wp-login** 



