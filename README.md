# MMMV-CID
Proyecto Final - Modelos de Arquitecturas Orientadas a Servicios

### Ing. Miguel Manuel Martínez Vázquez
### Matricula 00614948

[![Versión](https://img.shields.io/badge/Versión-0.0.1-blue.svg)](https://github.com/djmai/MMMV-CICD/releases/tag/Deploy-CI-CD-v0.0.1)

[![donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://paypal.me/IngMiguelMartinez?locale.x=es_XC)



_Este repositorio contiene todo el despliegue de Integración y Distribución Continuas (CI/CD) los cuales son subconjuntos diferenciados de tareas agrupadas en lo que se conoce como etapas del canal._

## Introducción

Este proyecto hace uso de los siguientes componentes por medio del uso de contenedores.

- [x] MySQL 
- [x] Logstash 
- [x] Elasticsearch 
- [x] Kibana 
- [X] Docker-Compose


## Enlaces rápidos

- [Comenzando 🚀](#Comenzando)
  - [Pre-requisitos 📋](#Pre-requisitos)
- [Instalación 🔧](#Instalación)
  - [Ejecución Rápida 🚀](#Speed)
  - [Configuración Windows 10 ⚙️](#Win10)
  - [Instalación de Docker Desktop ⚙️](#Docker)
  - [Instalación de Chocolatey ⚙️](#Chocolatey)
  - [Instalación de Docker Machine ⚙️](#Docker-Machine)
  - [Creación de máquina virtual con Docker Machine ⚙️](#Create-VM)
  - [Creación de contenedores ⚙️](#Create-Containers) 
  - [Instalación de Docker-Compose ⚙️](#Docker-Compose) 
  - [Clonar repositorio ⚙️](#Clon-Repo) 
  - [Configuración de volumenes y data 🔩](#Volumens)
  - [Comandos Docker ⚙️](#Comandos-Docker) 
- [Despliegue 📦](#Despliegue)
  - [Primer Inicio 📦](#Start)
  - [Actualización 📦](#Update)
- [Posibles Errores 🛠️](#Errors)
- [Construido con 🛠️](#Construido)
- [Contribuyendo 🖇️](#Contribuyendo)
- [Wiki 📖](#Wiki)
- [Versionado 📌](#Versionado)
- [Autores ✒️](#Autores)
- [Licencia 📄](#Licencia)
- [Expresiones de Gratitud 🎁](#Gratitud)

<a name="Comenzando"></a>
## Comenzando 🚀

Como obtener una copia del repositorio completo para trabajar de forma local si te agrada lo que he desarrollado

Para crear la carpeta de `MMMV-CICD` e instalar los requerimientos sólo clona el repo:

```bash
# Clona el repo desde tu terminal:
> git clone https://github.com/djmai/MMMV-CICD.git
```

```bash
# Clona el repo desde Github Desktop (Windows):
1. Inicia sesión en GitHub y GitHub Desktop antes de comenzar la clonación.

2. En GitHub, visita la página principal del repositorio.

3. Sobre la lista de archivos, da clic en  Código.

4. Clic en Open with GitHub Desktop para clonar y abrir el repositorio con with GitHub Desktop.

5. Haz clic en Choose... (Elegir...) y, a través de Windows Explorer, desplázate hasta la ruta donde deseas clonar el repositorio.

6. El botón Clone (Clonar)
```

Mira **Programador** para conocer como desplegar el proyecto.

<a name="Pre-requisitos"></a>
### Pre-requisitos 📋

_Para poder realizar el despliegue correctamente del proyecto ocuparemos lo siguiente_

```bash

- Sistema Operativo
  - Windows 10 Pro
  - Memoria RAM 8GB Mínimo
  - Disco Duro 500GB Mínimo
  - Procesador i5 ó i7

- Software
  - [Oracle Virtual Box](https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-Win.exe/)
  - [Chocolatey](https://chocolatey.org/install)
  - [Docker Desktop](https://www.docker.com/products/docker-desktop)
  - [Docker Compose](https://community.chocolatey.org/packages/docker-compose)

- Archivos
  - Queries SQL Personalizados
  - Rancher OS [Descarga Aquí](https://github.com/rancher/os/releases/download/v1.5.8/rancheros.iso/)

```

<a name="Instalación"></a>
## Instalación 🔧

<a name="Speed"></a>
#### Ejecución Rápida

```bash

# Accedemos al a carpeta del proyecto clonado
> cd MMMV-CICD

# Ejecutamos el siguiente comando
> docker-compose up --build -d

```
<a name="Win10"></a> 
### Configuración Windows 10

Deshabilitar **Hyper-V** por medio de *Activar o desactivar las características de Windows*. 
   - En caso de contar con Windows 10 Home, deshabilitar las opciones de *Virtual Machine Platform* y *Windows Hypervisor Platform*. 
   
    ![Hyper-V](https://www.elcegu.com/wp-content/uploads/2019/01/2019-01-31_21-29-55.png)
   
Instalar [VirtualBox](https://www.virtualbox.org/wiki/Downloads). 

    [![VirtualBox](https://www.igestweb.es/blog/wp-content/uploads/2017/09/Virtualbox-logo.jpg)](https://www.virtualbox.org/wiki/Downloads)

Abrir la consola de **Windows PowerShell**; de preferencia como administrador y ejecutar el siguiente comando: 

    ``` 
    > bcdedit /set hypervisorlaunchtype off 
    ``` 

<a name="Docker"></a> 
### Instalación de Docker Desktop

Instalar [Docker Desktop](https://www.docker.com/products/docker-desktop) y posteriormente reiniciar la computadora. 

    [![Docker Desktop](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrQRbJtTXmruUZNgXGDTbXEP2yUV0_cKm_D7l6Ahxi5x-QjOci9KHa32Nie3NyCOnyM70&usqp=CAU)](https://www.virtualbox.org/wiki/Downloads) 

    Nota: Si después de reiniciar aparece la siguiente ventana; no hay que preocuparse, solo de clic en el botón OK y continuar con las instalaciones. 
    
    [![Docker Error](https://user-images.githubusercontent.com/59643335/103649036-13a48000-4f5e-11eb-8154-bce9cfccf31b.png) 

<a name="Chocolatey"></a> 
### Instalación de Chocolatey

Instalar **Chocolatey** <img src="https://upload.wikimedia.org/wikipedia/commons/b/b0/Chocolatey_icon.png" data-canonical-src="https://gyazo.com/eb5c5741b6a9a16c692170a41a49c858.png" width="28" height="28" /> con **Windows PowerShell** <img src="https://4.bp.blogspot.com/-VnHaVPAfOms/XDepW52T1BI/AAAAAAAAGQo/ZzujNs2KPkEmmtF1Astea01BkZ6RGStswCLcBGAs/s1600/powershell.png" width="28" height="28" /> con los siguientes comandos: 

    ``` 
    > Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
    ``` 
    
Revisar la versión de Chocolatey instalada con el comando: `choco` para visualizar la versión y el comando de ayuda.

<a name="Docker-Machine"></a> 
### Instalación de Docker Machine

Instalar **docker-machine** con **Chocolatey** ejecutar el siguiente comando: 

    ``` 
    > choco install docker-machine 
    ``` 
    
Para validar la instalación ejecutar el comando: `docker-machine version`. 

<a name="Create-VM"></a> 
## Creación de máquina virtual con Docker Machine 

Para crear la máquina, a la cual llamamos **\*vmmtie\***; se debe ejecutar el siguiente comando: 

    ``` 
    > docker-machine create --driver virtualbox --virtualbox-cpu-count 2 --virtualbox-disk-size 10000 --virtualbox-memory 4096 --virtualbox-boot2docker-url https://releases.rancher.com/os/latest/rancheros.iso vmmtie
    ``` 
    
    _--virtualbox-cpu-count: Número de CPU que se utilizarán para crear la máquina virtual._  
    _--virtualbox-disk-size: Tamaño del disco para el host en MB._  
    _--virtualbox-memory: Tamaño de la memoria del host en MB._  
    _--virtualbox-boot2docker-url: URL de la imagen de boot2docker (Última versión disponible)._ 
 
Revisar las máquinas disponibles con: `docker-machine ls`. 
Para iniciar o detener la máquina. 
    ``` 
    > docker-machine stop Name_VM
    > docker-machine start Name_VM 
    ``` 
    
<a name="Create-Containers"></a> 
## Creación de contenedores 

Iniciar sesión a la máquina mediante SSH con el comando:  

    ``` 
    > docker-machine ssh Name_VM 
    ``` 
Configurar variable **vm.max_map_count** dentro del archivo de configuración sysctl para asignar el número máximo de áreas de mapa de memoria que se puede tener en un proceso. Agregar al final del archivo: **vm.max_map_count=2621444**. 

    ``` 
    > sudo vi /etc/sysctl.conf 
    ``` 

 Para volver a cargar la configuración del archivo con el nuevo valor, ejecutar: `sudo sysctl -p`.

Al iniciar RancherOS con un archivo de configuración, se puede seleccionar qué consola se quiere utilizar. Para ver el listado de las consolas disponibles en RancherOS se utiliza el comando `sudo ros console list`. Después de identificar la consola a utilizar, se ejecuta el siguiente comando: 

    ``` 
    > sudo ros console switch ubuntu 
    ``` 
    
    _Al finalizar, se va a cerrar la sesión de la máquina y se tendrá que hacer de nuevo el login con ssh._ 
    
<a name="docker-compose"></a> 
### Instalación de Docker-Compose

Instalar docker-compose dentro de docker-machine:

    ``` 
    > sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose 
    > sudo chmod +x /usr/local/bin/docker-compose
    ``` 

<a name="Clon-Repo"></a> 
### Clonar repositorio

Para ejecutar un Alias Git Temporal para no realizar la instalación. 

    ``` 
    > alias git="docker run -ti --rm -v $(pwd):/git bwits/docker-git-alpine" 
    ``` 
Clonar en la máquina el repositorio de este proyecto. 

    ``` 
    git clone https://github.com/karroyodev/MTIE513-CICD-PGH-KTAC.git 
    ``` 

<a name="Clon-Repo"></a> 
### Configuración de volumenes y data

Crear las carpetas de volumes para Elasticsearch dentro de la carpeta del proyecto y brindar permisos. 

    ``` 
    sudo mkdir -p volumes/elk-stack/elasticsearch 
    cd volumes/elk-stack/ 
    sudo chmod 777 elasticsearch/ 
    ``` 
    ``` 
    sudo mkdir -p volumes/elk-stack/elasticsearch && cd volumes/elk-stack/ && sudo chmod 777 elasticsearch/ 
    ``` 
    Revisar que los permisos se hayan concedido con `ls -l`.
    
<a name="Comandos-Docker"></a> 
## Comandos Docker

Comando                             | Descripción
------------                        | -------------
docker-machine ls                   | Listado de máquinas con estado, dirección y versión de Docker 
docker-machine start                | Inicia la máquina llamada default, en caso de existir
docker-machine stop                 | Detiene la máquina llamada default, en caso de existir
docker-machine start Name_VM       | Inicia la máquina indicada
docker-machine stop Name_VM        | Detiene la máquina indicada
docker-machine restart Name_VM     | Reiniciar la máquina
docker-machine kill Name_VM        | Forza a que la máquina se detenga abruptamente
docker-machine status Name_VM      | Obtierne el estado de la máquina
docker-machine ip Name_VM          | Obtierne la dirección IP de la máquina 
docker-machine rm Name_VM          | Eliminar la máquina creada
docker-machine ssh Name_VM         | Iniciar sesión a la máquina por SSH 
docker ps                           | Listado de los contenedores que están corriendo 
docker ps -a                        | Listado de todos los contenedores 
docker start CONTENEDOR             | Inicializa el contenedor
docker stop CONTENEDOR              | Detiene el contenedor
docker restart CONTENEDOR           | Reinicia el contenedor
docker pause CONTENEDOR             | Suspende todos los procesos del contenedor especificados 
docker unpause CONTENEDOR           | Reanuda todos los procesos dentro del contenedor
docker kill CONTENEDOR              | Envía una señal SIGKILL al contenedor
docker logs --follow --tail n CONTENEDOR | Muestra el número de líneas indicadas del registro de salida (log)
docker stop $(docker ps -a -q)      | Detiene todos los contenedores
docker rm -f $(docker ps -qa)       | Elimina todos los contenedores
docker images                       | Listado de imágenes con su nivel, repositorio, etiquetas y tamaño 
docker image rm IMAGEN              | Elimina la imágen
docker rmi -f $(docker images -a -q) | Eliminar todas las imagenes del repositorio


<a name="Despliegue"></a>
### Despliegue
Entrar a la carpeta creada al clonar el repositorio. Crear los contenedores con el archivo YAML llamado **\*docker-compose\***. 
    
    ``` 
    sudo docker-compose up --build -d 
    ```

<a name="Start"></a>
#### Primer Inicio

Para comenzar por primera vez el despligue del proyecto, dentro de este mismo se encuentra un archivo de tipo bash, el cual puede copiar directamente a su raiz de su maquina virtual y ejecutar dicho archivo

> initial.sh

    ``` 
    sh initial.sh
    ```

Este archivo lo que hara sera ejecutar complemente todo lo necesario para poder hacer el despliegue de los contenedores y bases de datos

<a name="Update"></a>
#### Actualización

Para realizar una actualizacion del repositorio, ejecute el archivo de tipo bash que se encuentra en este mismo proyecto, para que ejecute la actualizacion correctamente sin problemas

> update.sh

    ``` 
    sh update.sh
    ```

<a name="Errors"></a> 
## Posibles Errores 
En caso de que el contenedor de MySQL durante la revisión de los logs muestre el siguiente error: 

> mbind: Operation not permitted 
 
Agregar en el archivo de **\*docker-compose\*** las siguientes líneas: 

``` 
cap_add:
    - SYS_NICE  # CAP_SYS_NICE
``` 

La cual agrega capacidades del contenedor para aumentar el valor de proceso, establecer políticas de programación en tiempo real y afinidad de CPU, entre otras operaciones. 

<a name="Construido" />

## Construido con 🛠️

_Utilizamos las siguientes herramientas para desarrollar este proyecto_

- [Docker](https://www.docker.com/) - Plataforma abierta para desarrollar, enviar y ejecutar aplicaciones.
- [Docker Compose](https://docs.docker.com/compose/install/) - Herramienta para definir y ejecutar aplicaciones Docker de varios contenedores.
- [NodeJS](https://nodejs.org/en/) - Entorno en tiempo de ejecución multiplataforma
- [Kibana](https://www.elastic.co/es/kibana) - Software de panel de visualización de datos para Elasticsearch. Proporciona capacidades de visualización además del contenido indexado en un clúster de Elasticsearch. 
- [Elastisearch](https://www.elastic.co/es/) - Servidor de búsqueda basado en Lucene. Provee un motor de búsqueda de texto completo, distribuido y con capacidad de multitenencia con una interfaz web RESTful y con documentos JSON.
- [Logstash](https://www.elastic.co/es/logstash) - Herramienta para la administración de logs.

<a name="Contribuyendo" />

## Contribuyendo 🖇️

Por favor lee el [CONTRIBUTING.md](https://gist.github.com/djmai/MMMV-CICD/CONTRIGUTING.md) para detalles de nuestro código de conducta, y el proceso para enviarnos pull requests.

<a name="Wiki" />

## Wiki 📖

Puedes encontrar mucho más de cómo utilizar este proyecto en nuestra [Wiki](https://github.com/djmai/MMMV-CICD/wiki)

<a name="Versionado" />

## Versionado 📌

Usamos [SemVer](http://semver.org/) para el versionado. Para todas las versiones disponibles, mira los [tags en este repositorio](https://github.com/djmai/MMMV-CICD/tags).

<a name="Autores" />

## Autores ✒️

_Menciona a todos aquellos que ayudaron a levantar el proyecto desde sus inicios_

- **Ing. Miguel Martinez** - [djmai](https://github.com/djmai)

También puedes mirar la lista de todos los [contribuyentes](https://github.com/djmai/MMMV-CICD/CONTRIBUTING.md) quíenes han participado en este proyecto.

<a name="Licencia" />

## Licencia 📄

<a name="Gratitud" />

## Expresiones de Gratitud 🎁

- Comenta a otros sobre este proyecto 📢
- Invita una cerveza 🍺 o un café ☕ a alguien del equipo.
- Da las gracias públicamente 🤓.
- etc.

---

⌨️ con ❤️ por [Ing. Miguel Martinez](https://github.com/djmai) 😊
