# MMMV-CID
Proyecto Final - Modelos de Arquitecturas Orientadas a Servicios

### Ing. Miguel Manuel Martínez Vázquez
### Matricula 00614948

[![Versión](https://img.shields.io/badge/Versión-0.0.0-blue.svg)](https://github.com/djmai/deploy-mtie501/releases/tag/Deploy-CI-CD-v0.0.0)

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
  - [Instalación Docker ⚙️](#Docker)
  - [Ajustando carpetas 🔩](#Ajustando)
- [Despliegue 📦](#Despliegue)
  - [Portal 📦](#Portal)
  - [Angular 📦](#Angular)
  - [Monitor 📦](#Monitor)
  - [Wordpress 📦](#Wordpress)
  - [NodeJSApi 📦](#NodeJSApi)
  - [ApiNetCore 📦](#ApiNetCore)
  - [Portainer 📦](#Portainer)
- [Construido con 🛠️](#Construido)
- [Contribuyendo 🖇️](#Contribuyendo)
- [Wiki 📖](#Wiki)
- [Versionado 📌](#Versionado)
- [Autores ✒️](#Autores)
- [Licencia 📄](#Licencia)
- [Expresiones de Gratitud 🎁](#Gratitud)

<a name="Comenzando" />

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

<a name="Pre-requisitos" />

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

<a name="Instalación" />

## Instalación 🔧

<a name="Speed"></a>
## Ejecución Rápida

```bash

# Accedemos al a carpeta del proyecto clonado
> cd MMMV-CICD

# Ejecutamos el siguiente comando
> docker-compose up --build -d

```