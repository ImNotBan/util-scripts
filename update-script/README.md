# Folder Batch Creator

Script en Bash que permite crear múltiples carpetas de forma automática a partir de un nombre base y un número indicado por el usuario.

## Descripción
Este script solicita al usuario:
1. El número de carpetas que desea crear.
2. El nombre base de las carpetas.

A partir de estos datos, crea carpetas numeradas de forma secuencial, manteniendo un formato de dos dígitos (`01`, `02`, etc.).

## Funcionamiento
- Valida que el número introducido sea un valor numérico.
- Genera carpetas con el siguiente formato:
  ```
  nombre01
  nombre02
  nombre03
  ...
  ```

## Uso
Dar permisos de ejecución al script:
```bash
chmod +x create_folders.sh
```

Ejecutar el script:
```bash
./create_folders.sh
```

## Ejemplo
Entrada del usuario:
```text
How many folders do you want to create? 5
Enter base folder name: folder
```

Resultado:
```text
folder01
folder02
folder03
folder04
folder05
```

## Notas
- Las carpetas se crean en el directorio desde el que se ejecuta el script.
- Si se introduce un valor no numérico, el script se detiene mostrando un mensaje de error.
- El script no sobrescribe carpetas existentes.

## Propósito
Script desarrollado con fines educativos para practicar:
- Entrada de datos por terminal
- Validación básica
- Uso de bucles en Bash
- Automatización de tareas simples en Linux
