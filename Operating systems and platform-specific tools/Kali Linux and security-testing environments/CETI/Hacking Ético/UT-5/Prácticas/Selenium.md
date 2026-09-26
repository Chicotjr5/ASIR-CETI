<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Código](#código)
 - [Explicación](#explicación)
 - [Ejecución del script](#ejecución-del-script)
</details>

---

## Introducción

En esta práctica se debía de usar Selenium en un escenario a nuestra elección. 
En mi caso, he elegido realizar una busqueda automatizada de objetivos expuestos, usando shodan.

El script que he creado realiza las siguientes acciones:

- Abre Chrome
- Accede a shodan
- Inicia sesión con una cuenta
- Le pregunta al usuario que información ha de buscar dándole diferentes opciones
- Busca la información
  - Limitada a 20 objetivos, ya que aunque al realizar la busqueda, salga un nº mayor a 20, con las cuentas gratuitas de shodan solo se pueden ver las primeras 2 páginas, que contienen 10 resultados cada una, asi que tenemos un máximo de 20 resultados
-  Guarda cada objetivo descubierto en un archivo llamado Resultados_X.txt

Para que el script funcione correctamente con shodan, he buscado el código HTML de shodan cuando haces la busqueda y dentro de cada uno de los resultados objetivos.

---

### Código

```bash
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver import Chrome
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import time
import os

USER = "tuntuntuntun"
PASSWORD = "FerAlo55#"
MAX_REGISTROS = 20  # Límite de 20 registros


def construir_query():
    print("\n¿Qué filtros quieres aplicar? (Pulsa Enter para omitir)")
    port = input("Puerto (ej. 80, 443, 22...) (port): ").strip()
    country = input("País (ej. ES, US, FR) (country): ").strip()
    city = input("Ciudad (ej. Madrid, Soria, Barcelona) (city): ").strip()
    product = input("Producto (ej. Apache, nginx, OpenSSH) (product): ").strip()
    os_filtro = input("Sistema Operativo (ej. Windows, Linux) (os): ").strip()

    filtros = []
    if port:
        filtros.append(f"port:{port}")
    if country:
        filtros.append(f"country:{country}")
    if city:
        filtros.append(f"city:{city}")
    if product:
        filtros.append(f"product:{product}")
    if os_filtro:
        filtros.append(f"os:{os_filtro}")

    query = " ".join(filtros)
    return query if query else ""


def iniciar_driver():
    service = Service(ChromeDriverManager().install())
    options = webdriver.ChromeOptions()
    options.add_experimental_option("excludeSwitches", ["enable-automation"])
    options.add_experimental_option('useAutomationExtension', False)
    options.add_argument("--disable-blink-features=AutomationControlled")
    options.add_argument("--window-size=1920,1080")

    driver = Chrome(service=service, options=options)
    driver.execute_cdp_cmd("Page.addScriptToEvaluateOnNewDocument", {
        "source": "Object.defineProperty(navigator, 'webdriver', {get: () => undefined})"
    })
    return driver


def login_shodan(driver, wait):
    driver.get("https://www.shodan.io/")
    login_btn = wait.until(EC.element_to_be_clickable((By.CLASS_NAME, "highlight-success")))
    login_btn.click()
    wait.until(EC.presence_of_element_located((By.ID, "username"))).send_keys(USER)
    driver.find_element(By.ID, "password").send_keys(PASSWORD)
    driver.find_element(By.CSS_SELECTOR, "input.button.button-primary").click()
    print("[✓] Login correcto")


def buscar(driver, wait, query):
    search_box = wait.until(EC.presence_of_element_located((By.ID, "search-query")))
    search_box.clear()
    search_box.send_keys(query)
    search_box.submit()
    print("[✓] Búsqueda lanzada")
    wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, "div.result")))
    time.sleep(2)
    return query


def obtener_resultados_pagina(driver):
    return driver.find_elements(By.CSS_SELECTOR, "div.result div.heading a.title")


def scrapear_detalle_ip(driver, wait, url):
    info = {"URL": url}
    try:
        ip_element = wait.until(EC.presence_of_element_located((By.ID, "host-title")))
        info["IP"] = ip_element.text.strip()

        general_table = wait.until(EC.presence_of_element_located((
            By.XPATH, "//a[@name='general']/following-sibling::table"
        )))
        rows = general_table.find_elements(By.TAG_NAME, "tr")
        general_data = {}
        for row in rows:
            cols = row.find_elements(By.TAG_NAME, "td")
            if len(cols) == 2:
                key = cols[0].text.strip()
                value = cols[1].text.strip()
                general_data[key] = value
        info["General Information"] = general_data

        ports_section = wait.until(EC.presence_of_element_located((By.ID, "ports")))
        ports = [p.text.strip() for p in ports_section.find_elements(By.TAG_NAME, "a")]
        info["Open Ports"] = ports

        technologies = []
        categories = driver.find_elements(By.CSS_SELECTOR, "#http-components .category")
        for category in categories:
            category_name = category.find_element(By.CSS_SELECTOR, ".category-heading").text.strip()
            tech_items = category.find_elements(By.CSS_SELECTOR, ".technology-name")
            for item in tech_items:
                tech_name = item.text.strip()
                technologies.append(f"{category_name}: {tech_name}")
        info["Web Technologies"] = technologies

        vulnerabilities = []
        try:
            vuln_section = driver.find_element(By.XPATH, "//a[@name='vulns']/following-sibling::div")
            vuln_rows = vuln_section.find_elements(By.CSS_SELECTOR, "div.vuln-row")
            for row in vuln_rows:
                vuln_id = row.find_element(By.TAG_NAME, "a").text.strip()
                vuln_desc = row.text.replace(vuln_id, "").strip()
                vulnerabilities.append(f"{vuln_id}: {vuln_desc}")
        except:
            pass
        info["Vulnerabilities"] = vulnerabilities

    except Exception as e:
        print(f"[!] Error procesando {url}: {str(e)}")
        with open("errores.txt", "a", encoding="utf-8") as errfile:
            errfile.write(f"Error con {url}: {str(e)}\n")

    return info


def guardar_registro(archivo, info, contador, query):
    if contador == 1:
        archivo.write(f"Búsqueda realizada: {query}\n")
        archivo.write("=" * 50 + "\n\n")
    archivo.write(f"=== REGISTRO {contador} ===\n")
    archivo.write(f"=== IP/HOST ===\n{info.get('IP', 'No disponible')}\n\n")

    archivo.write("=== GENERAL INFORMATION ===\n")
    for key, value in info.get("General Information", {}).items():
        archivo.write(f"{key}: {value}\n")

    archivo.write("\n=== OPEN PORTS ===\n")
    archivo.write(", ".join(info.get("Open Ports", ["No disponible"])))

    archivo.write("\n\n=== WEB TECHNOLOGIES ===\n")
    archivo.write("\n".join(info.get("Web Technologies", ["No disponible"])))

    archivo.write("\n\n=== VULNERABILITIES ===\n")
    archivo.write("\n".join(info.get("Vulnerabilities", ["No encontradas"])))
    archivo.write("\n\n" + "-" * 50 + "\n\n")


def main():
    driver = iniciar_driver()
    wait = WebDriverWait(driver, 15)
    num_archivo = 1
    while os.path.exists(f"Resultados_{num_archivo}.txt"):
        num_archivo += 1

    try:
        query = construir_query()
        login_shodan(driver, wait)
        buscar(driver, wait, query)

        with open(f"Resultados_{num_archivo}.txt", "w", encoding="utf-8") as archivo:
            contador_registros = 0
            pagina_actual = 1
            urls_procesadas = set()

            while contador_registros < MAX_REGISTROS:
                print(f"\n[+] Procesando página {pagina_actual}")
                resultados = obtener_resultados_pagina(driver)
                if not resultados:
                    break

                for elemento in resultados:
                    if contador_registros >= MAX_REGISTROS:
                        break

                    href = elemento.get_attribute("href")
                    url = "https://www.shodan.io" + href if href.startswith("/host/") else href
                    if url in urls_procesadas:
                        continue

                    contador_registros += 1
                    urls_procesadas.add(url)
                    print(f"[{contador_registros}/{MAX_REGISTROS}] Procesando: {url}")
                    driver.get(url)
                    info = scrapear_detalle_ip(driver, wait, url)
                    guardar_registro(archivo, info, contador_registros, query)
                    driver.back()
                    wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, "div.result")))
                    time.sleep(1)

                if contador_registros >= MAX_REGISTROS:
                    break

                try:
                    next_btn = driver.find_element(By.CSS_SELECTOR, "a.button[href*='page=']:not(.disabled)")
                    print("[+] Pasando a siguiente página...")
                    next_btn.click()
                    wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, "div.result")))
                    time.sleep(2)
                    pagina_actual += 1
                except Exception as e:
                    print(f"[!] No se pudo cambiar de página: {str(e)}")
                    break

        print(f"\n[✓] Proceso completado. Total de registros: {contador_registros}")
        print(f"[✓] Resultados guardados en Resultados_{num_archivo}.txt")

    except Exception as e:
        print(f"[!] Error general: {str(e)}")
        with open("error_debug.html", "w", encoding="utf-8") as f:
            f.write(driver.page_source)
        print("[!] HTML guardado en error_debug.html")

    finally:
        driver.quit()


if __name__ == "__main__":
    main()

```

---

### Explicación

```bash
USER = "tuntuntuntun" 
PASSWORD = "FerAlo55#" 
MAX_REGISTROS = 20 
```

- Guarda el usuario y contraseña para Shodan.
- Limita el número de IPs que se van a procesar.

---

```bash
def construir_query(): 
print("\n¿Qué filtros quieres aplicar? (Pulsa Enter para omitir)") 
port = input("Puerto (ej. 80, 443, 22...) (port): ").strip() 
country = input("País (ej. ES, US, FR) (country): ").strip() 
city = input("Ciudad (ej. Madrid, Soria, Barcelona) (city): ").strip() 
product = input("Producto (ej. Apache, nginx, OpenSSH) (product): ").strip() 
os_filtro = input("Sistema Operativo (ej. Windows, Linux) (os): ").strip() 
filtros = [] 
if port: 
filtros.append(f"port:{port}") 
if country: 
filtros.append(f"country:{country}") 
if city: 
filtros.append(f"city:{city}") 
if product: 
filtros.append(f"product:{product}") 
if os_filtro: 
filtros.append(f"os:{os_filtro}") 
query = " ".join(filtros) 
return query if query else "" 
```

Permite al usuario construir interactivamente una consulta en Shodan. Pregunta por: 

- Puerto
- País
- Ciudad
- Producto
- Sistema Operativo

Solo los filtros rellenados se usan. 

---

```bash
def iniciar_driver(): 
service = Service(ChromeDriverManager().install()) 
options = webdriver.ChromeOptions() 
options.add_experimental_option("excludeSwitches", ["enable-automation"]) 
options.add_experimental_option('useAutomationExtension', False) 
options.add_argument("--disable-blink-features=AutomationControlled") 
options.add_argument("--window-size=1920,1080") 
driver = Chrome(service=service, options=options) 
driver.execute_cdp_cmd("Page.addScriptToEvaluateOnNewDocument", { 
"source": "Object.defineProperty(navigator, 'webdriver', {get: () => undefined})" 
}) 
return driver 
```

Configura Selenium para:

- Usar Chrome.
- Evitar que detecten que es un navegador automatizado
- Abrir el navegador con un tamaño adecuado.

---

```bash
def login_shodan(driver, wait): 
driver.get("https://www.shodan.io/") 
login_btn 
= 
wait.until(EC.element_to_be_clickable((By.CLASS_NAME, 
success"))) 
login_btn.click() 
wait.until(EC.presence_of_element_located((By.ID, "username"))).send_keys(USER) 
driver.find_element(By.ID, "password").send_keys(PASSWORD) 
driver.find_element(By.CSS_SELECTOR, "input.button.button-primary").click() 
print("[✓] Login correcto") 
```

Automatiza el inicio de sesión en [shodan](https://shodan.io):

- Carga la web.
- Hace clic en el botón “Login”.
- Introduce usuario y contraseña.
- Pulsa en “Iniciar sesión”.

---

```bash
def buscar(driver, wait, query): 
search_box = wait.until(EC.presence_of_element_located((By.ID, "search-query"))) 
search_box.clear() 
search_box.send_keys(query) 
search_box.submit() 
print("[✓] Búsqueda lanzada") 
wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, "div.result"))) 
time.sleep(2) 
return query 
```

Realiza la búsqueda con los filtros proporcionados por el usuario:

- Escribe el texto en el buscador.
- Envía el formulario.
- Espera a que se carguen los resultados.

---

```bash
def obtener_resultados_pagina(driver): 
    return driver.find_elements(By.CSS_SELECTOR, "div.result div.heading a.title") 
```

Extrae los enlaces (<a>) de cada resultado que lleva a los detalles de una IP. 

---

```bash
def scrapear_detalle_ip(driver, wait, url): 
    info = {"URL": url} 
  
    try: 
        ip_element = wait.until(EC.presence_of_element_located((By.ID, "host-title"))) 
        info["IP"] = ip_element.text.strip() 
  
        general_table = wait.until(EC.presence_of_element_located((By.XPATH, 
"//a[@name='general']/following-sibling::table"))) 
        rows = general_table.find_elements(By.TAG_NAME, "tr") 
        general_data = {} 
        for row in rows: 
            cols = row.find_elements(By.TAG_NAME, "td") 
            if len(cols) == 2: 
                key = cols[0].text.strip() 
                value = cols[1].text.strip() 
                general_data[key] = value 
        info["General Information"] = general_data 
  
        ports_section = wait.until(EC.presence_of_element_located((By.ID, "ports"))) 
        ports = [p.text.strip() for p in ports_section.find_elements(By.TAG_NAME, "a")] 
        info["Open Ports"] = ports 
  
        technologies = [] 
        categories = driver.find_elements(By.CSS_SELECTOR, "#http-components .category") 
        for category in categories: 
            category_name = category.find_element(By.CSS_SELECTOR, ".category
heading").text.strip() 
            tech_items = category.find_elements(By.CSS_SELECTOR, ".technology-name") 
            for item in tech_items: 
                tech_name = item.text.strip() 
                technologies.append(f"{category_name}: {tech_name}") 
        info["Web Technologies"] = technologies 
  
        vulnerabilities = [] 
        try: 
            vuln_section = driver.find_element(By.XPATH, "//a[@name='vulns']/following
sibling::div") 
            vuln_rows = vuln_section.find_elements(By.CSS_SELECTOR, "div.vuln-row") 
            for row in vuln_rows: 
                vuln_id = row.find_element(By.TAG_NAME, "a").text.strip() 
                vuln_desc = row.text.replace(vuln_id, "").strip() 
                vulnerabilities.append(f"{vuln_id}: {vuln_desc}") 
        except: 
            pass 
        info["Vulnerabilities"] = vulnerabilities 
  
    except Exception as e: 
        print(f"[!] Error procesando {url}: {str(e)}") 
        with open("errores.txt", "a", encoding="utf-8") as errfile: 
            errfile.write(f"Error con {url}: {str(e)}\n") 
  
    return info
```

Cuando se abre una IP concreta, extrae toda su información

- IP
- General Information (tabla)
- Open Ports
- Web Technologies
- Vulnerabilities (si existen)

Todos estos datos se guardan en un diccionario.

---

```bash
def guardar_registro(archivo, info, contador, query): 
if contador == 1: 
archivo.write(f"Búsqueda realizada: {query}\n") 
archivo.write("="*50 + "\n\n") 
archivo.write(f"=== REGISTRO {contador} ===\n") 
archivo.write(f"=== IP/HOST ===\n{info.get('IP', 'No disponible')}\n\n") 
archivo.write("=== GENERAL INFORMATION ===\n") 
for key, value in info.get("General Information", {}).items(): 
archivo.write(f"{key}: {value}\n") 
archivo.write("\n=== OPEN PORTS ===\n") 
archivo.write(", ".join(info.get("Open Ports", ["No disponible"]))) 
archivo.write("\n\n=== WEB TECHNOLOGIES ===\n") 
archivo.write("\n".join(info.get("Web Technologies", ["No disponible"]))) 
archivo.write("\n\n=== VULNERABILITIES ===\n") 
archivo.write("\n".join(info.get("Vulnerabilities", ["No encontradas"]))) 
archivo.write("\n\n" + "-"*50 + "\n\n") 
```

Escribe en un archivo .txt la información obtenida de cada IP: 
Guarda el número de registro. 

- La IP.
- Los datos generales.
- Los puertos.
- Las tecnologías.
- Las vulnerabilidades.

Además, al principio del archivo, se incluye la consulta usada.

---

```bash
def main(): 
driver = iniciar_driver() 
wait = WebDriverWait(driver, 15) 
num_archivo = 1 
while os.path.exists(f"Resultados_{num_archivo}.txt"): 
num_archivo += 1 
try: 
query = construir_query() 
login_shodan(driver, wait) 
buscar(driver, wait, query) 
with open(f"Resultados_{num_archivo}.txt", "w", encoding="utf-8") as archivo: 
contador_registros = 0 
pagina_actual = 1 
urls_procesadas = set() 
while contador_registros < MAX_REGISTROS: 
print(f"\n[+] Procesando página {pagina_actual}") 
resultados = obtener_resultados_pagina(driver) 
if not resultados: 
href 
"div.result"))) 
"a.button[href*='page=']:not(.disabled)") 
print("[+] Pasando a siguiente página...") 
next_btn.click() 
"div.result"))) 
break 
for elemento in resultados: 
if contador_registros >= MAX_REGISTROS: 
break 
href = elemento.get_attribute("href") 
url = "https://www.shodan.io" + href if href.startswith("/host/") else 
if url in urls_procesadas: 
continue 
contador_registros += 1 
urls_procesadas.add(url) 
print(f"[{contador_registros}/{MAX_REGISTROS}] Procesando: {url}") 
driver.get(url) 
info = scrapear_detalle_ip(driver, wait, url) 
guardar_registro(archivo, info, contador_registros, query) 
driver.back() 
wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, 
time.sleep(1) 
if contador_registros >= MAX_REGISTROS: 
break 
try: 
next_btn 
= 
wait.until(EC.presence_of_all_elements_located((By.CSS_SELECTOR, 
time.sleep(2) 
pagina_actual += 1 
except Exception as e: 
print(f"[!] No se pudo cambiar de página: {str(e)}") 
break
print(f"\n[✓] Proceso completado. Total de registros: {contador_registros}") 
print(f"[✓] Resultados guardados en Resultados_{num_archivo}.txt") 
except Exception as e: 
print(f"[!] Error general: {str(e)}") 
with open("error_debug.html", "w", encoding="utf-8") as f: 
f.write(driver.page_source) 
print("[!] HTML guardado en error_debug.html") 
finally: 
driver.quit() 
```

Es la función principal que: 
- Inicia el navegador y la espera. 
- Llama a construir_query() y buscar(). 
- Abre un archivo Resultados_X.txt nuevo para escribir.

Entra en un bucle: 

- Procesa cada resultado.
- Evita duplicados.
- Abre cada enlace.
- Extrae datos y guarda.
- Vuelve atrás para continuar.
- Cambia de página si es necesario.

Finaliza mostrando mensaje y cerrando el navegador.

---

### Ejecución del script

Con todo explicado, ejecuto el script: 

![4 1](https://github.com/user-attachments/assets/54059929-df16-467d-894c-0c3fbeb54bcd)

↓

![image](https://github.com/user-attachments/assets/7e0243f9-ce57-4b26-a711-f399af98c543)

↓

![image](https://github.com/user-attachments/assets/add0f14e-2ee8-446f-8d1d-a3ad506e9727)

Este es el archivo que ha generado:

![image](https://github.com/user-attachments/assets/32fd198d-6d06-47b7-8a94-f8a8efa707d2)











