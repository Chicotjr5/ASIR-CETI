# Technology inventory

This inventory groups the operating systems, software, platforms, languages and protocols that appear in the exercises. It is organized by operating system first, as a starting point for navigating the repository by technology rather than by subject. Some tools appear in more than one environment. Links point to representative exercises; theoretical mentions are not always evidence that a product was installed or successfully configured.

## Operating systems and platform-specific tools

### Windows

- **Versions covered:** Windows XP, 7, 8, 10; Windows 2000 and Windows Server 2003, 2008, 2012, 2016 and 2022. See [Windows installation and version exercises](<Operating systems and platform-specific tools/Operating-system concepts/ASIR/1º AÑO/Implantación de Sistemas Operativos/UT-1/Actividades_varias.md>), [Windows Server 2008 / Active Directory](<Operating systems and platform-specific tools/Windows/ASIR/1º AÑO/Implantación de Sistemas Operativos/UT-14/Active_Directory_WServer_2008.md>) and [Active Directory on Windows Server](<Operating systems and platform-specific tools/Windows/ASIR/2º AÑO/Administración de Sistemas Operativos/UT-8/AD-Windows.md>).
- **Administration:** Command Prompt (CMD), PowerShell, Windows Registry, disk management, boot configuration, services, user accounts, network profiles, Group Policy (GPO), Active Directory / AD DS and Windows Defender. See [CMD exercises](<Operating systems and platform-specific tools/Windows/ASIR/1º AÑO/Implantación de Sistemas Operativos/UT-4/Comandos_Simples_CMD.md>), [PowerShell exercises](<Operating systems and platform-specific tools/Windows/ASIR/2º AÑO/Administración de Sistemas Operativos/UT-9/Powershell.md>), [Registry](<Operating systems and platform-specific tools/Windows/ASIR/1º AÑO/Implantación de Sistemas Operativos/UT-3/Registro_Windows.md>) and [GPO administration](<Operating systems and platform-specific tools/Windows/ASIR/2º AÑO/Administración de Sistemas Operativos/UT-9/Administracion_de_GPO.md>).
- **Server and application software:** Internet Information Services (IIS), hMailServer, Microsoft SQL Server, Windows FTP and WebDAV services. See [Windows web server](<Cross-platform software and technology/Networking, infrastructure and protocols/ASIR/2º AÑO/Servicios de Red e Internet/UT-4/Servidor_Web_Windows_1.md>), [hMailServer](<Cross-platform software and technology/Networking, infrastructure and protocols/ASIR/2º AÑO/Servicios de Red e Internet/UT-6/HMailServer_1.md>) and [SQL Server installation](<Cross-platform software and technology/Web, markup, programming and databases/ASIR/2º AÑO/Administración de sistemas gestores de bases de datos/UT-1/Instalacion_SQL_Server.md>).
- **Other Windows topics:** NTFS, event/log analysis, forensic acquisition and analysis, and Windows network configuration. See [Windows forensic information](<Cross-platform software and technology/Forensics and incident response/CETI/Análisis Forense Informático/UT-1/Prácticas/Obtener_información_en_Windows.md>) and [Windows evidence acquisition](<Cross-platform software and technology/Forensics and incident response/CETI/Análisis Forense Informático/UT-1/Prácticas/Adquisición_de_evidencias_no_volatiles_en_Windows.md>).

### Ubuntu and Linux

- **Distributions explicitly present:** Ubuntu, Debian, Kubuntu and Raspberry Pi OS. General Linux administration also appears throughout the archive. See [Ubuntu network exercises](<Cross-platform software and technology/Networking, infrastructure and protocols/ASIR/1º AÑO/Planificación y Administración de Redes/UT-6/Actividades_redes_Ubuntu.md>), [Linux installation](<Operating systems and platform-specific tools/Ubuntu and Linux/ASIR/1º AÑO/Implantación de Sistemas Operativos/UT-9/Instalación_Linux.md>) and [Raspberry Pi setup](<Operating systems and platform-specific tools/Other specialist operating systems and devices/CETI/Bastionado de Redes y Sistemas/UT-1/Práctica/Configurar_Raspberry_Pi.md>).
- **System administration:** Bash and Linux shell commands, users and permissions, disks and filesystems, backups, SSH, routing, and package management with `apt`.
- **Server software and services:** Apache HTTP Server, Nginx, DNS, DHCP, FTP/ProFTPD, WebDAV, Samba/SMB, NFS, OpenLDAP, FreeRADIUS, Fail2ban, and mail services including SquirrelMail. See [Apache on Linux](<Cross-platform software and technology/Networking, infrastructure and protocols/ASIR/2º AÑO/Servicios de Red e Internet/UT-4/Apache_1.md>), [Linux FTP](<Cross-platform software and technology/Networking, infrastructure and protocols/ASIR/2º AÑO/Servicios de Red e Internet/UT-5/FTP_Linux_1.md>), [OpenLDAP](<Operating systems and platform-specific tools/Ubuntu and Linux/ASIR/2º AÑO/Administración de Sistemas Operativos/UT-4/OPENLDAP.md>) and [Samba](<Operating systems and platform-specific tools/Ubuntu and Linux/ASIR/2º AÑO/Administración de Sistemas Operativos/UT-5/SAMBA.md>).
- **Linux security and monitoring:** Port knocking, firewall configuration, VPNs, Wireshark, Nmap and server hardening. Some tools are also used from Kali Linux.

