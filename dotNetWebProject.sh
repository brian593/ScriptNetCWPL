#!/bin/bash

cat << "EOF"
    _   _      _    __          __  _       _____           _           _   
   | \ | |    | |   \ \        / / | |     |  __ \         (_)         | |  
   |  \| | ___| |_   \ \  /\  / /__| |__   | |__) | __ ___  _  ___  ___| |_ 
   | . ` |/ _ \ __|   \ \/  \/ / _ \ '_ \  |  ___/ '__/ _ \| |/ _ \/ __| __|
  _| |\  |  __/ |_     \  /\  /  __/ |_) | | |   | | | (_) | |  __/ (__| |_ 
 (_)_| \_|\___|\__|     \/  \/ \___|_.__/  |_|   |_|  \___/| |\___|\___|\__|
                                                          _/ |              
                                                         |__/               
                                                                --By brian593--
                                                                
EOF
# Solicitar el nombre del proyecto
echo "Por favor, ingresa el nombre del proyecto:"
read nombre_del_proyecto

# Crear una carpeta con el nombre del proyecto
mkdir "$nombre_del_proyecto"

# Imprimir un mensaje de confirmación
echo "Se ha creado la carpeta '$nombre_del_proyecto'."

cd "$nombre_del_proyecto"

dotnet new sln -n "$nombre_del_proyecto"

dotnet new classlib -n "$nombre_del_proyecto.Entity"
dotnet sln "$nombre_del_proyecto.sln" add "$nombre_del_proyecto.Entity/$nombre_del_proyecto.Entity.csproj"

dotnet new classlib -n "$nombre_del_proyecto.BLL"
dotnet sln "$nombre_del_proyecto.sln" add "$nombre_del_proyecto.BLL/$nombre_del_proyecto.BLL.csproj"

dotnet new classlib -n "$nombre_del_proyecto.DAL"
dotnet sln "$nombre_del_proyecto.sln" add "$nombre_del_proyecto.DAL/$nombre_del_proyecto.DAL.csproj"

dotnet new classlib -n "$nombre_del_proyecto.IOC"
dotnet sln "$nombre_del_proyecto.sln" add "$nombre_del_proyecto.IOC/$nombre_del_proyecto.IOC.csproj"

dotnet new mvc -n "$nombre_del_proyecto.WebApp"
dotnet sln "$nombre_del_proyecto.sln" add "$nombre_del_proyecto.WebApp/$nombre_del_proyecto.WebApp.csproj"

cd "$nombre_del_proyecto.Entity"
dotnet add package Microsoft.EntityFrameworkCore.SqlServer 
dotnet add package Microsoft.EntityFrameworkCore.Tools

cd ..
mi_ruta=$(pwd)

cd "$nombre_del_proyecto.DAL"
dotnet add reference "$mi_ruta/$nombre_del_proyecto.Entity/$nombre_del_proyecto.Entity.csproj"

cd ..
cd "$nombre_del_proyecto.BLL"
dotnet add reference "$mi_ruta/$nombre_del_proyecto.DAL/$nombre_del_proyecto.DAL.csproj"
dotnet add reference "$mi_ruta/$nombre_del_proyecto.Entity/$nombre_del_proyecto.Entity.csproj"

cd ..
cd "$nombre_del_proyecto.IOC"
dotnet add reference "$mi_ruta/$nombre_del_proyecto.DAL/$nombre_del_proyecto.DAL.csproj"
dotnet add reference "$mi_ruta/$nombre_del_proyecto.BLL/$nombre_del_proyecto.BLL.csproj"

cd ..
cd "$nombre_del_proyecto.WebApp"
dotnet add reference "$mi_ruta/$nombre_del_proyecto.Entity/$nombre_del_proyecto.Entity.csproj"
dotnet add reference "$mi_ruta/$nombre_del_proyecto.BLL/$nombre_del_proyecto.BLL.csproj"
dotnet add reference "$mi_ruta/$nombre_del_proyecto.IOC/$nombre_del_proyecto.IOC.csproj"