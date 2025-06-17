<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - 
</details>

---

## Introducción

En esta práctica se van a tratar las reglas YARA. 
Estas son reglas que permiten identificar patrones en archivos y se suelen usar para identificar malware. 
A esto se le puede llamar “análisis estático” puesto que se analiza un malware sin necesidad de ejecutarlo


**Componentes**

- Meta
  - Autor
  - Nombre
  - Fecha
- Strings
  - Variables con la información que buscamos
- Conditions
  - Coincidencias que debe haber para que salte la regla
 
---

### Obtener malware

Para practicar con las reglas Yara obtenemos el **malware de WannaCry** el cual es un ransomware que ya hemos visto en otras prácticas. 


Descargamos el fichero comprimido desde el siguiente [enlace](https://github.com/ytisf/theZoo/tree/master/malware/Binaries/Ransomware.WannaCry) lo descomprimimos y movemos a otra carpeta.

```bash
unzip Ransomware.Wannacry.zip 
mv <archivo descomprimido> wannacry.exe 
```

![1 1](https://github.com/user-attachments/assets/d9549ebe-3310-4726-9300-4f5ece7a93c2)

↓

![1 2](https://github.com/user-attachments/assets/9a369005-d262-4a14-bdaa-bb393a373843)

Para comprobar que lo que hemos descargado es realmente el malware de WannaCry lo subimos a virus total: 

![1 3](https://github.com/user-attachments/assets/22eb7124-c919-42ae-b9c5-1395a4cf9fcb)

---

### Investigar malware

Ahora con el malware en nuestro equipo vamos a investigarlo usando el comando **strings**. 
Este comando se usa para extraer y mostrar cadenas de texto legibles dentro de un archivo. 
Con el parámetro -a sacamos todas las cadenas imprimibles de un archivo


```bash
strings -a wannacry.exe
```

![2 1](https://github.com/user-attachments/assets/ee823de9-03f2-4f6e-b0f2-10008ac42283)

Podemos acotar más la busqueda con el siguiente comando:

```bash
strings -a -n 8 wannacryu.exe | more
```

![2 2](https://github.com/user-attachments/assets/8715abbc-4ad0-4ad1-88cb-e98e54f5094f)

Estas son funciones de la API de Windows. 
Estas funciones son utilizadas por los programas para interactuar con el sistema operativo y realizar diferentes tareas. 
Como esto es un virus, muchas de estas funciones tienen propósitos maliciosos. 

Un ejemplo lo encontramos en la función **GetProcAccess**. 

![2 3](https://github.com/user-attachments/assets/1e7bcc77-2c58-4c18-9bcb-3e4c3e630b6e)


Esta permite a un programa obtener la dirección de una función dentro de una DLL lo cual es útil para cargar funciones de manera dinámica en tiempo de ejecución, en lugar de enlazarlas estáticamente en el momento de la compilación. 

También podemos buscar funciones determinadas: 

```bash
strings -a wannacry.exe | grep “GetProcAddress” -A 3 -B 3 
```

![2 5](https://github.com/user-attachments/assets/544433fe-cc21-4f2c-ae51-f754e348c2ba)

---

### Creación de las reglas yara

Una regla yara es un archivo con la extensión **.yar / yara**

![3 1](https://github.com/user-attachments/assets/92b42bca-eda1-4572-ba27-79d820b64843)

↓

 ![3 2](https://github.com/user-attachments/assets/c519ae01-a63c-41c5-94d0-b018d587e72b)

Es una regla muy sencilla la cual saltará en caso de encontrar la función **GetProcAddress** en el archivo. 
Antes de utilizar yara, hay que instarlo: 

```bash
apt install yara
```

![3 2](https://github.com/user-attachments/assets/480a36b3-281f-4c2e-8a5e-9897e746018f)

```bash
yara wanncry.yara wannacry.exe
```

![3 4](https://github.com/user-attachments/assets/7099daa6-162e-481a-acfc-d44b3b15f051)

Añadiendo el parámetro -s podemos ver en que parte de la memoria se encuentra esa función:

![3 5 en que parte de la memoria se encuentra ese fichero](https://github.com/user-attachments/assets/a5f64a61-223a-4d15-86b4-9405b286538e)

Ahora hacemos una pequeña modificación en la regla: 
Añado un nuevo string y modifico la condición para que la regla “salte” en caso de encontrarse $v y $r.

![3 6](https://github.com/user-attachments/assets/23c61c6e-4e0e-460f-91cc-ab78e403cb55)

Si ejecuto la regla de nuevo, no saldrá nada, debido a que la regla solo salta si encuentra **GetProcAddress** y **Rodolfo** en el fichero. 

![3 8](https://github.com/user-attachments/assets/bbc40447-dbec-4fc9-af8a-a88fc413cf55)

Otra modificación que se podría hacer en la condición es poner or en vez de and

Otra forma de ver información de un archivo es con el comando **xxd** 
Este comando saca la información hexadecimal de un archivo:

```bash
xxd wannacry.exe | more
```

![4 2](https://github.com/user-attachments/assets/d17b512d-86e7-417d-8bbd-8c32dea84491)

En este caso vamos a quedarnos con la primera línea:

![4 3 4d5a y MZ india que es un ejecutable](https://github.com/user-attachments/assets/49fd1eb2-8a47-4c04-81a5-727716b030cb)

**4d5a y MZ** nos indican que este fichero es un ejecutable **.exe** 
Así que actualizo mi regla yara para decirle que también busque el patrón 4d5a: 

![4 4](https://github.com/user-attachments/assets/af43cd6d-df86-483e-8cbb-1f1631aeb4e7)

↓

![4 5](https://github.com/user-attachments/assets/0e238eab-0118-445f-9341-d810d444b396)

---

### YARA en internet

En internet también se pueden obtener una gran cantidad de reglas yara especializadas en un tipo de malware. 
Por ejemplo, esta es la regla yara de WannaCry:

```bash
 /* 
   Yara Rule Set 
   Author: Florian Roth 
   Date: 2017-05-12 
   Identifier: WannaCry 
   Reference: https://goo.gl/HG2j5T 
*/ 
 
/* Rule Set ----------------------------------------------------------------- */ 
 
rule WannaCry_Ransomware { 
   meta: 
      description = "Detects WannaCry Ransomware" 
      author = "Florian Roth (Nextron Systems) (with the help of binar.ly)" 
      reference = "https://goo.gl/HG2j5T" 
      date = "2017-05-12" 
      hash1 = "ed01ebfbc9eb5bbea545af4d01bf5f1071661840480439c6e5babe8e080e41aa" 
      id = "2e46b4db-8c94-53ed-ae27-31dd37b04940" 
   strings: 
      $x1 = "icacls . /grant Everyone:F /T /C /Q" fullword ascii 
      $x2 = "taskdl.exe" fullword ascii 
      $x3 = "tasksche.exe" fullword ascii 
      $x4 = "Global\\MsWinZonesCacheCounterMutexA" fullword ascii 
      $x5 = "WNcry@2ol7" fullword ascii 
      $x6 = "www.iuqerfsodp9ifjaposdfjhgosurijfaewrwergwea.com" ascii 
      $x7 = "mssecsvc.exe" fullword ascii 
      $x8 = "C:\\%s\\qeriuwjhrf" fullword ascii 
      $x9 = "icacls . /grant Everyone:F /T /C /Q" fullword ascii  
      $s1 = "C:\\%s\\%s" fullword ascii 
      $s2 = "<!-- Windows 10 --> " fullword ascii 
      $s3 = "cmd.exe /c \"%s\"" fullword ascii 
      $s4 = "msg/m_portuguese.wnry" fullword ascii 
      $s5 = "\\\\192.168.56.20\\IPC$" fullword wide 
      $s6 = "\\\\172.16.99.5\\IPC$" fullword wide 
 
      $op1 = { 10 ac 72 0d 3d ff ff 1f ac 77 06 b8 01 00 00 00 } 
      $op2 = { 44 24 64 8a c6 44 24 65 0e c6 44 24 66 80 c6 44 } 
      $op3 = { 18 df 6c 24 14 dc 64 24 2c dc 6c 24 5c dc 15 88 } 
      $op4 = { 09 ff 76 30 50 ff 56 2c 59 59 47 3b 7e 0c 7c } 
      $op5 = { c1 ea 1d c1 ee 1e 83 e2 01 83 e6 01 8d 14 56 } 
      $op6 = { 8d 48 ff f7 d1 8d 44 10 ff 23 f1 23 c1 } 
   condition: 
      uint16(0) == 0x5a4d and filesize < 10000KB and ( 1 of ($x*) and 1 of ($s*) or 3 of 
($op*) ) 
} 
 
rule WannaCry_Ransomware_Gen { 
   meta: 
      description = "Detects WannaCry Ransomware" 
      author = "Florian Roth (Nextron Systems) (based on rule by US CERT)" 
      reference = "https://www.us-cert.gov/ncas/alerts/TA17-132A" 
      date = "2017-05-12" 
      hash1 = "9fe91d542952e145f2244572f314632d93eb1e8657621087b2ca7f7df2b0cb05" 
      hash2 = "8e5b5841a3fe81cade259ce2a678ccb4451725bba71f6662d0cc1f08148da8df" 
      hash3 = "4384bf4530fb2e35449a8e01c7e0ad94e3a25811ba94f7847c1e6612bbb45359" 
      id = "d28d3d76-9c24-5476-9a0c-936c17477d6a" 
   strings: 
      $s1 = "__TREEID__PLACEHOLDER__" ascii 
      $s2 = "__USERID__PLACEHOLDER__" ascii 
      $s3 = "Windows for Workgroups 3.1a" fullword ascii 
      $s4 = "PC NETWORK PROGRAM 1.0" fullword ascii 
      $s5 = "LANMAN1.0" fullword ascii 
   condition: 
      uint16(0) == 0x5a4d and filesize < 5000KB and all of them 
} 
 
rule WannCry_m_vbs { 
   meta: 
      description = "Detects WannaCry Ransomware VBS" 
      license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature
base/blob/master/LICENSE" 
      author = "Florian Roth (Nextron Systems)" 
      reference = "https://goo.gl/HG2j5T" 
      date = "2017-05-12" 
      hash1 = "51432d3196d9b78bdc9867a77d601caffd4adaa66dcac944a5ba0b3112bbea3b" 
      id = "a8f13bd2-984d-5c8c-ac53-7d442e222850" 
   strings: 
      $x1 = ".TargetPath = \"C:\\@" ascii 
      $x2 = ".CreateShortcut(\"C:\\@" ascii 
      $s3 = " = WScript.CreateObject(\"WScript.Shell\")" ascii 
   condition: 
      ( uint16(0) == 0x4553 and filesize < 1KB and all of them ) 
} 
rule WannCry_BAT { 
   meta: 
      description = "Detects WannaCry Ransomware BATCH File" 
      license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature
base/blob/master/LICENSE" 
      author = "Florian Roth (Nextron Systems)" 
      reference = "https://goo.gl/HG2j5T" 
      date = "2017-05-12" 
      hash1 = "f01b7f52e3cb64f01ddc248eb6ae871775ef7cb4297eba5d230d0345af9a5077" 
      id = "0929f0de-28ac-5534-a6fd-7b131abda011" 
   strings: 
      $s1 = "@.exe\">> m.vbs" ascii 
      $s2 = "cscript.exe //nologo m.vbs" fullword ascii 
      $s3 = "echo SET ow = WScript.CreateObject(\"WScript.Shell\")> " ascii 
      $s4 = "echo om.Save>> m.vbs" fullword ascii 
   condition: 
      ( uint16(0) == 0x6540 and filesize < 1KB and 1 of them ) 
} 
 
rule WannaCry_RansomNote { 
   meta: 
      description = "Detects WannaCry Ransomware Note" 
      license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature
base/blob/master/LICENSE" 
      author = "Florian Roth (Nextron Systems)" 
      reference = "https://goo.gl/HG2j5T" 
      date = "2017-05-12" 
      hash1 = "4a25d98c121bb3bd5b54e0b6a5348f7b09966bffeec30776e5a731813f05d49e" 
      id = "65ce8faf-0981-5382-bc15-f094ccaa9f54" 
   strings: 
      $s1 = "A:  Don't worry about decryption." fullword ascii 
      $s2 = "Q:  What's wrong with my files?" fullword ascii 
   condition: 
      ( uint16(0) == 0x3a51 and filesize < 2KB and all of them ) 
} 
 
/* Kaspersky Rule */ 
 
rule APT_lazaruswannacry { 
   meta: 
      description = "Rule based on shared code between Feb 2017 Wannacry sample and 
Lazarus backdoor from Feb 2015 discovered by Neel Mehta" 
      date = "2017-05-15" 
      reference = "https://twitter.com/neelmehta/status/864164081116225536" 
      author = "Costin G. Raiu, Kaspersky Lab" 
      version = "1.0" 
      hash = "9c7c7149387a1c79679a87dd1ba755bc" 
      hash = "ac21c8ad899727137c4b94458d7aa8d8" 
      id = "e9dd9750-2366-503a-a879-972dbead6bf3" 
   strings: 
      $a1 = { 51 53 55 8B 6C 24 10 56 57 6A 20 8B 45 00 8D 75 
         04 24 01 0C 01 46 89 45 00 C6 46 FF 03 C6 06 01 46 
         56 E8 } 
      $a2 = { 03 00 04 00 05 00 06 00 08 00 09 00 0A 00 0D 00 
         10 00 11 00 12 00 13 00 14 00 15 00 16 00 2F 00 
         30 00 31 00 32 00 33 00 34 00 35 00 36 00 37 00 
        38 00 39 00 3C 00 3D 00 3E 00 3F 00 40 00 41 00 
44 00 45 00 46 00 62 00 63 00 64 00 66 00 67 00 
68 00 69 00 6A 00 6B 00 84 00 87 00 88 00 96 00 
FF 00 01 C0 02 C0 03 C0 04 C0 05 C0 06 C0 07 C0 
08 C0 09 C0 0A C0 0B C0 0C C0 0D C0 0E C0 0F C0 
10 C0 11 C0 12 C0 13 C0 14 C0 23 C0 24 C0 27 C0 
2B C0 2C C0 FF FE } 
condition: 
uint16(0) == 0x5A4D and filesize < 15000000 and all of them 
} 

```

---

### Trinity

Al igual que hay reglas YARA de WannaCry, también hay del malware de Trinity:

```bash
 /* 
Trinity ransomware 
*/ 
rule Trinity 
{ 
    meta: 
        author = "rivitna" 
        family = "ransomware.trinity.windows" 
        description = "Trinity ransomware Windows payload" 
        severity = 10 
        score = 100 
    strings: 
        $s0 = "\x00pbsecGOOD\x00" ascii 
        $s1 = "\x00secpbGOOD\x00" ascii 
        $s2 = "12210111111610599117115" ascii 
        $s3 = "\x00OnlyCr :\x00" ascii 
        $s4 = "\x00FullCr :\x00" ascii 
        $s5 = "\x00enableOnlyTest \x00" ascii 
        $s6 = "\x00EnableAutoStart \x00" ascii 
        $s7 = "\x00enableSelfDelete \x00" ascii 
        $s8 = "\x00enableStartOnRun \x00" ascii 
        $s9 = "\x00enableWallaper \x00" ascii 
        $s10 = "\x00enableNetwork \x00" ascii 
        $s11 = "\x00enableCustomCMD1 \x00" ascii 
        $s12 = "\x00enableFullEncrExt \x00" ascii 
        $s13 = "\x00enableCryptOnlyExtension \x00" ascii 
$s14 = "\x00enableCryptOnlyExtension \x00" ascii 
$s15 = "\x00%s%x%x%x%x.goodgame\x00" wide 
$h0 = { B? 01 00 00 00 33 ?? 0F B6 [10] C1 E? 08 83 F? 18 72 EC } 
$h1 = { 00 6A 00 68 63 04 00 00 FF 35 [4] FF } 
condition: 
((uint16(0) == 0x5A4D) and (uint32(uint32(0x3C)) == 0x00004550)) and 
( 
((1 of ($h*)) and (4 of ($s*))) or 
(10 of them) 
) 
} 
```

Esta regla yara busca:

- Marcadores o identificadores utilizados por el malware para verificar ciertas condiciones o estados durante su ejecución.
- Claves o semillas para un algoritmo de cifrado.
- Modos de cifrado
- Modos de prueba o modos de depuración, donde podría realizar acciones limitadas sin causar daño completo.
- Funciones que hagan que el malware pueda configurarse para iniciarse automáticamente
- Función de autoeliminación
- Función de cambiar el fondo de pantalla
- Funciones relacionadas con capacidades de red
  - Replicarse a través de la red
  - Comunicarse con un comando de comando y control
 
Además de buscar diferentes patrones hexadecimales que:

- Corresponden a una rutina de cifrado o manipulación de datos.
- Corresponden a una llamada a una función de la API de Windows o a una rutina de código.

---

### Crear regla para malware

Ahora toca la parte en la cual nosotros tenemos que hacer nuestra propia regla paras un malware específico. 
El malware que yo me he descargado… la verdad es que no se cual es, simplemente me baje varios de malware bazar y como el nombre del archivo es su hash **sha256** pues no se el nombre del malware. 

Lo primero que hago es ver su contenido hexadecimal: 
  
![6 1](https://github.com/user-attachments/assets/1e72ea35-fa92-4ae8-aa89-35c0e81353d5)

No saco mucha información a parte de ver que es un ejecutable (con la extensión .exe ya me lo suponía) así que voy a crear mi regla yara:

![6 2](https://github.com/user-attachments/assets/f309f609-4b9b-4962-995c-6d09f6ea9955)

```bash
 rule Deteccion_Malware { 
 meta: 
   author = "Marcos Chicote" 
   description = "Regla para detectar malware chungo" 
   date = "31/01/2025" 
 
strings: 
        // Robo de credenciales 
        $s1 = "GetAsyncKeyState"  
        $s2 = "SetWindowsHookEx"  
        $s3 = "CryptUnprotectData"  
        $s4 = "EnumWindows"  
        $s5 = "GetForegroundWindow"  
         
        // Comunicación con C2 y Exfiltración 
        $s6 = "InternetOpenA"  
        $s7 = "InternetConnectA"  
        $s8 = "WinHttpOpen"  
        $s9 = "send"  
        $s10 = "recv"  
        $s11 = "gethostbyname"  
         
        // Persistencia 
        $s12 = "RegCreateKeyExA"  
        $s13 = "RegSetValueExA"  
        $s14 = "CreateProcessA"  
        $s15 = "WriteFile"  
         
        // Inyección de código 
        $s16 = "OpenProcess"  
        $s17 = "VirtualAllocEx" 
        $s18 = "WriteProcessMemory" 
        $s19 = "CreateRemoteThread" 
        $s20 = "NtCreateThreadEx"  
         
        // Manipulación de archivos 
        $s21 = "CreateFileA"  
        $s22 = "DeleteFileA"  
        $s23 = "FindFirstFileA" 
        $s24 = "CryptEncrypt"  
         
        // Evasión de detección 
        $s25 = "IsDebuggerPresent" 
        $s26 = "CheckRemoteDebuggerPresent"  
        $s27 = "NtQueryInformationProcess"  
        $s28 = "GetTickCount"  
        $s29 = "FindWindowA"  
 
    condition: 
        1 of ($s*)  // Salta si al menos 1 funcion sospechosas aparecen en el archivo 
}
```

Como no se muy bien el tipo de malware que me he descargado, pues he diseñado esta regla la cual detecta una gran variedad de acciones maliciosas.

Ejecuto la regla sobre el malware y obtengo los siguientes resultados: 

![6 5](https://github.com/user-attachments/assets/5dae763a-bb76-41f0-82a7-c8aa8dc28307)

Tampoco se han descubierto muchas funciones de las que yo he puesto, pero según estas funciones descubiertas, estaríamos ante un ransomware o un troyano. 
Como me quedé con la duda, ejecuté el siguiente comando para ver que otras funciones están dentro del fichero.

```bash
strings -a -n 8 ejecutable_raro.exe | more 
```

![6 6](https://github.com/user-attachments/assets/dd4d4595-c19c-419a-9032-c9d694c8a2ce)







