### Kali Linux and security-testing environments

- Kali Linux is used for ethical-hacking and cybersecurity labs, including network, web and wireless security exercises. See [Nmap scripts](<Operating systems and platform-specific tools/Kali Linux and security-testing environments/CETI/Hacking Ético/UT-3/Prácticas/Scripts_nmap.md>), [Wi-Fi assessment](<Operating systems and platform-specific tools/Kali Linux and security-testing environments/CETI/Hacking Ético/UT-2/Prácticas/Ataque_red_wifi.md>) and [Burp Suite](<Operating systems and platform-specific tools/Kali Linux and security-testing environments/CETI/Hacking Ético/UT-3/Prácticas/Burpsuite.md>).
- **Network / wireless tools:** Nmap and NSE scripts; Airgeddon; Aircrack-ng tools (`airmon-ng`, `airodump-ng`); Wireshark; Metasploit; Hydra; and network scanning scripts.
- **Web and vulnerability testing:** Burp Suite, OWASP Juice Shop, DVWA, Nessus, OpenVAS, RapidScan, Nuclei, Selenium and WAF testing.
- **OSINT and reconnaissance:** Google dorks and online lookup/reconnaissance tools.

### Other specialist operating systems and devices

- **CAINE Linux:** Digital-forensics environment used with Guymager for disk imaging. See [disk acquisition and Autopsy analysis](<Cross-platform software and technology/Forensics and incident response/CETI/Análisis Forense Informático/UT-1/Prácticas/Adquisición_y_análisis_de_un_disco_duro_con_Autposy.md>).
- **Tsurugi Linux:** Forensic distribution referenced in the forensic coursework.
- **Security Onion:** Ubuntu-based security monitoring distribution. Its documented components include Suricata, Zeek, Elasticsearch, Logstash, Kibana, TheHive, Cortex and OSSEC. The exercise records attempted installations, but notes that the installations did not complete successfully. See [Security Onion lab](<Cross-platform software and technology/Forensics and incident response/CETI/Incidentes de Ciberseguridad/UT-2/Prácticas/Security_Onion.md>).
- **T-Pot:** Docker-based honeypot platform used in the [ASIR project](<Proyectos/ASIR/Proyecto.md>), alongside Ubuntu Server, Kali Linux and Kubuntu.
- **Android:** Android phones, Android Debug Bridge (ADB), Android Platform Tools, Andriller and MI Unlock are used in mobile-device exercises. See [ADB introduction](<Cross-platform software and technology/Forensics and incident response/CETI/Análisis Forense Informático/UT-2/Practicas/Primera_toma_de_contacto_con_ADB.md>) and [Andriller](<Cross-platform software and technology/Forensics and incident response/CETI/Análisis Forense Informático/UT-2/Practicas/Andriller.md>).
- **macOS / Mac OS:** Mentioned in operating-system comparison material.

## Cross-platform software and technology

### Virtualization and lab environments

- **Oracle VirtualBox** and **VMware** for virtual machines, virtual disks, snapshots, shared folders and isolated network labs. See [VirtualBox](<Cross-platform software and technology/Virtualization and lab environments/ASIR/1º AÑO/Implantación de Sistemas Operativos/UT-2/VirtualBox.md>) and [VMware](<Cross-platform software and technology/Virtualization and lab environments/ASIR/1º AÑO/Implantación de Sistemas Operativos/UT-2/VMware.md>).
- **Docker** and sandboxing/container concepts appear in security and deployment material.
- Virtual labs include client/server machines, internal networks, NAT, host-only networking and virtual firewalls.

### Forensics and incident response

