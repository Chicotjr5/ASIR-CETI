## Control de Acceso
El control de acceso es una de las medidas más importantes para proteger los datos de una organización.
- Mecanismos físicos o lógicos
- BYOD - Traer tu propio dispositivo
- Estos mecanismos tienen una serie de logs para ver quien cuando y donde se conecta - Trazabilidad

## Pasos para aplicar la política

- Clasificar la información en función de su sensibilidad
- Identificar los grupos de usuarios 
- Asignar permisos a los grupos de usuarios
- Crear un procedimiento para solicitar acceso a la información confidencial.
  Este procedimiento ha de permitir a los usuarios solicitar acceso a la información confidencial cuando lo necesiten para su trabajo.
- Revisar periódicamente los permisos de acceso para asegurarse de que siguen siendo válidos.
- Revocar lo permisos de acceso cuando sea necesario
- Aplicar el principio de mínimo privilegio
- Priorizar la denegación a la autorización

## Seguridad perimetral

**Cortafuegos**
- Dispositivoq ue opera en la capa de red
- Controla el trafico de red aceptando o denegando el acceso según unas reglas definidas

**IDS/IPS**
- Dispositivo que opera en la capa de aplicación
- Inspeccionan el tráfico de red revisando las firmas de posibles ataques.

**HoneyPots**
- Sistemas que simulan sistemas vulnerables para atraer a atacantes y analizar sus comportamiento, para mejorar la seguridad en nuestra red.
- Tipos
	- Activo
	- Pasivo
	- Híbrido

**Sistemas anti-DDoS**
- Sistemas que intentan prevenir / mitigar DDoS-DoS

**Pasarelas antimalware**
- Opera en la capa de aplicación
- Inspeccionan el contenido del correo electrónico para detectar contenido malicioso y filtrarlo.

## MECANISMOS DE AUTENTICACIÓN

**Mecanismos físicos**
- El usuario debe poseer un elemento físico
	- LLave, token, dispositivo biométrico

**Mecanismos inherentes**
- Basadas en las características físicas/biológicas del usuario.
	- Huella dactilar, voz, reconocimiento facial

**Mecanismos basados en el conocimiento**
- El usuario debe saber algo que nadie más sepa
	- Contraseña
		- Recomendaciones
			- 12 caracteres
			- Letras, nº, caracteres especiales
			- Mayus, minus
			- Unica
			- No tenerla almacenada

## Factores de autenticación según la UIT

La UIT (Unión Internacional de Telecomunicaciones) define una serie de categorías para los factores de autenticación.

**La entidad conoce**
- Contraseñas
- Recuperación de contraseña
	- En caso de olvido, el sistema le solicita al usuario información adicional.

**La entidad tiene**
- Token físico
	- Dispositivo físico que tiene el usuario y que se usa para generar códigos de acceso únicos / verificar la identidad
- Nº de teléfono
	- usado para enviare al usuario mensajes con códigos de verificación

**La entidad es**
- Biométrica
	- Se basa en características físicas y únicas del usuario

**La entidad hace**
- Análisis de comportamiento
	- Se analiza ele comportamiento del usuario
		- Patrones de escritura
		- Forma de usar el ratón

**Localización de la entidad**
- Seguimiento IP
	- Se rastrea la dirección IP del usuario para determinar su ubicación.
- Geolocalización GPS
	- Se usa la tecnología GPS para determinar la ubicación física del usuario.

**Combinación de factores**
- Se pueden combinar 2 o más factores mencionados para aumentar la seguridad


## Autenticación basada en diferentes técnicas

**Criterio de usabilidad**
- Es facil de aprender para el usuario?
- Se requiere de un dispositivo adicional?

**Criterio de seguridad**
- Como de importante es la información que se protege?
- Se trata información personal o confidencial?

**Criterio de costes**
- Cual es el costo de implementar la técnica?
- Se requiere entrenamiento para los usuarios?

| Criterio   | Contraseña | Token | Biometría |
| ---------- | ---------- | ----- | --------- |
| Usabilidad | Alta       | Baja  | Media     |
| Seguridad  | Media      | Alta  | Alta      |
| Costes     | Baja       | Media | Alta      |

### Nociones básicas de criptografía

##### Cifrado simétrico
Se usa una clave para cifrar y para descifrar la información

**Características**
- Rápido
- Eficiente
- Ambas partes comparten la misma clave


##### Cifrado asimétrico
Se usan 2 claves diferentes, 
- Clave pública (usada para cifrar la información)
- Clave privada (usada para descifrar)

**Características**
- Más seguro
- Mas lento y tedioso

## Protocolos y políticas de autenticación basados en tokens

Los tokens son dispositivos que proporcionan una clave aleatoria (token), durante un tiempo reducido, en el cual el usuario deberá introducir el token para acceder a sus datos en una aplicación / sistema.


## Protocolos y políticas de autenticación basadas en características biométricas

#### Mediciones fisiológicas
Pueden ser de carácter morfológico o biológicas

**Morfológicas**
- Huellas dactilares
- Iris
- Retina de ojo
- Forma de la cara

**Biológicos**

En el ámbito informático no se usan, pero si en el caso de equipos médicos, forenses etc
- Muestras de ADN
- Muestras de sangre
- Muestras de orina

#### Mediciones de comportamiento
Corresponden al comportamiento

- Voz
- Patrón de la firma analógica
- Captura de las pulsaciones de teclas


En el ámbito informático, las mediciones fisiológicas son las más seguras y confiables y dentro de estas, las morfológicas son las más usadas

