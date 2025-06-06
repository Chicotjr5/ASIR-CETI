## Índice

- [Introducción](#introducción)
- [Descargar correos y HASH](#descargar-correos-y-hash)
- [Obtener cabecera](#obtener-cabecera)
- [Analizar cabecera](#analizar-cabecera)
- [Consultar IP de salida](#consultar-ip-de-salida)
- [BCL](#bcl)
- [SPF, DKIM, DMARC](#spf-dkim-dmarc)
- [Obtener información con el comando dig](#obtener-información-con-el-comando-dig)
- [Uso de otras herramientas](#uso-de-otras-herramientas)

## Introducción

En esta práctica se van a analizar 2 correos electrónicos, uno que se encontraba en **spam** y otro que fue enviado por **Microsoft**.

![[3.1 2.png]]

![[3.3 3.png]]

---
### Descargar correos y obtener HASH

Para poder descargarlos se hace **click derecho sobre cada correo>Descargar**:

![[3.2 3.png]]

↓

![[3.4 3.png]]

He descargado uno en formato **EML** y otro en formato **MSG**

|                             | EML                                                                          | MSG                                                            |
| --------------------------- | ---------------------------------------------------------------------------- | -------------------------------------------------------------- |
| **Formato**                 | Basado en texto plano                                                        | Formato propietario binario de Microsoft Outlook               |
| **Quien lo usa**            | Thunderbird, Windows mail, etc                                               | Solamente por Outlook                                          |
| **Compatibilidad**          | Es un formato más universal, ya que se puede abrir con todo tipo de editores | Solo es compatible con Outlook o con software específico       |
| **Estructura interna**      | Cabeceras MIME + cuerpo + adjuntos codificados                               | Objeto de Outlook, que incluye metadatos, propiedades MAPI etc |
| **Tamaño**                  | Más ligero que MSG                                                           | Más pesado que EML por su estructura interna                   |

Ya descargados, obtengo su hash:

![[4.0.png]]

---

### Obtener cabecera


Para poder obtener la cabecera de ambos correos, hemos de abrir **Outlook en su versión de PC>hacer doble click sobre el coreo para que se abra en una nueva pestaña>ir a Archivo>Propiedades** y copiar su encabezado:

![[4.1 1.png]]


↓

![[4.2 3.png]]

↓

![[4.3 2.png]]

+

![[4.4 1.png]]

---

### Analizar cabecera

Para poder analizar la cabecera tenemos varias herramientas, una de ellas es https://mha.azurewebsites.net/

![[5.1 1.png]]

+

![[5.3.png]]

De cada mensaje analizare su:

- Message Id 
- From
- To

![[5.2 1.png]]


| Campo      | Valor                                                        |
| ---------- | ------------------------------------------------------------ |
| Message ID | 6c43180a-e536-4265-95e2 f11e233c2997@atl1s07mta3017.xt.local |
| FROM       | sales@magnetforensics.com                                    |
| TO         | marcos.chimat.1@educa.jcyl.es                                |

+

![[5.4.png]]


| Campo      | Valor                                                                                                                                                                              |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Message ID | [0e09ca4c4b4b40b99442205858ed3140 JFZGS42DN5WW25LONFRWC5DJN5XFA3DBORTG64TNFVIHE3 3EFVBEYMSQPRGWSY3SN5ZW6ZTUIZXXE3LTPRDG64TNONHG 65DJMZUWGYLUNFXW47CFPBXVG3LUOA======@microsoft.com |
| FROM       | maccount@microsoft.com                                                                                                                                                             |
| TO         | marcos.chimat.1@educa.jcyl.es                                                                                                                                                      |


Otra herramienta es https://securitytrails.com/ que nos permite ver a quien pertenece el servidor de origen, osease, quien ha mandado el correo: Primero lo pruebo con el correo de **magnetforensics**.

![[6.2 2.png]]

↓

![[6.3 1.png]]

En la página se puede ver los siguientes **registros DNS**:


| Campo        | Explicación                                              | Valor                                                                                                                                                                                                                                                                                                                   |
| ------------ | -------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A records    | Direcciones IPv4                                         | 23.185.0.2                                                                                                                                                                                                                                                                                                              |
| AAAA records | Direcciones IPv6                                         | 2620:12a:8000::2 <br>2620:12a:8001::2                                                                                                                                                                                                                                                                                   |
| MX records   | Servidores de correo usados por el dominio               | mxb-008e7701.gslb.pphosted.com<br>mxa-008e7701.gslb.pphosted.com                                                                                                                                                                                                                                                        |
| NS records   | Servidores que gestionan el dominio DNS                  | mia.ns.cloudflare.com ivan.ns.cloudflare.com                                                                                                                                                                                                                                                                            |
| SOA records  | Informacion sobre la autoridad principal del dominio DNS | ttl: 10000 <br>email: dns.cloudflare.com                                                                                                                                                                                                                                                                                |
| TXT          | Configuraciones SPF, DKIM y verificación de servicios    | v=spf1 include:spf.protection.outlook.com include:servers.mcsv.net include:_spf.arlo.co include:_spf.salesforce.com include:4f42ea.workshop-spf.net ip4:13.71.166.215 ip4:40.85.203.99 ip4:52.156.7.234 ip4:52.138.15.33 ip4:89.233.216.170 ip4:72.138.70.10 ip 4:23.117.193.81 ip4:99.10.226.165 ip4:192.168.2.65 -all |

Con esta información se puede observar que **las direcciones IPv4 e IPv6 pertenecen a Fastly**, un **proveedor de CDN**, proporcionando una mejor seguridad frente a ataques. 
Los **servidores MX** pertenecen a **Proofpoint**, un proveedor de seguridad de correo electrónico, lo cual da una mayor seguridad. 
El **nombre de los servidores** nos dice que **el dominio esta gestionado por Cloudflare**, aportando seguridad. 
El **valor SOA** también nos indica que **Cloudflare es el responsable de las zonas DNS del dominio**.
Y, por último, en **el campo txt** tenemos diferente información, como que **el dominio autoriza a diferentes servicios externos e IPs a enviar correos en su nombre**.

+

Ahora es el turno de **Microsoft.com**

![[6.5 1.png]]

↓

![[6.6 1.png]]

↓

![[6.7.png]]


| Campo                      | Explicación                                                         | Valor                                                                                                                                                                                    |
| -------------------------- | ------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A records                  | Direcciones IPv4                                                    | 40.113.200.201 <br>40.76.4.15 <br>40.112.72.205                                                                                                                                          |
| AAAA records               | Direcciones IPv6                                                    | 2603:1026:3000:28::160                                                                                                                                                                   |
| MX records                 | Servidores de correo usados por el dominio                          | microsoft-com.mail.protection.outlook.com                                                                                                                                                |
| NS records                 | Servidores que gestionan el dominio DNS                             | ns1-204.azure-dns.com <br>ns2-204.azure-dns.net <br>ns3-204.azure-dns.org <br>ns4-204.azure-dns.info                                                                                     |
| SOA records                | Informacion sobre la autoridad principal del dominio DNS            | ttl: 3600 <br>email: azuredns <br>hostmaster.microsoft.com                                                                                                                               |
| TXT                        | Configuraciones SPF, DKIM y verificación de servicios               | v=spf1 include:_spf a.microsoft.com include:_spf b.microsoft.com include:_spf c.microsoft.com include:_spf ssg-a.msft.net include:spf a.hotmail.com include:_spf1 meo.microsoft.com -all |
| CNAME records pointed here | Dominios que tienen un CNAME apuntando a Microsoft                  | luidpreview.office.net <br>mapazure.azurelbs.com <br>mapsmicrosoft.azurelbs.com                                                                                                          |
| MX records pointed here    | Dominios de terceros que usan servidores de correo de Microsoft.com | rivcoca.com <br>longhp.online <br>plc-alliance.net                                                                                                                                       |

Las **IPv4 e IPv6** pertenecen a **Microsoft Corporation, por lo que son propias y no de 3º**, como en el caso anterior. 
El **servidor MX también es de Microsoft** y los **servidores DNS** son de **Azure**, osease, están alojados en la nube de Microsoft. 
Al igual que con el dominio anterior, **Microsoft permite que x servidores y dominios envíen correos en nombre de Microsoft.com.**

Los 2 campos nuevos son **CNAME records pointed here** y **MX records pointed here** y se refieren a **dominios y servidores de 3º que tienen un CNAME o que usan servidores de correo de Microsoft.**

---

### Consultar IP de salida

Cada correo tiene una dirección de salida, que es desde la cual se ha mandado el correo y que se encuentra en las cabeceras 
En el caso de **magnetforensics** es la siguiente:

![[11.1 2.png]]

La página web https://talosintelligence.com/ permite analizar cada IP.

![[8.1 1.png]]

↓

![[8.1.1.png]]

En la captura anterior se puede observar que el proveedor de la IP pertenece a Salesforce.com y que se encuentra registrada en EEUU. 
Su reputación es buena, lo que quiere decir que no se ha encontrado ninguna actividad sospechosa, además de que su categoría es desconocida, por lo que la IP no aloja ningún sitio web.

![[8.1.3.png]]

En esta captura se puede observar la cantidad de emails que se mandan desde esa IP al día.

+

La IP del otro correo es al siguiente:

![[11.2 4.png]]

Al meterla en la página, se observa la siguiente información

![[8.2.1.png]]

Se ve que la IP pertenece a Microsoft y se encuentra registrada en EEUU. 
Su reputación es buena y no tiene una categoría definida, por lo que tampoco aloja un sitio web. Esta IP esta asociada a los servicios de correo de Microsoft, como lo son Outlook.com o Exchange Online. 

Y este es su volumen de tráfico:

![[8.2.2.png]]


Otra página donde se puede ver algo de información es https://viewdns.info/ la cual nos da muchas opciones de información:

![[9.0.png]]

Yo elijo la **Reverse IP Lookup** y tampoco proporciona información que no se haya visto ya.

![[9.1 1.png]]

↓

![[9.2.png]]

---

### BCL

BCL es un valor usado por sistemas de filtrado de correo usado para clasificar el tipo de remitente. Este valor va del 0-9


| Valor del BCD | Significado             |
| ------------- | ----------------------- |
| 0-3           | No se considera SPAM    |
| 4-7           | SPAM legitimo           |
| 8-9           | SPAM o correo malicioso |

En el correo de **magnetforensics**, el BCL tiene un valor de 3:

![[10.1 1.png]]

Mientras que el correo de **Microsoft**, de 0:

![[10.2.png]]

---

### SPF, DKIM, DMARC

En el correo de **MagneticForensics** tenemos los siguientes valores:

![[11.1 3.png]]

`spf=pass (sender IP is 13.111.2.35) smtp.mailfrom=bounce.s7.exacttarget.com; dkim=pass (signature was verified) header.d=magnetforensics.com; dmarc=pass action=none header.from=magnetforensics.com; compauth=pass reason=100`

**spf**
El resultado es **pass**, lo que quiere decir que servidor de correo receptor comprobó que la IP 13.111.2.35 está autorizada para enviar correos en nombre de bounce.s7.exacttarget.com, el dominio usado en la dirección Mail From.

**dkim**
El resultado también es **pass**, por lo que la firma digital DKIM en la cabecera del mensaje fue verificada con éxito utilizando la clave pública del dominio magnetforensics.com

**dmarc**
El resultado vuelve a ser **pass**, por lo que el dominio magnetforensics.com pasó tanto SPF como DKIM, por lo tanto, cumple con la política DMARC.

El mensaje cumple con la política de autenticación de correo en el dominio de origen. **Es legítimo**.

+

En el correo de Microsoft:

![[11.2 5.png]]

`spf=pass (sender IP is 104.47.58.180) smtp.mailfrom=microsoft.com; dkim=pass (signature was header.d=microsoft.com;dmarc=pass header.from=microsoft.com;compauth=pass reason=100`

**spf**
El resultado es **pass**, por lo que la dirección IP está autorizada para enviar correos en nombre del dominio microsoft.com.

**dkim**
El resultado también es **pass** y el correo leva una firma digital válida desde el dominio Microsoft.com, la cual fue verificada correctamente, por lo que el mensaje no ha sido alterado y viene de un sistema autenticado.

**dmarc**
El resultado vuelve a ser **pass**, por lo que el mensaje paso spf y dkim y ambos están alineados con el dominio del campo FROM

El mensaje cumple con la política de autenticación de Microsoft. Es legítimo.

---

### Obtener información con el comando dig

Con el comando dig también se puede obtener información de los campos spf, dkim y dmarc de los dominios, aunque yo solo obtuve información del campo **spf**:

`dig TXT <dominio> | grep "spf"`

![[12.1 1.png]]

+

![[12.2.png]]

---

### Uso de otras herramientas

Otras herramientas son https://mxtoolbox.com/ y https://mailheader.org/ 
La primera sirve para comprobar información de los dominios de correo desde los cuales se han mandado los correos:

![[13.1 1.png]]

+

![[13.2 1.png]]

Las principales diferencias con otras páginas es que magneticforensics usa los servicios de Microsoft 365 para enviar correos en nombre de magnetforensics.com y de microsoft.com no saca información nueva.

La otra página web sirve para analizar cabeceras

![[14.1 1.png]]

En el caso de magneticforensics, se nos da la información mejor organizada que en https://mha.azurewebsites.net/

+

![[14.2.png]]