- **Autopsy** for disk-image analysis; **Guymager** for acquisition; **Volatility** for memory forensics; **ExifTool** for metadata; and **Andriller / ADB** for Android investigations. See [Volatility](<Cross-platform software and technology/Forensics and incident response/CETI/Análisis Forense Informático/UT-1/Prácticas/Volatility.md>) and [metadata acquisition](<Cross-platform software and technology/Forensics and incident response/CETI/Análisis Forense Informático/UT-2/Practicas/Adquisicion_de_informacion.md>).
- Other tools listed in the forensics overview include **FTK Imager, EnCase, PhotoRec, Scalpel, Foremost, dc3dd, Recuva, FOCA, X1 Social Discovery, OllyDbg, Radare, Process Explorer, PDFStreamDumper, OSForensics** and **DEFT Linux**. These are catalogued in the [forensics overview](<Cross-platform software and technology/Forensics and incident response/CETI/Análisis Forense Informático/UT-1/Temario.md>); not all have a separate hands-on exercise.
- **YARA** rules, **MITRE Caldera**, Windows event logs, and incident-response workflows. See [YARA rules](<Cross-platform software and technology/Forensics and incident response/CETI/Incidentes de Ciberseguridad/UT-3/Prácticas/Reglas_Yara.md>) and [MITRE Caldera](<Cross-platform software and technology/Forensics and incident response/CETI/Incidentes de Ciberseguridad/UT-4/Prácticas/MITRE-Caldera.md>).
- **Splunk** and the **ELK stack** (Elasticsearch, Logstash, Kibana) for log collection, search and visualization. See [Splunk](<Cross-platform software and technology/Forensics and incident response/CETI/Incidentes de Ciberseguridad/UT-5/Prácticas/Splunk.md>).
- **Suricata**, **Zeek**, **Snort** and **Security Onion** for intrusion detection / network security monitoring; **pfSense** and **OPNsense** for firewall and routing labs.

### Networking, infrastructure and protocols

- **Network platforms and monitoring:** Cisco technologies, Cisco Packet Tracer, PRTG, Raspberry Pi, access points and VLAN labs.
- **Core protocols and services:** IPv4/IPv6, Ethernet, TCP/IP, DNS, DHCP, HTTP/HTTPS, FTP, SSH, SMTP/IMAP, LDAP, SMB, NFS, RADIUS, VPN, RDP, VLAN, RIP/RIPv2, NAT and wireless/Wi-Fi security.
- **Security and cryptography:** TLS/SSL certificates and ciphers, hashes, digital signatures, GPG/OpenPGP, OpenSSL, DNIe and certificate authorities.
- **Firewalls / network access:** pfSense, OPNsense, Windows Firewall, WAFs, port knocking, authentication protocols and VPN configuration.

### Web, markup, programming and databases

- **Web fundamentals:** HTML, CSS, JavaScript, PHP, HTTP/HTTPS and web-server configuration. See [web markup exercises](<Cross-platform software and technology/Web, markup, programming and databases/ASIR/1º AÑO/Lenguaje de Marcas/UT-3/Ejercicio_1.md>) and [XSS lab](<Cross-platform software and technology/Web, markup, programming and databases/CETI/Puesta en Producción Segura/UT-3/Prácticas/XSS.md>).
- **Structured data and transformations:** XML, DTD, XML Schema (XSD), XPath and XSLT.
- **Programming / scripting:** Bash, PowerShell, Python and JavaScript appear in scripts and practical exercises; PHP is covered in web-development material.
- **Databases:** Microsoft SQL Server, MySQL and relational database design/SQL.
- **Web applications / CMS:** Joomla, WordPress, Feng Office, phpMyAdmin, XAMPP and Juice Shop. See [Joomla](<Cross-platform software and technology/Web, markup, programming and databases/ASIR/2º AÑO/Implantación de Aplicaciones Web/UT-2/Joomla.md>) and [Feng Office](<Cross-platform software and technology/Web, markup, programming and databases/ASIR/2º AÑO/Implantación de Aplicaciones Web/UT-1/FengOffice.md>).

### User, productivity and supporting software

- **Email and collaboration:** Thunderbird, SquirrelMail, hMailServer and Feng Office.
- **Office and documents:** Microsoft Office formats (Word, Excel and PowerPoint), LibreOffice and PDF/document handling.
- **Hardware and imaging:** BIOS/UEFI, Clonezilla, diagnostic utilities, disk images and virtual disk formats.
- **Testing and automation:** Selenium.

## Notes

- This is an inventory of technologies found in the coursework, not a claim that every product was deployed in a production environment.
- Some names occur in theoretical notes, comparisons or tool overviews; use the linked practice to check the specific context and outcome.
- Similar technologies are intentionally grouped together, and the same platform may be relevant under more than one operating system.
