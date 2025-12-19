# System Update Script

Script en Bash para actualizar y limpiar un sistema basado en Debian/Ubuntu de forma segura y automatizada.

## Descripción
Este script realiza una actualización completa del sistema utilizando `apt`.  
Antes de ejecutarse, comprueba que el usuario tenga permisos de administrador (root), ya que las operaciones de gestión de paquetes lo requieren.

El proceso incluye:
- Actualización de la lista de paquetes
- Actualización de los paquetes instalados
- Eliminación de paquetes innecesarios
- Limpieza de la caché de paquetes

## Funcionamiento
1. Verifica que el script se ejecute como root.
2. Ejecuta `apt update`.
3. Ejecuta `apt upgrade -y`.
4. Ejecuta `apt autoremove -y`.
5. Ejecuta `apt autoclean`.
6. Detiene la ejecución si ocurre cualquier error durante el proceso.

## Uso
Dar permisos de ejecución:
```bash
chmod +x system_update.sh
```

Ejecutar el script con privilegios de administrador:
```bash
sudo ./system_update.sh
```

## Salida esperada
Durante la ejecución se mostrarán mensajes informativos indicando cada paso del proceso y se notificará si ocurre algún error.

Al finalizar correctamente:
```text
System updated successfully.
```

## Notas
- Diseñado para sistemas basados en Debian/Ubuntu (Kali, Ubuntu, Debian, etc.).
- No debe ejecutarse sin permisos de administrador.
- Detiene la ejecución automáticamente si algún comando falla.

## Propósito
Script desarrollado con fines educativos y prácticos para:
- Automatizar el mantenimiento básico del sistema
- Practicar control de errores en Bash
- Comprender la gestión de paquetes en Linux
