## Administración de sistemas de manera remota

### RDP
RDP - 3389 - Remote Desktop Protocol

Es una característica que nos permite conectarnos a un equipo de la empresa desde fuera de la red de la misma.
Es muy útil y usado por lo que es el objetivo de los ciberdelincuentes, siendo uno de los principales ataques el ransomware.


#### ¿Cómo se ataca RDP?
Se prueban credenciales predeterminadas en usuarios normales y con privilegios, por lo que el ataque principal es fuerza bruta, para poder acceder al sistema e instalar malware, como por ejemplo:
- Ransomware
- Infecciones zombi para convcertir el equipo en una botnet
- Cryptojacking - Para que el equipo mine crypto

Otro vector de ataque son vulnerabilidades no parcheadas - de dia 0

### Desafíos comunes de ciberseguridad en lugares de trabajo remotos

- La reducción de riesgos usando VPN
- La concesión de acceso a los usuarios
- Cifrado de datos
- Cumplir con los estándares de cumplimiento global
- Integración con otros dispositivos y SO
- Identificar donde se realizaron las infracciones de seguridad

### Recomendaciones de seguridad para escritorio remoto

- Sistemas actualizados
- Uso de VPN
- Credenciales robustas
- Biometría
- Bloqueo de cuentas
- 2MFA
- Cambiar el puerto de RDP
- Listas de acceso con NLA - Network Level Authentication
- Reglas de firewall

## Ataques y auditorias de contraseñas

### Generación automatica de contraseñas

```
$Assembly = Add-Type -AssemblyName System.Web [System.Web.Security.Membership]::GeneratePassword(10,3)
```

### Principales ataques contra contraseñas
- Suplantación de identidad
- MITM
- Fuerza bruta
- Diccionario
- Bloqueo de cuentas tras x intentos fallidos
- Autorelleno de credenciales
- Keylogger

## Pivotaje en la red

Consiste en realizar conexiones dentro de la red, para que un equipo pueda acceder a cualquier otro de la red.
Al comprometer un equipo, un atacante puede saltar hacia otros equipos de la misma red y a equipos a los que quizá no puede llegar por un ataque

Después de realizar el ataque se realizara un escaneo para descubrir otra red y realizar el mismo ataque.

Dentro del pivoting se puede:
- Identificar otros equipos 
- Realizar un escaneo de puertos y vulnerabilidades en los nuevos equipos identificados

Antes del pivoting
- Identificar tarjetas de red y subredes que existen en el equipo comprometido
- Crear rutas desde metasploit 
- Usar módulos auxiliares de Metasploit para ayudar al ataque

## Instalación de puertas traseras con troyanos
### ¿A quien se dirigen las RAT?
Apuntan tanto a individuos como a empresas, tanto con objetivos económicos como con objetivos de robo de información y de propiedades intelectuales.

### Como protegerse

- No tener habilitado RDP
- Actualizar equipos
- Evitar ejecutar programas desconocidos
- Disponer de antivirus

Si se sospecha que el equipo esta infectado:
- Desconectarlo de la red
- Reiniciar
- Borrar todo y restaurar equipo desde un backup
- Cambiar nombre de usuario y credenciales
- Ponerse en contacto con los afectados
