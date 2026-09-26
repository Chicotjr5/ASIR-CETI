# Technology inventory

This inventory groups the operating systems, software, platforms, languages and protocols that appear in the exercises. It is organized by operating system first, as a starting point for navigating the repository by technology rather than by subject. Some tools appear in more than one environment. Links point to representative exercises; theoretical mentions are not always evidence that a product was installed or successfully configured.

## Operating systems and platform-specific tools

### Windows

- **Versions covered:** Windows XP, 7, 8, 10; Windows 2000 and Windows Server 2003, 2008, 2012, 2016 and 2022. See [Windows installation and version exercises](<Sistemas operativos y herramientas de plataforma/Conceptos de sistemas operativos/Conceptos generales/Actividades_varias.md>), [Windows Server 2008 / Active Directory](<Sistemas operativos y herramientas de plataforma/Windows/Windows Server/Active_Directory_WServer_2008.md>) and [Active Directory on Windows Server](<Sistemas operativos y herramientas de plataforma/Windows/Administración de dominios/Active Directory/AD-Windows.md>).
- **Administration:** Command Prompt (CMD), PowerShell, Windows Registry, disk management, boot configuration, services, user accounts, network profiles, Group Policy (GPO), Active Directory / AD DS and Windows Defender. See [CMD exercises](<Sistemas operativos y herramientas de plataforma/Windows/Configuración y administración/CMD y PowerShell/Comandos_Simples_CMD.md>), [PowerShell exercises](<Sistemas operativos y herramientas de plataforma/Windows/Administración de dominios/Directivas y perfiles/Powershell.md>), [Registry](<Sistemas operativos y herramientas de plataforma/Windows/Configuración y administración/Arranque y registro/Registro_Windows.md>) and [GPO administration](<Sistemas operativos y herramientas de plataforma/Windows/Administración de dominios/Directivas y perfiles/Administracion_de_GPO.md>).
- **Server and application software:** Internet Information Services (IIS), hMailServer, Microsoft SQL Server, Windows FTP and WebDAV services. See [Windows web server](<Software y tecnologías multiplataforma/Redes, infraestructura y protocolos/Servicios de red/Servidores web/Servidor_Web_Windows_1.md>), [hMailServer](<Software y tecnologías multiplataforma/Redes, infraestructura y protocolos/Servicios de red/Correo electrónico/HMailServer_1.md>) and [SQL Server installation](<Software y tecnologías multiplataforma/Web, lenguajes de marcado, programación y bases de datos/Bases de datos/Instalación y diseño/Instalacion_SQL_Server.md>).
- **Other Windows topics:** NTFS, event/log analysis, forensic acquisition and analysis, and Windows network configuration. See [Windows forensic information](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Investigación forense digital/Fundamentos y evidencias/Prácticas/Obtener_información_en_Windows.md>) and [Windows evidence acquisition](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Investigación forense digital/Fundamentos y evidencias/Prácticas/Adquisición_de_evidencias_no_volatiles_en_Windows.md>).

### Ubuntu and Linux

- **Distributions explicitly present:** Ubuntu, Debian, Kubuntu and Raspberry Pi OS. General Linux administration also appears throughout the archive. See [Ubuntu network exercises](<Software y tecnologías multiplataforma/Redes, infraestructura y protocolos/Redes locales y enrutamiento/Redes inalámbricas y rutas/Actividades_redes_Ubuntu.md>), [Linux installation](<Sistemas operativos y herramientas de plataforma/Ubuntu y Linux/Instalación y primeros pasos/Instalación_Linux.md>) and [Raspberry Pi setup](<Sistemas operativos y herramientas de plataforma/Otros sistemas operativos especializados y dispositivos/Raspberry Pi/Práctica/Configurar_Raspberry_Pi.md>).
- **System administration:** Bash and Linux shell commands, users and permissions, disks and filesystems, backups, SSH, routing, and package management with `apt`.
- **Server software and services:** Apache HTTP Server, Nginx, DNS, DHCP, FTP/ProFTPD, WebDAV, Samba/SMB, NFS, OpenLDAP, FreeRADIUS, Fail2ban, and mail services including SquirrelMail. See [Apache on Linux](<Software y tecnologías multiplataforma/Redes, infraestructura y protocolos/Servicios de red/Servidores web/Apache_1.md>), [Linux FTP](<Software y tecnologías multiplataforma/Redes, infraestructura y protocolos/Servicios de red/FTP/FTP_Linux_1.md>), [OpenLDAP](<Sistemas operativos y herramientas de plataforma/Ubuntu y Linux/Servicios de directorio/OPENLDAP.md>) and [Samba](<Sistemas operativos y herramientas de plataforma/Ubuntu y Linux/Servicios de archivos/SAMBA.md>).
- **Linux security and monitoring:** Port knocking, firewall configuration, VPNs, Wireshark, Nmap and server hardening. Some tools are also used from Kali Linux.

