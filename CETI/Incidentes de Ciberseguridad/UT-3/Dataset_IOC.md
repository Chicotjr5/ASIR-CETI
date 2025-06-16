<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
</details>

---

## Introducción

En esta actividad se va a crear un dataset el cual contenga diferentes IoC e IoA.

Los IoC son Indicadores de Compromiso, fragmentos de evidencia que indican que un sistema ha sido comprometido o atacado. Estos pueden incluir direcciones IP maliciosas, hashes de archivos maliciosos, URLs de sitios web de phishing, patrones de tráfico inusuales, entre otros. 

Los IoC nos ayudan a identificar brechas de seguridad.

Los IoA son señales que apuntan a comportamientos que podrían estar asociados con un ataque en curso, pero que no necesariamente indican una intrusión efectiva aún.

Se refieren a las tácticas usadas por los atacantes.

---

### Crear Dataset

El primer paso para realizar es crear un dataset. 
Este dataset no es real y contiene datos inventados. 
Los campos que se han registrado en este dataset son: 

- Tiempo
- IP_Origen
- IP_Destino
- Puerto
- Hash
- Dominio
- Evento
- Descripción
- ID_usuario

![image](https://github.com/user-attachments/assets/e13fee29-5e7b-4c64-b5df-3f624e7b3729)

Este dataset tampoco se ha hecho a mano (ni lo ha generado chatgpt) si no que se ha usado un script (creado por chatgpt) para crearlo.

Este script puede crear dataset con los campos que he especificado anteriormente.

![image](https://github.com/user-attachments/assets/957cd7f0-9e73-4018-8ce5-3b21ff46e52d)

```bash
import pandas as pd 
import random 
import os 
from datetime import datetime, timedelta 
  
# Funciones auxiliares para generar datos aleatorios 
def random_ip(is_local=False): 
    if is_local: 
        # IP local en rangos típicos (ej: 192.168.x.y) 
        return f"192.168.{random.randint(0, 255)}.{random.randint(1, 254)}" 
    else: 
        # IP externa: números entre 1 y 223 en el primer octeto (evitando reservados) 
        return f"{random.randint(1, 
223)}.{random.randint(0,255)}.{random.randint(0,255)}.{random.randint(1,254)}" 
  
def random_port(is_normal=True): 
    if is_normal: 
        return random.choice([80, 443, 22, 21, 25]) 
    else: 
        return random.choice([6666, 9999, 31337, 8080, 1337]) 
  
def random_hash(hash_type="MD5"): 
    hex_chars = '0123456789abcdef' 
    if hash_type == "MD5": 
        return ''.join(random.choice(hex_chars) for _ in range(32)) 
    elif hash_type == "SHA256": 
        return ''.join(random.choice(hex_chars) for _ in range(64)) 
    elif hash_type == "SHA1": 
        return ''.join(random.choice(hex_chars) for _ in range(40)) 
    else: 
        return '' 
  
def random_timestamp(normal=True): 
    base_date = datetime(2025, 1, 15) 
    if normal: 
        # Eventos normales: hora entre las 8:00 y las 22:00 
        hour = random.randint(8, 21) 
    else: 
        # Eventos IoC: hora en rango inusual: entre 23:00 y 07:00. 
        # Se elige aleatoriamente entre 23-23:59 o 0-7:00. 
        if random.random() < 0.5: 
            hour = random.randint(23, 23) 
        else: 
            hour = random.randint(0, 7) 
    minute = random.randint(0, 59) 
    second = random.randint(0, 59) 
    return base_date.replace(hour=hour, minute=minute, second=second) 
  
def random_domain(is_malicious=False): 
    safe_domains = ["example.com", "safe-site.org", "corporate.net", "trusted.com"] 
    malicious_keywords = ["malware", "bots", "malicioso", "ransomware", "bytes"] 
    if is_malicious: 
        keyword = random.choice(malicious_keywords) 
        return f"{keyword}download.com" 
    else: 
        return random.choice(safe_domains) 
  
def random_user_id():
 return f"user{random.randint(1, 100):03d}" 
  
# Listas de eventos 
normal_events = [ 
    "Autenticación exitosa", 
    "Acceso autorizado", 
    "Acceso a repositorio", 
    "Descarga exitosa" 
] 
  
ioc_events = [ 
    "Fallo de autenticación", 
    "Descarga desde sitio malicioso", 
    "Acceso autorizado en horario inusual", 
    "Proceso ejecutándose sospechoso", 
    "Conexión desde puerto inusual", 
    "Ejecución de comando inusual", 
    "Acceso a dominio malicioso", 
    "Hash malicioso detectado", 
    "Múltiples intentos de login" 
] 
  
# Número total de registros y distribución 
total_registros = 70 
num_normales = 10  # registros de actividad normal 
num_ioc = total_registros - num_normales 
  
records = [] 
  
# Generar registros normales 
for _ in range(num_normales): 
    event = random.choice(normal_events) 
    ts = random_timestamp(normal=True) 
    ip_origen = random_ip(is_local=True) 
    ip_destino = random_ip(is_local=True) 
    puerto = random_port(is_normal=True) 
    htype = random.choice(["SHA256", "SHA1"])  # para actividad normal, usamos hashes más 
robustos 
    hash_val = random_hash(htype) if random.random() > 0.1 else ""  # 10% probabilidad de 
faltar hash 
    dominio = random_domain(is_malicious=False) 
    descripcion = f"{event} realizada con éxito en condiciones normales." 
    id_usuario = random_user_id()  # en eventos de autenticación normal siempre se asigna 
usuario 
     
    # Con una pequeña probabilidad, dejar campos vacíos (simulando datos faltantes) 
    if random.random() < 0.1: 
        ip_origen = "" 
    if random.random() < 0.1: 
        ip_destino = "" 
     
    record = { 
        "Tiempo": ts.strftime("%Y-%m-%d %H:%M:%S"), 
        "IP_Origen": ip_origen, 
        "IP_destino": ip_destino, 
        "Puerto": puerto, 
        "hash": hash_val, 
        "Dominio": dominio, 
        "evento": event, 
        "Descripcion": descripcion, 
        "ID_usuario": id_usuario 
    } 
    records.append(record) 
  
# Generar registros IoC 
for _ in range(num_ioc): 
 event = random.choice(ioc_events) 
    # Para "Acceso autorizado en horario inusual" forzamos tiempo fuera de horario normal; 
para otros, usamos tiempo IoC 
    if event == "Acceso autorizado en horario inusual": 
        ts = random_timestamp(normal=False) 
    else: 
        ts = random_timestamp(normal=False) 
    # Para eventos IoC, generalmente se usan IP externas en origen y IP internas en 
destino 
    ip_origen = random_ip(is_local=False) 
    ip_destino = random_ip(is_local=True) 
    puerto = random_port(is_normal=False) if random.random() < 0.7 else 
random_port(is_normal=True) 
    # Para IoC, se desea que los hashes sean de tipo MD5 (según el filtro "todo lo que sea 
hash md5") 
    htype = "MD5" 
    hash_val = random_hash(htype) if random.random() > 0.1 else "" 
    # Dominio malicioso en su mayoría, pero a veces puede ser benigno 
    dominio = random_domain(is_malicious=True) if random.random() < 0.8 else 
random_domain(is_malicious=False) 
    descripcion = f"{event} detectado, se recomienda revisión inmediata." 
    # En eventos relacionados con autenticación, se asigna un ID de usuario; en otros, 
puede faltar 
    if "Autenticación" in event or "login" in event: 
        id_usuario = random_user_id() 
    else: 
        id_usuario = random_user_id() if random.random() < 0.7 else "" 
     
    # Con una probabilidad, dejar campos vacíos para simular datos faltantes 
    if random.random() < 0.1: 
        ip_origen = "" 
    if random.random() < 0.1: 
        ip_destino = "" 
    if random.random() < 0.05: 
        ts = None  # simulamos falta de timestamp 
     
    record = { 
        "Tiempo": ts.strftime("%Y-%m-%d %H:%M:%S") if ts else "", 
        "IP_Origen": ip_origen, 
        "IP_destino": ip_destino, 
        "Puerto": puerto, 
        "hash": hash_val, 
        "Dominio": dominio, 
        "evento": event, 
        "Descripcion": descripcion, 
        "ID_usuario": id_usuario 
    } 
    records.append(record) 
  
# Crear DataFrame y mezclar registros 
df_dataset = pd.DataFrame(records) 
df_dataset = df_dataset.sample(frac=1).reset_index(drop=True) 
  
# Guardar el dataset en un archivo CSV 
output_file = os.path.join(os.getcwd(), 
'dataset_ciberseguridad_completo.csv')df_dataset.to_csv(output_file, index=False) 
print(f"Dataset generado: {output_file}") 
```

---

### Filtrar dataset creado

El siguiente paso es “preprocesar” el dataset. 
Que quiere decir esto? 
Pasaré el dataset creado por un script el cual elimine aquellos registros con valores nulos en los campos **IP_Origen** e **IP_Destino**. 

Esos registros , por defecto no serán indicativos de IoC puesto que les falta información esencial para ello, así que es mejor quitarlos. 

El script indica el nº de registros filtrados, los registros con valores nulos y el nº de registros eliminados, además de crear un nuevo dataset ya con los datos filtrados. 

![image](https://github.com/user-attachments/assets/424774a5-c1d7-488f-a687-dac2ada62e16)

```bash
import pandas as pd 
# Solicitar el nombre del archivo al usuario 
input_file = input("Archivo a subir: ") 
try: 
# Cargar el dataset 
df = pd.read_csv(input_file) 
# Contar registros antes del filtrado 
total_registros = len(df) 
valores_nulos = df['IP_Origen'].isna().sum() + df['IP_destino'].isna().sum() 
# Filtrar filas donde IP_Origen o IP_Destino sean nulas 
df_filtrado = df.dropna(subset=['IP_Origen', 'IP_destino']) 
# Contar registros eliminados 
registros_eliminados = total_registros - len(df_filtrado) 
# Guardar el nuevo dataset 
output_file = "dataset_filtrado.csv" 
df_filtrado.to_csv(output_file, index=False) 
# Mostrar resumen 
print("\nResumen del filtrado:") 
print(f"- Total de registros analizados: {total_registros}") 
print(f"- Registros con valores nulos en IP_Origen o IP_destino: {valores_nulos}") 
print(f"- Registros eliminados: {registros_eliminados}") 
print(f"- Nuevo dataset guardado como: {output_file}") 
except FileNotFoundError: 
print("Error: El archivo no se encontró. Verifica el nombre y la ubicación.") 
except Exception as e:
print(f"Error inesperado: {e}")
```

---

### Detectar IoC

El siguiente paso es detectar los IoC y los IoA. 
Para ello uso un script el cual detecta los IoC según los siguientes parámetros:

- Hora de registro fuera del horario normal
  - 23:00-7:00
-  IP origen maliciosas
-  IP destino maliciosas
-  Hashes maliciosos
-  Dominios maliciosos
  - Malware
  - Ransomware
  - Malicioso
  - Bots
  - Download
- Palabras clave en la descripción del evento
  - Autenticación fallida
  - Intentos de login
  - Malicioso
  - Acceso malicioso
  - Horario inusual

Toda esta información se indica en el propio script.
Ejecuto el script y me genera 2 archivos: 

![image](https://github.com/user-attachments/assets/d4c8192f-c13d-4ae8-b65b-73be37fbb98b)

**ioc_detectados.csv** el cual contiene los IoC. 
**registros_a_revisar** el cual contiene los registros que no clasifican como un IoC pero que igualmente habría que revisar. 

![image](https://github.com/user-attachments/assets/68b85b37-eabc-4710-bc20-4bfe5eee03f0)

```bash
import pandas as pd 
from datetime import datetime 
  
# Configuración inicial 
archivo_input = input("Archivo a subir: ") 
output_file = "ioc_detectados.csv" 
  
# Listas de referencia para detección de IoC 
ioc_config = { 
    "ip_maliciosas": {"192.168.1.100", "10.0.0.50"}, 
    "puertos_inusuales": {6666, 1337, 4444}, 
    "horas_peligrosas": list(range(23, 24)) + list(range(0, 8)), 
    "hashes_maliciosos": {"d41d8cd98f00b204e9800998ecf8427e", 
"9e107d9d372bb6826bd81d3542a419d6"}, 
    "dominios_maliciosos": {"malware.com", "phishing.net", "ransomware.biz"}, 
    "palabras_clave_desc": ["malicioso", "ataque", "exploit", "inyección", "phishing"] 
} 
  
def analizar_registro(row): 
    motivos = [] 
     
    # Detección de IPs maliciosas 
    if row["IP_Origen"] in ioc_config["ip_maliciosas"]: 
        motivos.append(f"IP origen maliciosa: {row['IP_Origen']}") 
    if row["IP_Destino"] in ioc_config["ip_maliciosas"]: 
        motivos.append(f"IP destino maliciosa: {row['IP_Destino']}") 
     
    # Detección de puertos inusuales 
    if row["Puerto"] in ioc_config["puertos_inusuales"]: 
        motivos.append(f"Puerto inusual: {row['Puerto']}") 
     
    # Detección de actividad en horas peligrosas 
    try: 
        hora = pd.to_datetime(row["Tiempo"]).hour 
        if hora in ioc_config["horas_peligrosas"]: 
            motivos.append(f"Actividad en hora peligrosa: {hora}:00") 
    except: 
        pass 
     
    # Detección de hashes maliciosos 
    if pd.notna(row["hash"]) and row["hash"] in ioc_config["hashes_maliciosos"]: 
        motivos.append(f"Hash malicioso detectado: {row['hash']}") 
     
    # Detección de dominios maliciosos 
    if pd.notna(row["Dominio"]) and row["Dominio"] in ioc_config["dominios_maliciosos"]: 
        motivos.append(f"Dominio malicioso: {row['Dominio']}") 
     
    # Detección de palabras clave en descripción 
    if any(palabra in str(row["Descripcion"]).lower() for palabra in 
ioc_config["palabras_clave_desc"]): 
        motivos.append("Descripción contiene términos sospechosos")
 return motivos 
  
def generar_reporte(detections): 
    reporte = [] 
    for idx, (_, row) in enumerate(detections.iterrows(), 1): 
        entrada = ( 
            f"Registro {idx}\n" 
            f"Tiempo: {row['Tiempo']}\n" 
            f"IP_Origen: {row['IP_Origen']}\n" 
            f"IP_Destino: {row['IP_Destino']}\n" 
            f"Puerto: {row['Puerto']}\n" 
            f"Hash: {row['hash']}\n" 
            f"Dominio: {row['Dominio']}\n" 
            f"Evento: {row['evento']}\n" 
            f"Descripción: {row['Descripcion']}\n" 
            f"ID_usuario: {row.get('ID_usuario', 'N/A')}\n" 
            "--------------\n" 
            f"Motivo IoC:\n- " + "\n- ".join(row['Motivos_IoC']) + "\n\n" 
        ) 
        reporte.append(entrada) 
    return reporte 
  
try: 
    # Cargar y limpiar datos 
    df = pd.read_csv(archivo_input).fillna({ 
        "IP_Origen": "Desconocido", 
        "IP_Destino": "Desconocido", 
        "Puerto": 0, 
        "Tiempo": datetime.now().strftime("%Y-%m-%d %H:%M:%S"), 
        "hash": "N/A", 
        "Dominio": "N/A", 
        "Descripcion": "" 
    }) 
  
    # Aplicar detección de IoC 
    df['Motivos_IoC'] = df.apply(analizar_registro, axis=1) 
    detecciones = df[df['Motivos_IoC'].apply(len) > 0] 
  
    if not detecciones.empty: 
        # Generar reporte formateado 
        reporte_completo = generar_reporte(detecciones) 
         
        # Guardar en archivo 
        with open(output_file, 'w', encoding='utf-8') as f: 
            f.writelines(reporte_completo) 
         
        print(f"Análisis completado. Se detectaron {len(detecciones)} IoC.") 
        print(f"Reporte guardado en: {output_file}") 
    else: 
        print("No se detectaron indicadores de compromiso.") 
  
except Exception as e: 
    print(f"Error durante el análisis: {str(e)}") 
    print("Verifique: ") 
    print("- Formato del archivo de entrada") 
    print("- Nombres de columnas requeridos") 
    print("- Valores faltantes en registros críticos")
```

---

### Modificación script

Como dije antes, el script tenía en su propio código los parámetros para detectar que un registro era un IoC pero esto no es del todo eficiente debido a que si hay un ataque que se hace desde una IP que no esta dentro del script, pues no lo 
detectará. 

La cosa sería pasarle esta información a través de un fichero (fichero el cual habría que ir actualizando a medida que se detectan nuevas IP maliciosas). 

La información que le pasaré a través de los archivos será:

- IP
- Puertos
- Hashes
- Dominios
- Palabras

![image](https://github.com/user-attachments/assets/a5c9afa5-19d3-4152-82bc-f990c62674c2)

Los datos se dispondrán de la siguiente forma:
- 192.168.1.1
- 192.168.1.2
- 192.168.1.3

El script modificado:

```bash
import pandas as pd 
import os 
from datetime import datetime 
  
# Solicitar archivos de configuración 
ioc_files = { 
    "ip_maliciosas": input("Archivo con IPs maliciosas: "), 
    "puertos_inusuales": input("Archivo con puertos inusuales: "), 
    "hashes_maliciosos": input("Archivo con hashes maliciosos: "), 
    "dominios_maliciosos": input("Archivo con dominios maliciosos: "), 
    "palabras_clave_desc": input("Archivo con palabras clave sospechosas: ") 
} 
  
# Solicitar archivo de entrada 
archivo_input = input("Archivo con registros a analizar: ") 
output_file = "ioc_detectados.csv" 
output_revisar = "registros_a_revisar.csv" 
  
# Cargar listas de IoC desde archivos 
def cargar_lista(archivo): 
    try: 
        with open(archivo, 'r', encoding='utf-8') as f: 
            return set(line.strip() for line in f if line.strip()) 
    except FileNotFoundError: 
        print(f"[ADVERTENCIA] No se encontró el archivo: {archivo}. Se usará una lista 
vacía.") 
        return set() 
  
ioc_config = { 
    "ip_maliciosas": cargar_lista(ioc_files["ip_maliciosas"]), 
    "puertos_inusuales": {int(p) for p in cargar_lista(ioc_files["puertos_inusuales"])} if 
ioc_files["puertos_inusuales"] else set(), 
    "horas_peligrosas": list(range(23, 24)) + list(range(0, 8)), 
    "hashes_maliciosos": cargar_lista(ioc_files["hashes_maliciosos"]), 
    "dominios_maliciosos": cargar_lista(ioc_files["dominios_maliciosos"]), 
    "palabras_clave_desc": cargar_lista(ioc_files["palabras_clave_desc"]) 
} 
  
def analizar_registro(row): 
    motivos = [] 
     
    if row["IP_Origen"] in ioc_config["ip_maliciosas"]: 
        motivos.append(f"IP origen maliciosa: {row['IP_Origen']}") 
    if row["IP_Destino"] in ioc_config["ip_maliciosas"]: 
        motivos.append(f"IP destino maliciosa: {row['IP_Destino']}") 
     
    if row["Puerto"] in ioc_config["puertos_inusuales"]: 
        motivos.append(f"Puerto inusual: {row['Puerto']}") 
     
    try: 
        hora = pd.to_datetime(row["Tiempo"]).hour 
        if hora in ioc_config["horas_peligrosas"]: 
            motivos.append(f"Actividad en hora peligrosa: {hora}:00") 
    except: 
        pass 
     
    if pd.notna(row["hash"]) and row["hash"] in ioc_config["hashes_maliciosos"]: 
        motivos.append(f"Hash malicioso detectado: {row['hash']}") 
     
    if pd.notna(row["Dominio"]) and row["Dominio"] in ioc_config["dominios_maliciosos"]: 
        motivos.append(f"Dominio malicioso: {row['Dominio']}") 
     
    if any(palabra in str(row["Descripcion"]).lower() for palabra in 
ioc_config["palabras_clave_desc"]): 
        motivos.append("Descripción contiene términos sospechosos")
 return motivos 
  
def generar_reporte(detections): 
    reporte = [] 
    for idx, (_, row) in enumerate(detections.iterrows(), 1): 
        entrada = ( 
            f"Registro {idx}\n" 
            f"Tiempo: {row['Tiempo']}\n" 
            f"IP_Origen: {row['IP_Origen']}\n" 
            f"IP_Destino: {row['IP_Destino']}\n" 
            f"Puerto: {row['Puerto']}\n" 
            f"Hash: {row['hash']}\n" 
            f"Dominio: {row['Dominio']}\n" 
            f"Evento: {row['evento']}\n" 
            f"Descripción: {row['Descripcion']}\n" 
            f"ID_usuario: {row.get('ID_usuario', 'N/A')}\n" 
            "--------------\n" 
            f"Motivo IoC:\n- " + "\n- ".join(row['Motivos_IoC']) + "\n\n" 
        ) 
        reporte.append(entrada) 
    return reporte 
  
try: 
    df = pd.read_csv(archivo_input).fillna({ 
        "IP_Origen": "Desconocido", 
        "IP_Destino": "Desconocido", 
        "Puerto": 0, 
        "Tiempo": datetime.now().strftime("%Y-%m-%d %H:%M:%S"), 
        "hash": "N/A", 
        "Dominio": "N/A", 
        "Descripcion": "" 
    }) 
  
    df['Motivos_IoC'] = df.apply(analizar_registro, axis=1) 
    detecciones = df[df['Motivos_IoC'].apply(len) > 0] 
    no_ioc = df[df['Motivos_IoC'].apply(len) == 0] 
  
    if not detecciones.empty: 
        with open(output_file, 'w', encoding='utf-8') as f: 
            f.writelines(generar_reporte(detecciones)) 
        print(f"Análisis completado. Se detectaron {len(detecciones)} IoC.") 
        print(f"Reporte guardado en: {output_file}") 
    else: 
        print("No se detectaron indicadores de compromiso.") 
     
    no_ioc.to_csv(output_revisar, index=False, encoding='utf-8') 
    print(f"Registros sin IoC guardados en: {output_revisar}") 
  
except Exception as e: 
    print(f"Error durante el análisis: {str(e)}")
```

![image](https://github.com/user-attachments/assets/2cde96cc-c9f8-4b4a-83dc-8312ec855b00)

---

### Usar datos reales

Tenemos una base sólida de la que seguir trabajando puesto que ya sabemos cómo crear un script para detectar IoC, ahora solo faltaría adaptarlo para que funcione pasandole datasets reales.

Además de que los archivos que pide también deberían de tener información real (sobre todo en las IP y hashes maliciosas).

Genero un script el cual me descarga datasets de diferentes fuentes.

```bash
import requests 
import os 
  
# Diccionario de datasets disponibles 
DATASETS = { 
    "1": { 
        "nombre": "ThreatFox (dominios maliciosos)", 
        "url": "https://threatfox.abuse.ch/export/json/", 
        "formato": "json" 
    }, 
    "2": { 
        "nombre": "Bazaar (hashes maliciosos recientes)", 
        "url": "https://bazaar.abuse.ch/export/csv/recent/", 
        "formato": "csv" 
    }, 
    "3": { 
        "nombre": "Lista de IPs maliciosas FireHOL", 
        "url": "https://iplists.firehol.org/files/firehol_level1.netset", 
        "formato": "txt" 
    } 
} 
  
def descargar_dataset(opcion): 
    if opcion not in DATASETS: 
        print("❌ Opción no válida.") 
        return 
     
    dataset = DATASETS[opcion] 
    url = dataset["url"] 
    nombre_archivo = f"dataset_{opcion}.{dataset['formato']}" 
     
    print(f"📥 Descargando {dataset['nombre']}...") 
     
    try: 
        response = requests.get(url, timeout=15) 
        response.raise_for_status() 
         
        with open(nombre_archivo, "w", encoding="utf-8") as archivo: 
            archivo.write(response.text) 
         
        print(f"✅ Dataset guardado en: {nombre_archivo}") 
     
    except requests.RequestException as e: 
        print(f"❌ Error al descargar {dataset['nombre']}: {e}") 
  
def main():
print("📂 Datasets disponibles para descargar:") 
for key, dataset in DATASETS.items(): 
print(f"{key}. {dataset['nombre']}") 
opcion = input("🔹 Ingresa el número del dataset que quieres descargar: ") 
descargar_dataset(opcion) 
if __name__ == "__main__": 
main() 
```

![image](https://github.com/user-attachments/assets/ec007c33-e574-4687-9bd1-3d75f2284e08)

↓

![image](https://github.com/user-attachments/assets/c38f0168-56ef-4330-a698-a3935eec9691)

Ya con el dataset descargado el siguiente paso es obtener datos reales de hashes maliciosos. 

Para ello genero un nuevo script que me descarga y genera una lista con hashes maliciosos MD5. 

También descarga una lista con IP maliciosas pero justamente en este dataset no hay nada de IP así que no lo usaré.

![image](https://github.com/user-attachments/assets/7abd1385-c8e6-4179-bf3d-3011aec4c10c)

↓

![image](https://github.com/user-attachments/assets/c0508ce3-7207-4e90-9445-3c180e176bb4)

```bash
import requests 
import re 
  
def descargar_y_guardar(url, nombre_archivo, limpiar_ip=False): 
    try: 
        response = requests.get(url) 
        response.raise_for_status() 
        datos = response.text.splitlines()  # Separar por líneas 
  
        if limpiar_ip: 
            # Extraer solo la IP sin la máscara de red 
            datos = [re.sub(r"/\d+$", "", linea) for linea in datos if 
re.match(r"^\d+\.\d+\.\d+\.\d+(/\d+)?$", linea)] 
  
        with open(nombre_archivo, 'w') as archivo: 
            archivo.write("\n".join(datos) + "\n") 
  
        print(f"Datos guardados en {nombre_archivo}") 
    except requests.RequestException as e: 
        print(f"Error al descargar desde {url}: {e}") 
  
# URLs de listas de IPs maliciosas 
urls_ips_maliciosas = [ 
    'https://iplists.firehol.org/files/firehol_level1.netset',  # Lista FireHOL 
] 
  
# URL de una lista de hashes maliciosos 
url_hashes_maliciosos = 'https://bazaar.abuse.ch/export/txt/md5/recent/' 
  
# Descargar y guardar las listas de IPs maliciosas, limpiando las máscaras de red 
for idx, url in enumerate(urls_ips_maliciosas, start=1): 
    descargar_y_guardar(url, f'ips_maliciosas_{idx}.txt', limpiar_ip=True) 
  
# Descargar y guardar la lista de hashes maliciosos 
descargar_y_guardar(url_hashes_maliciosos, 'hashes_maliciosos.txt')
```
Los campos que contiene este data set son:


| Campo           | Descripción                                                                             |
| --------------- | --------------------------------------------------------------------------------------- |
| first_seen_utc  | Fecha y hora en la que se detectó el archivo por primera vez                            |
| sha256_hash     | Hash SHA-256 del archivo                                                                |
| md5_hash        | Hash MD5 del archivo                                                                    |
| sha1_hash       | Hash SHA-1 del archivo                                                                  |
| reporter        | Fuente que reportó el archivo                                                           |
| file_name       | Nombre del archivo detectado.                                                           |
| file_type_guess | Tipo de archivo inferido                                                                |
| mime_type       | Tipo MIME del archivo                                                                   |
| signature       | Firma o nombre del malware si está identificado                                         |
| clamav          | Resultado del escaneo con ClamAV                                                        |
| vtpercent       | Porcentaje de motores antivirus en VirusTotal que detectaron el archivo como malicioso. |
| imphash         | Hash de la tabla de importación de un ejecutable PE                                     |
| ssdeep          | Hash difuso (fuzzy hashing) que permite detectar similitudes entre archivos.            |
| tlsh            | Otro tipo de hash difuso para análisis de similitud entre archivos.                     |


Lo primero que hacía con el dataset era preprocesarlo para eliminar todos aquellos registros que no tenían valores en campos importantes. 
En mi caso he generado un script el cual crea un nuevo dataset del cual se hayan borrado los registros con valores nulos en los campos del hash.

![image](https://github.com/user-attachments/assets/bef4cd60-b5a9-4422-9bc6-629ae0dc06d6)

```bash
import pandas as pd 
import csv 
def filtrar_dataset(): 
# Pedir al usuario el archivo a filtrar 
archivo = input("Introduce el nombre del archivo CSV a filtrar: ") 
try: 
# Leer el archivo CSV con parámetros para manejar líneas problemáticas 
df = pd.read_csv(archivo, on_bad_lines='warn', delimiter=',', 
quoting=csv.QUOTE_MINIMAL) 
# Filtrar los registros que tengan al menos un valor en los campos especificados 
df_filtrado = df.dropna(subset=["sha256_hash", "md5_hash", "sha1_hash", 
"reporter", "vtpercent"]) 
# Guardar el archivo filtrado en el mismo directorio 
df_filtrado.to_csv("dataset_filtrado2.csv", index=False) 
print("El archivo filtrado se ha guardado como 'dataset_filtrado2.csv'.") 
except FileNotFoundError: 
print(f"El archivo '{archivo}' no se encuentra en el directorio.") 
except Exception as e: 
print(f"Ocurrió un error: {e}") 
# Ejecutar la función 
filtrar_dataset() 
```

Ya con el dataset filtrado, voy a crear el script para que detecte IoC. 
En mi caso solo le he pedido 1 condición la cual es que compare todos los hash MD5 del dataset con los del archivo que he generado previamente: 

![image](https://github.com/user-attachments/assets/436538db-bc0a-4193-9b52-b030e4e10d47)

Pero al ejecutarlo, no había ningún hash MD5 malicioso (de los que estuviera en la lista). 

```bash
import pandas as pd 
  
def detectar_hashes_maliciosos(): 
    # Pedir al usuario los archivos necesarios 
    archivo_hashes_maliciosos = input("Introduce el nombre del archivo de hashes 
maliciosos (ej. hashes_maliciosos.txt): ") 
    archivo_dataset = input("Introduce el nombre del archivo CSV del dataset a analizar 
(ej. dataset.csv): ") 
  
    try: 
        # Cargar el archivo de hashes maliciosos 
        with open(archivo_hashes_maliciosos, 'r') as file: 
            hashes_maliciosos = {line.strip() for line in file.readlines()}  # Leer y 
eliminar saltos de línea 
  
        # Leer el dataset CSV 
        df = pd.read_csv(archivo_dataset) 
  
        # Filtrar las filas que contienen hashes MD5 (suponemos que están en la columna 
'md5_hash') 
        if 'md5_hash' not in df.columns: 
            print("El dataset no contiene una columna 'md5_hash'.") 
            return 
  
        # Filtrar los registros que tienen un hash MD5 presente en el archivo de hashes 
maliciosos 
        df_maliciosos = df[df['md5_hash'].isin(hashes_maliciosos)] 
  
        # Si se encontraron hashes maliciosos 
        if not df_maliciosos.empty: 
            # Guardar los resultados en un nuevo archivo CSV 
            df_maliciosos.to_csv("dataset_maliciosos.csv", index=False) 
            print("Se han encontrado hashes maliciosos. El archivo 
'dataset_maliciosos.csv' ha sido guardado.") 
        else: 
            print("No se han encontrado hashes maliciosos en el dataset.") 
  
    except FileNotFoundError as e: 
        print(f"Error: No se encontró el archivo. Detalles: {e}") 
    except Exception as e: 
        print(f"Ocurrió un error: {e}") 
  
# Ejecutar la función 
detectar_hashes_maliciosos()
```








