## Índice

- [Introducción](#introducción)
- [Descargar correos y HASH](#descargar-correos-y-obtener-hash)
- [Obtener cabecera](#obtener-cabecera)
- [Analizar cabecera](#analizar-cabecera)
- [Consultar IP de salida](#consultar-ip-de-salida)
- [BCL](#bcl)
- [SPF, DKIM, DMARC](#spf-dkim-dmarc)
- [Obtener información con el comando dig](#obtener-información-con-el-comando-dig)
- [Uso de otras herramientas](#uso-de-otras-herramientas)

## Introducción

En esta práctica se van a analizar 2 correos electrónicos, uno que se encontraba en **spam** y otro que fue enviado por **Microsoft**.

![3 1](https://github.com/user-attachments/assets/332e8f21-bc38-4bf9-85e5-88c7f570325c)


![3 3](https://github.com/user-attachments/assets/03b1d4a9-1930-455e-94a5-bf56e0a46bbf)


---
### Descargar correos y obtener HASH

Para poder descargarlos se hace **click derecho sobre cada correo>Descargar**:

![3 2](https://github.com/user-attachments/assets/22f78275-70e1-4e3b-a6a0-81ce15e30926)


↓

![3 4](https://github.com/user-attachments/assets/5e6df6b3-7fd1-4d5c-87b5-024d8377e906)


He descargado uno en formato **EML** y otro en formato **MSG**

|                             | EML                                                                          | MSG                                                            |
| --------------------------- | ---------------------------------------------------------------------------- | -------------------------------------------------------------- |
| **Formato**                 | Basado en texto plano                                                        | Formato propietario binario de Microsoft Outlook               |
| **Quien lo usa**            | Thunderbird, Windows mail, etc                                               | Solamente por Outlook                                          |
| **Compatibilidad**          | Es un formato más universal, ya que se puede abrir con todo tipo de editores | Solo es compatible con Outlook o con software específico       |
| **Estructura interna**      | Cabeceras MIME + cuerpo + adjuntos codificados                               | Objeto de Outlook, que incluye metadatos, propiedades MAPI etc |
| **Tamaño**                  | Más ligero que MSG                                                           | Más pesado que EML por su estructura interna                   |

Ya descargados, obtengo su hash:

![4 0](https://github.com/user-attachments/assets/95859a30-4e8b-4ee4-b3e5-8fc54abe67d7)


---

### Obtener cabecera


Para poder obtener la cabecera de ambos correos, hemos de abrir **Outlook en su versión de PC>hacer doble click sobre el coreo para que se abra en una nueva pestaña>ir a Archivo>Propiedades** y copiar su encabezado:

![4 1](https://github.com/user-attachments/assets/6b643d46-a4f0-4dc2-8ba1-de5f5b1eb803)



↓

![4 2](https://github.com/user-attachments/assets/f3cd8914-59d7-4900-a1c4-493b16d01473)


↓

![4 3](https://github.com/user-attachments/assets/a7190c2a-6bf1-4961-8581-f138b881a543)


+

![4 4](https://github.com/user-attachments/assets/15c3152d-96dd-4997-8a5b-ed7c1180980f)


---

### Analizar cabecera

Para poder analizar la cabecera tenemos varias herramientas, una de ellas es https://mha.azurewebsites.net/

![5 1](https://github.com/user-attachments/assets/e704eb8f-c934-4223-8139-5f7c7c61873d)


+

![5 3](https://github.com/user-attachments/assets/97a723ea-2d69-4c4a-aae2-83a36597b5ee)


De cada mensaje analizare su:

- Message Id 
- From
- To

![5 2](https://github.com/user-attachments/assets/3eff936f-a154-4018-a3ce-ef25542c6901)



| Campo      | Valor                                                        |
| ---------- | ------------------------------------------------------------ |
| Message ID | 6c43180a-e536-4265-95e2 f11e233c2997@atl1s07mta3017.xt.local |
| FROM       | sales@magnetforensics.com                                    |
| TO         | marcos.chimat.1@educa.jcyl.es                                |

+

![5 4](https://github.com/user-attachments/assets/35a2c1a7-ba0c-49ce-9a4e-29b97031cc27)



| Campo      | Valor                                                                                                                                                                              |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Message ID | [0e09ca4c4b4b40b99442205858ed3140 JFZGS42DN5WW25LONFRWC5DJN5XFA3DBORTG64TNFVIHE3 3EFVBEYMSQPRGWSY3SN5ZW6ZTUIZXXE3LTPRDG64TNONHG 65DJMZUWGYLUNFXW47CFPBXVG3LUOA======@microsoft.com |
| FROM       | maccount@microsoft.com                                                                                                                                                             |
| TO         | marcos.chimat.1@educa.jcyl.es                                                                                                                                                      |


Otra herramienta es https://securitytrails.com/ que nos permite ver a quien pertenece el servidor de origen, osease, quien ha mandado el correo: Primero lo pruebo con el correo de **magnetforensics**.

![6 2](https://github.com/user-attachments/assets/18b41013-cd08-4aac-bee5-3cc30690f2fb)


↓

![6 3](https://github.com/user-attachments/assets/ee04a41a-c181-439f-a92d-0b16d03986fa)


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

![6 5](https://github.com/user-attachments/assets/bc16de7a-159b-4532-8d3e-285015b3df15)


↓

![6 6](https://github.com/user-attachments/assets/c6116bd3-0233-4f59-a7c3-a4d6584a5aad)


↓

![6 7](https://github.com/user-attachments/assets/b254a5f8-0c6b-4908-89aa-e2ea07466993)



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

![11 1](https://github.com/user-attachments/assets/21506dfc-97fc-4485-bdd6-bb9136c724ec)


La página web https://talosintelligence.com/ permite analizar cada IP.

![8 1](https://github.com/user-attachments/assets/0eb71f00-3cc5-4ebc-a70d-3ebb897d627a)

↓

![8 1 1](https://github.com/user-attachments/assets/ab2202b7-10e9-4c0f-84f1-53db3bb011e9)

En la captura anterior se puede observar que el proveedor de la IP pertenece a Salesforce.com y que se encuentra registrada en EEUU. 
Su reputación es buena, lo que quiere decir que no se ha encontrado ninguna actividad sospechosa, además de que su categoría es desconocida, por lo que la IP no aloja ningún sitio web.

![8 1 3](https://github.com/user-attachments/assets/68d48bf9-f122-4eff-bc70-6ecd100fae6a)


En esta captura se puede observar la cantidad de emails que se mandan desde esa IP al día.

+

La IP del otro correo es al siguiente:

![11 2](https://github.com/user-attachments/assets/22022e86-91b1-4f12-999a-788e43fa7941)


Al meterla en la página, se observa la siguiente información

![8 2 1](https://github.com/user-attachments/assets/9a7b3e81-0566-4190-a7cf-7b1786144f70)


Se ve que la IP pertenece a Microsoft y se encuentra registrada en EEUU. 
Su reputación es buena y no tiene una categoría definida, por lo que tampoco aloja un sitio web. Esta IP esta asociada a los servicios de correo de Microsoft, como lo son Outlook.com o Exchange Online. 

Y este es su volumen de tráfico:

![8 2 2](https://github.com/user-attachments/assets/aefa913b-f305-495c-8879-089571b489a7)



Otra página donde se puede ver algo de información es https://viewdns.info/ la cual nos da muchas opciones de información:

![9 0](https://github.com/user-attachments/assets/1c33b051-fbef-450e-bed9-c5e48217d4ea)

Yo elijo la **Reverse IP Lookup** y tampoco proporciona información que no se haya visto ya.

![9 1](https://github.com/user-attachments/assets/73f3358e-d84c-42ce-8c8f-90d52401beb2)


↓

![9 2](https://github.com/user-attachments/assets/3860c98f-fc07-47a5-9bfa-f5cd1a396a45)


---

### BCL

BCL es un valor usado por sistemas de filtrado de correo usado para clasificar el tipo de remitente. Este valor va del 0-9


| Valor del BCD | Significado             |
| ------------- | ----------------------- |
| 0-3           | No se considera SPAM    |
| 4-7           | SPAM legitimo           |
| 8-9           | SPAM o correo malicioso |

En el correo de **magnetforensics**, el BCL tiene un valor de 3:

![10 1](https://github.com/user-attachments/assets/457a63fa-4dc7-4905-a65e-d9ef6c32bc06)

Mientras que el correo de **Microsoft**, de 0:

![10 2](https://github.com/user-attachments/assets/554c0ba4-dfca-4aec-9007-cf68e01fcfcc)

---

### SPF, DKIM, DMARC

En el correo de **MagneticForensics** tenemos los siguientes valores:

![11 1](https://github.com/user-attachments/assets/d8e7a2fc-6a0a-4274-8a66-40b507328845)


```bash
spf=pass (sender IP is 13.111.2.35) smtp.mailfrom=bounce.s7.exacttarget.com; dkim=pass (signature was verified) header.d=magnetforensics.com; dmarc=pass action=none header.from=magnetforensics.com; compauth=pass reason=100
```

**spf**
El resultado es **pass**, lo que quiere decir que servidor de correo receptor comprobó que la IP 13.111.2.35 está autorizada para enviar correos en nombre de bounce.s7.exacttarget.com, el dominio usado en la dirección Mail From.

**dkim**
El resultado también es **pass**, por lo que la firma digital DKIM en la cabecera del mensaje fue verificada con éxito utilizando la clave pública del dominio magnetforensics.com

**dmarc**
El resultado vuelve a ser **pass**, por lo que el dominio magnetforensics.com pasó tanto SPF como DKIM, por lo tanto, cumple con la política DMARC.

El mensaje cumple con la política de autenticación de correo en el dominio de origen. **Es legítimo**.

+

En el correo de Microsoft:

![11 2](https://github.com/user-attachments/assets/0d71360a-0c13-449e-99af-d5f587d1d096)


```bash
spf=pass (sender IP is 104.47.58.180) smtp.mailfrom=microsoft.com; dkim=pass (signature was header.d=microsoft.com;dmarc=pass header.from=microsoft.com;compauth=pass reason=100
```

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

```bash
dig TXT <dominio> | grep "spf"
```

![12 1](https://github.com/user-attachments/assets/1cc1117a-4e34-4905-8426-1f98471753e3)


+

![12 2](https://github.com/user-attachments/assets/8d6787eb-2d68-49df-add7-07db1a989cdc)


---

### Uso de otras herramientas

Otras herramientas son https://mxtoolbox.com/ y https://mailheader.org/ 
La primera sirve para comprobar información de los dominios de correo desde los cuales se han mandado los correos:

![13 1](https://github.com/user-attachments/assets/5dd1e3ae-3554-4f5f-80d9-ae4dc5cba908)


+

![13 2](https://github.com/user-attachments/assets/9d68a8e4-1fa2-4b00-8e38-4ab6e73dfa4c)


Las principales diferencias con otras páginas es que magneticforensics usa los servicios de Microsoft 365 para enviar correos en nombre de magnetforensics.com y de microsoft.com no saca información nueva.

La otra página web sirve para analizar cabeceras

![14 1](https://github.com/user-attachments/assets/25a0bd5a-934f-4bb4-a598-36d93e4b99e3)


En el caso de magneticforensics, se nos da la información mejor organizada que en https://mha.azurewebsites.net/

+

![14 2](https://github.com/user-attachments/assets/5fc8b2ed-b571-4a2d-9741-f268c25f4157)

