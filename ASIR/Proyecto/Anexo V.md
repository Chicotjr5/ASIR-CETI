## T-POT 

En la documentación, explico que es Kibana y cuáles son los principales HoneyPots que voy a usar, pero hay uno, que no le uso, pero me parece importante explicarlo, **T-POT** 

Este es el Dashboard más importante, debido a que no se centra en 1 solo honeypot, o en un solo puerto/servicio, no. 
Este **Dashboard** recoge información sobre TODOS los honeypots

<img width="134" height="69" alt="image" src="https://github.com/user-attachments/assets/5274563b-10a6-42d3-81ea-1b68dab9fc0f" />

Como es el más importante, he realizado algunos ataques de prueba (fuerza bruta y ddos) para ver qué datos ha recogido. 

<img width="655" height="275" alt="image" src="https://github.com/user-attachments/assets/94e1357a-f1c3-4687-9fcc-d9a80890f825" />

↓

<img width="662" height="238" alt="image" src="https://github.com/user-attachments/assets/d43e032f-d104-4005-9873-61df7df3f929" />

↓

<img width="719" height="287" alt="image" src="https://github.com/user-attachments/assets/e6e6c2e0-fc49-4bf9-bf4e-ff5b405f0a31" />

Lo primero que se ve es un Top-10 con los honeypots que más ataques han recibido, junto con el número de ataques/eventos recibidos.

<img width="776" height="173" alt="image" src="https://github.com/user-attachments/assets/606a677e-bdf8-4e9a-a829-31330792bfe4" />

Proseguimos y veo un gráfico de barras, en el cual se nos muestran los honeypots atacados y el número de ataques recibidos. 

Algunos de los gráficos son repetitivos, porque nos muestran información que ya sabemos, pero de otra forma.

<img width="627" height="343" alt="image" src="https://github.com/user-attachments/assets/35cceb11-2816-4940-b92f-f763de19e33f" />

El siguiente gráfico es sobre el nº de ataques recibidos y el nº de IP implicadas en el ataque.

<img width="607" height="327" alt="image" src="https://github.com/user-attachments/assets/4391b037-1080-4eb3-9563-9a4e0cbfeabe" />

También hay un pequeño mapa, en el cual se nos muestran desde donde se han realizado los ataques al HoneyPot.

<img width="690" height="383" alt="image" src="https://github.com/user-attachments/assets/7cd4272e-a283-490b-9e2f-17dfa6209c1e" />

Paso a la siguiente parte y ahora vemos un histograma en el que se nos muestran los puertos atacados, el nº de ataques y el día en el que han sido atacados. 

<img width="727" height="396" alt="image" src="https://github.com/user-attachments/assets/489f3d6e-6dca-410b-8aed-7235de99a4d5" />

El siguiente es otro histograma similar al anterior, pero en vez de mostrarnos los puertos atacados, nos muestra los honeypots atacados. 

<img width="669" height="359" alt="image" src="https://github.com/user-attachments/assets/561ea693-6592-47ea-b185-3a290eb2ce90" />

El siguiente gráfico es otro sobre los honeypots, pero esta vez está distribuido en forma de Dónut (a esto me refería con lo de información repetida).

<img width="484" height="372" alt="image" src="https://github.com/user-attachments/assets/6feed9c0-cebf-48e6-a0ea-f3468d1bf98d" />

Este gráfico es algo más interesante, debido a que nos muestra desde que sistemas operativos se han lanzado los ataques.

Podemos observar, que casi todos se han realizado desde Linux, mientras que unos pocos restantes lo han hecho desde Windows. 

Esto que vemos, es la huella digital.

<img width="332" height="245" alt="image" src="https://github.com/user-attachments/assets/41f61953-ce53-4dea-8d77-054bfe272dd7" />

Y pasamos a la parte importante 
Aquí podemos ver los usuarios y contraseñas que se han usado para intentar acceder al equipo. 
Esto suele salir cuando realizamos un ataque de fuerza bruta.

<img width="857" height="185" alt="image" src="https://github.com/user-attachments/assets/71765eb3-ffc6-421c-bdfb-7e62677c8875" />

De hecho, si selecciono un nombre de usuario, podremos ver las contraseñas que se han intentado usar con ese usuario. 

<img width="790" height="142" alt="image" src="https://github.com/user-attachments/assets/58fae93d-289e-4894-8ff5-3adebae8fe7b" />

Lo único que **T-POT** no registra son los comandos que ejecuta el atacante una vez está dentro del sistema, eso lo veremos con **Cowrie**.

En este panel, se puede ver las IPs y la cantidad de ataques que ha realizado cada una. 

<img width="465" height="271" alt="image" src="https://github.com/user-attachments/assets/97434738-03e2-4de1-b097-3c868814f26d" />

Los 2 últimos apartados son sobre las vulnerabilidades explotadas, proporcionándonos un enlace, que nos envía a una página de CVE, donde se nos explica la vulnerabilidad y el cómo han actuado.

<img width="789" height="215" alt="image" src="https://github.com/user-attachments/assets/ffe1af8e-75e4-4173-83e0-93f13d1dcaee" />

Como ya he dicho, T-POT es el Dashboard que más información nos da en términos generales, aunque no he acabado usándolo en el proyecto, pero, aun así, me parecía importante enseñarlo 



























