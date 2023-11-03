# ScriptNetCWPL
Este script de Bash te permite crear rápidamente un proyecto .NET en capas con una estructura típica que incluye capas de entidades, lógica de negocio (BLL), acceso a datos (DAL), inversión de control (IOC) y una aplicación web ASP.NET MVC.


```markdown
# Creación de Proyecto .NET en Capas

Este script de Bash te permite crear rápidamente un proyecto .NET en capas con una estructura típica que incluye capas de entidades, lógica de negocio (BLL), acceso a datos (DAL), inversión de control (IOC) y una aplicación web ASP.NET MVC.

## Uso

1. Clona este repositorio o descarga el script `create-dotnet-project.sh`.

2. Abre una terminal y navega al directorio donde se encuentra el script.

3. Ejecuta el script utilizando el siguiente comando:

```bash
./create-dotnet-project.sh
```

4. El script solicitará el nombre de tu proyecto y creará una estructura de proyecto en capas dentro de una carpeta con ese nombre. Asegúrate de seguir las instrucciones del script.

## Estructura del Proyecto

El script generará la siguiente estructura de proyecto:

- **NombreDelProyecto/**
  - `NombreDelProyecto.sln`: Solución de Visual Studio.
  - **NombreDelProyecto.Entity/**
    - Proyecto de Clase de Biblioteca de Clases para entidades.
  - **NombreDelProyecto.BLL/**
    - Proyecto de Clase de Biblioteca de Clases para lógica de negocio.
  - **NombreDelProyecto.DAL/**
    - Proyecto de Clase de Biblioteca de Clases para acceso a datos.
  - **NombreDelProyecto.IOC/**
    - Proyecto de Clase de Biblioteca de Clases para inversión de control.
  - **NombreDelProyecto.WebApp/**
    - Proyecto de aplicación web ASP.NET MVC.

## Requisitos

Asegúrate de tener instalado .NET Core en tu sistema antes de ejecutar este script.

## Autor

Desarrollado por Brian593.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para obtener más detalles.
```
