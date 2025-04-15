function Mostrar-Menu {
    Clear-Host
    Write-Host "===== Menú de Diagnóstico de Red =====" -ForegroundColor Cyan
    Write-Host "1. Ping a 8.8.8.8"
    Write-Host "2. Tracert a google.com"
    Write-Host "3. ipconfig /all"
    Write-Host "4. Limpiar caché DNS (ipconfig /flushdns)"
    Write-Host "5. netstat -an"
    Write-Host "6. nslookup google.com"
    Write-Host "7. arp -a"
    Write-Host "8. route print"
    Write-Host "9. Salir"
    Write-Host ""
}

function Ejecutar-Opcion {
    param($opcion)
    switch ($opcion) {
        "1" {
            Write-Host "`nEjecutando ping a 8.8.8.8..." -ForegroundColor Yellow
            ping 8.8.8.8
        }
        "2" {
            Write-Host "`nEjecutando tracert a google.com..." -ForegroundColor Yellow
            tracert google.com
        }
        "3" {
            Write-Host "`nMostrando ipconfig /all..." -ForegroundColor Yellow
            ipconfig /all
        }
        "4" {
            Write-Host "`nLimpiando caché DNS..." -ForegroundColor Yellow
            ipconfig /flushdns
        }
        "5" {
            Write-Host "`nMostrando conexiones activas con netstat..." -ForegroundColor Yellow
            netstat -an
        }
        "6" {
            Write-Host "`nRealizando consulta DNS con nslookup..." -ForegroundColor Yellow
            nslookup google.com
        }
        "7" {
            Write-Host "`nMostrando tabla ARP..." -ForegroundColor Yellow
            arp -a
        }
        "8" {
            Write-Host "`nMostrando tabla de rutas..." -ForegroundColor Yellow
            route print
        }
        "9" {
            Write-Host "`nSaliendo del menú. ¡Hasta pronto!" -ForegroundColor Green
            exit
        }
        default {
            Write-Host "`nOpción inválida. Intenta de nuevo." -ForegroundColor Red
        }
    }
    Write-Host "`nPresiona cualquier tecla para volver al menú..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

do {
    Mostrar-Menu
    $opcion = Read-Host "Selecciona una opción"
    Ejecutar-Opcion $opcion
} while ($true)