### Kali Linux and security-testing environments

- Kali Linux is used for ethical-hacking and cybersecurity labs, including network, web and wireless security exercises. See [Nmap scripts](<Sistemas operativos y herramientas de plataforma/Kali Linux y entornos de pruebas de seguridad/Auditoría de seguridad/Reconocimiento y escaneo/Prácticas/Scripts_nmap.md>), [Wi-Fi assessment](<Sistemas operativos y herramientas de plataforma/Kali Linux y entornos de pruebas de seguridad/Auditoría de seguridad/Seguridad inalámbrica/Prácticas/Ataque_red_wifi.md>) and [Burp Suite](<Sistemas operativos y herramientas de plataforma/Kali Linux y entornos de pruebas de seguridad/Auditoría de seguridad/Reconocimiento y escaneo/Prácticas/Burpsuite.md>).
- **Network / wireless tools:** Nmap and NSE scripts; Airgeddon; Aircrack-ng tools (`airmon-ng`, `airodump-ng`); Wireshark; Metasploit; Hydra; and network scanning scripts.
- **Web and vulnerability testing:** Burp Suite, OWASP Juice Shop, DVWA, Nessus, OpenVAS, RapidScan, Nuclei, Selenium and WAF testing.
- **OSINT and reconnaissance:** Google dorks and online lookup/reconnaissance tools.

### Other specialist operating systems and devices

- **CAINE Linux:** Digital-forensics environment used with Guymager for disk imaging. See [disk acquisition and Autopsy analysis](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Investigación forense digital/Fundamentos y evidencias/Prácticas/Adquisición_y_análisis_de_un_disco_duro_con_Autposy.md>).
- **Tsurugi Linux:** Forensic distribution referenced in the forensic coursework.
- **Security Onion:** Ubuntu-based security monitoring distribution. Its documented components include Suricata, Zeek, Elasticsearch, Logstash, Kibana, TheHive, Cortex and OSSEC. The exercise records attempted installations, but notes that the installations did not complete successfully. See [Security Onion lab](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Respuesta a incidentes/Auditoría y monitorización/Prácticas/Security_Onion.md>).
- **T-Pot:** Docker-based honeypot platform used in the [ASIR project](<Proyectos/ASIR/Proyecto.md>), alongside Ubuntu Server, Kali Linux and Kubuntu.
- **Android:** Android phones, Android Debug Bridge (ADB), Android Platform Tools, Andriller and MI Unlock are used in mobile-device exercises. See [ADB introduction](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Investigación forense digital/Análisis de móviles/Practicas/Primera_toma_de_contacto_con_ADB.md>) and [Andriller](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Investigación forense digital/Análisis de móviles/Practicas/Andriller.md>).
- **macOS / Mac OS:** Mentioned in operating-system comparison material.

## Cross-platform software and technology

### Virtualization and lab environments

- **Oracle VirtualBox** and **VMware** for virtual machines, virtual disks, snapshots, shared folders and isolated network labs. See [VirtualBox](<Software y tecnologías multiplataforma/Virtualización y entornos de laboratorio/Máquinas virtuales/VirtualBox.md>) and [VMware](<Software y tecnologías multiplataforma/Virtualización y entornos de laboratorio/Máquinas virtuales/VMware.md>).
- **Docker** and sandboxing/container concepts appear in security and deployment material.
- Virtual labs include client/server machines, internal networks, NAT, host-only networking and virtual firewalls.

### Forensics and incident response

