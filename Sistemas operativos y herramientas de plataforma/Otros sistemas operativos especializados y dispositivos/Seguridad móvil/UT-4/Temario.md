## PERMISOS EN PLATAFORMAS MÓVILES

### Android

Un gran salto en los permisos se produjo en 2015 con la versión Marshmallow, que introdujo los permisos en tiempo de ejecución (Cuando se inicie la app).

Actualmente, en Android 15 los permisos se definen a nivel de recurso (camara, microfono etc) y el propio sistema a través de una lista de archivos permite el acceso a esos recursos o no

Dentro de esas listas tenemos

Datos restringidos
Acciones restringidas


#### Permisos de instalación

**Normales**
- Acceso a los datos y apps más alla de la zona de pruebas
- Ejemplos
	- Consultas el estado de la red
	- Acceso a bluetooth

**Tipos**
- Normales
	- Se conceden automaticamente
	- No representan riesgos para el usuario
- Peligrosos
	- Requieren consentimiento del usuario
	- Acceso a cámara, microfono ubicacion, contactos

**Firma**
- Si x aplicación tiene x permiso, puede darle ese permiso a otra app que tenga la misma firma
- La firma no se puede editar, si se cambia y se actualiza la app, deberá de pedir de nuevo los permisos

**Permisos especiales**
- Deben ser concedidos manualmente por el usuario y otorgan un nivel de acceso y control más profundo
- Estos se guardan en AndroidManifest.xml
	- Permisos
	- Componentes de la app
	- Funciones de hardware y software

#### Auditoria de apps
Google usa un sistema de firmas digitales para que las apps puedan ejecutarse en Android
Este sistema incluye 2 firmas
- Clave de carga
	- La crea el desarrollador para confirmar que la app es autentica
- Clave de firma
	- La aplica google play y es verificada por el SO antes de permitir que la app se ejecute




