# 🛠 Diagnóstico de Red - PowerShell Script

Este script en PowerShell permite ejecutar pruebas de diagnóstico de red básicas e intermedias desde un menú interactivo, ideal para administradores de sistemas, técnicos de soporte o cualquier profesional de TI que desee agilizar tareas de troubleshooting.

## 🎯 Funcionalidades

El script despliega un **menú interactivo en consola** con 8 opciones esenciales para revisar conectividad, configuración de red, tabla de rutas y más.

### Opciones disponibles:

1. **Ping a 8.8.8.8** – Verifica la conectividad básica con el exterior (Google DNS).
2. **Tracert a google.com** – Muestra el recorrido de paquetes hasta el destino.
3. **ipconfig /all** – Visualiza toda la configuración de red del dispositivo.
4. **Flush DNS** – Limpia la caché DNS local.
5. **netstat -an** – Lista todas las conexiones de red activas.
6. **nslookup google.com** – Consulta manual al servidor DNS.
7. **arp -a** – Muestra las IPs y sus direcciones MAC asociadas en caché.
8. **route print** – Imprime la tabla de rutas de red del sistema.

---

## 🚀 Cómo usarlo

1. Abre PowerShell como Administrador.
2. Copia el código del script y guárdalo como `diagnostico-red.ps1`.
3. Ejecuta el script con el siguiente comando:

```powershell
.\diagnostico-red.ps1


===== Menú de Diagnóstico de Red =====
1. Ping a 8.8.8.8
2. Tracert a google.com
3. ipconfig /all
4. Limpiar caché DNS (ipconfig /flushdns)
5. netstat -an
6. nslookup google.com
7. arp -a
8. route print
9. Salir

🧠 Beneficios
Reúne comandos comunes de diagnóstico en un solo lugar.

Ahorra tiempo en soporte técnico.

Ideal para educación, formación o automatización.

No requiere instalación de software adicional.

📋 Requisitos
PowerShell 5.1 o superior

Sistema operativo Windows 10/11

Permisos de administrador (recomendado)

👨‍💻 Autor
Edwin Durán Ospina
Especialista en Ciberseguridad, Redes y Automatización
LinkedIn | GitHub: @edwindospina