- **Autopsy** for disk-image analysis; **Guymager** for acquisition; **Volatility** for memory forensics; **ExifTool** for metadata; and **Andriller / ADB** for Android investigations. See [Volatility](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Investigación forense digital/Fundamentos y evidencias/Prácticas/Volatility.md>) and [metadata acquisition](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Investigación forense digital/Análisis de móviles/Practicas/Adquisicion_de_informacion.md>).
- Other tools listed in the forensics overview include **FTK Imager, EnCase, PhotoRec, Scalpel, Foremost, dc3dd, Recuva, FOCA, X1 Social Discovery, OllyDbg, Radare, Process Explorer, PDFStreamDumper, OSForensics** and **DEFT Linux**. These are catalogued in the [forensics overview](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Investigación forense digital/Fundamentos y evidencias/Temario.md>); not all have a separate hands-on exercise.
- **YARA** rules, **MITRE Caldera**, Windows event logs, and incident-response workflows. See [YARA rules](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Respuesta a incidentes/Respuesta técnica/Prácticas/Reglas_Yara.md>) and [MITRE Caldera](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Respuesta a incidentes/Procedimientos de actuación/Prácticas/MITRE-Caldera.md>).
- **Splunk** and the **ELK stack** (Elasticsearch, Logstash, Kibana) for log collection, search and visualization. See [Splunk](<Software y tecnologías multiplataforma/Análisis forense y respuesta ante incidentes/Respuesta a incidentes/SOC y análisis de registros/Prácticas/Splunk.md>).
- **Suricata**, **Zeek**, **Snort** and **Security Onion** for intrusion detection / network security monitoring; **pfSense** and **OPNsense** for firewall and routing labs.

### Networking, infrastructure and protocols

- **Network platforms and monitoring:** Cisco technologies, Cisco Packet Tracer, PRTG, Raspberry Pi, access points and VLAN labs.
- **Core protocols and services:** IPv4/IPv6, Ethernet, TCP/IP, DNS, DHCP, HTTP/HTTPS, FTP, SSH, SMTP/IMAP, LDAP, SMB, NFS, RADIUS, VPN, RDP, VLAN, RIP/RIPv2, NAT and wireless/Wi-Fi security.
- **Security and cryptography:** TLS/SSL certificates and ciphers, hashes, digital signatures, GPG/OpenPGP, OpenSSL, DNIe and certificate authorities.
- **Firewalls / network access:** pfSense, OPNsense, Windows Firewall, WAFs, port knocking, authentication protocols and VPN configuration.

### Web, markup, programming and databases

- **Web fundamentals:** HTML, CSS, JavaScript, PHP, HTTP/HTTPS and web-server configuration. See [web markup exercises](<Software y tecnologías multiplataforma/Web, lenguajes de marcado, programación y bases de datos/Desarrollo web y XML/Tablas y formularios/Ejercicio_1.md>) and [XSS lab](<Software y tecnologías multiplataforma/Web, lenguajes de marcado, programación y bases de datos/Seguridad de aplicaciones/Prácticas/XSS.md>).
- **Structured data and transformations:** XML, DTD, XML Schema (XSD), XPath and XSLT.
- **Programming / scripting:** Bash, PowerShell, Python and JavaScript appear in scripts and practical exercises; PHP is covered in web-development material.
- **Databases:** Microsoft SQL Server, MySQL and relational database design/SQL.
- **Web applications / CMS:** Joomla, WordPress, Feng Office, phpMyAdmin, XAMPP and Juice Shop. See [Joomla](<Software y tecnologías multiplataforma/Web, lenguajes de marcado, programación y bases de datos/Aplicaciones web/Joomla/Joomla.md>) and [Feng Office](<Software y tecnologías multiplataforma/Web, lenguajes de marcado, programación y bases de datos/Aplicaciones web/Feng Office/FengOffice.md>).

### User, productivity and supporting software

- **Email and collaboration:** Thunderbird, SquirrelMail, hMailServer and Feng Office.
- **Office and documents:** Microsoft Office formats (Word, Excel and PowerPoint), LibreOffice and PDF/document handling.
- **Hardware and imaging:** BIOS/UEFI, Clonezilla, diagnostic utilities, disk images and virtual disk formats.
- **Testing and automation:** Selenium.

## Notes

- This is an inventory of technologies found in the coursework, not a claim that every product was deployed in a production environment.
- Some names occur in theoretical notes, comparisons or tool overviews; use the linked practice to check the specific context and outcome.
- Similar technologies are intentionally grouped together, and the same platform may be relevant under more than one operating system.
