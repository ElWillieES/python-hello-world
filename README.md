# Python Hello World

[![Python](https://img.shields.io/badge/Python-3.9+-yellow?style=for-the-badge&logo=python&logoColor=white&labelColor=101010)](https://python.org)

## Introducción

Un Hello World en un proyecto minimalista en cualquier lenguaje de programación o scripting que pretende hacer una sencilla demo de ejecución satisfactoria del código que muestra en la pantalla el texto "Hello World".

En este caso el lenguaje es Python y utilizaremos PyCharm como IDE.


## Objetivo

El objetivo de este proyecto es principalmente didáctico, un ejemplo básico de proyecto **Python con PyCharm**, con su integración con Git (incluyendo su .gitignore, estructura de ramas, etc.), gestión de paquetes o librerías (Virtual Environments), ejecución y depuración de código, dockerización y ejecución en local con Docker, Docker Compose y Kubernetes (MiniKube), etc.

Este repo se ha creado para complementar el Post [Hello World con Python y PyCharm](https://elwillie.es/2022/11/09/hello-world-con-python-y-pycharm/) del Blog [El Willie - The Geeks invaders](https://elwillie.es)

Para la ejecución sobre MiniKube te puede interesar leer el Post [Introducción a MiniKube e instalación en Windows 11](https://elwillie.es/2022/11/15/kubernetes-introduccion-a-minikube-e-instalacion-en-windows-11/).


## Arquitectura de la Solución

Se trata de un simple programa Python con un único fichero main.py que ejecuta el código que deseamos.

## Otros detalles de interés

Puedes apoyar mi trabajo haciendo "☆ Star" en el repo o nominarme a "GitHub Star". Gracias !!! 

[![GitHub Star](https://img.shields.io/badge/GitHub-Nominar_a_star-yellow?style=for-the-badge&logo=github&logoColor=white&labelColor=101010)](https://stars.github.com/nominate/)

Si te interesa aprender Python, tienes disponibles los siguientes [cursos gratuitos de Python en Edube - OpenEDG](https://edube.org/):

* Python Essentials 1
* Python Essentials 2
* Python Advanced 1 – OOP
* Python Advanced 2 – Best Practices and Standardization
* Python Advanced 3 – GUI Programming
* Python Advanced 4 – RESTful APIs
* Python Advanced 5 – File Processing

Otro recurso muy interesante es [Real Python](https://realpython.com/), donde podrás encontrar tutoriales, baterías de preguntas para ponerte a prueba (quizzes), etc.

En mi Blog personal ([El Willie - The Geeks invaders](https://elwillie.es)) y en mi perfil de GitHub, encontrarás más información sobre mi, y sobre los contenidos de tecnología que comparto con la comunidad.

[![Web](https://img.shields.io/badge/GitHub-ElWillieES-14a1f0?style=for-the-badge&logo=github&logoColor=white&labelColor=101010)](https://github.com/ElWillieES)

# Git

## Repositorio

Este repo se puede clonar desde GitHub utilizando este [enlace HTTP](https://github.com/ElWillieES/python-hello-world.git). 

A continuación se muestra el comando git clone usando SSH en lugar de HTTP.

```sh
git clone git@github.com:ElWillieES/python-hello-world.git
```

## Estructura de Ramas: Trunk Based Development (TBD)

* **Ramas permanentes**. Utilizaremos **master** como rama principal.
* **Ramas temporales o efímeras**. Utilizaremos **feature/xxx** (nueva característica) y/o **hotfix/xxx** (corregir un bug crítico urgente), que nacen de la rama principal y mezclan de nuevo sobre ella mediante Merge Request.
* **Gestión de Releases**. Para cada Release generaremos una etiqueta (tag) del tipo **release/a.b.c**.

En la descripción de las ramas de feature y hotfix, se especificará el ID de la tarea o issue asociada, por ejemplo:

```git
feature/3813
hotfix/2262
```

Si necesitáramos varias ramas para una misma tarea, añadiremos un número secuencial para evitar la colisión:

```git
feature/3813-1
feature/3813-2
```

## Commits Semanticos: icónos y prefijos

Como recomendación y buena práctica, el título para los Commits y de las Merge Request, pueden empezar con un icono y un prefijo, seguido de dos puntos y de un mensaje corto que comience por un verbo imperativo (ej: add, change, fix, remove, etc.). Por ejemplo:

```git
✨ feat(backend): add support for users having multiple suscriptions
```

Prefijos:

```git
feat: Nueva característica
fix: Corrección a un error
docs: Documentació
style: Cambios de formato (guía de estilo)
refactor: Renombrar una variable, simplificar un método, etc…
test: Añadir o modificar tests
chore: Rareas rutinarias, como modificar el .gitignore, etc…
```

Iconos:

```git
💄 Cosmetic
🎨 Improve format / structure
🛠/🐛 Fix
✨ Feature
🚑 Hotfix
📝 Doc
🚀 Release
♻ Refactor
🐳 Devops
☸ Kubernetes
🧪 Arquitectura de tests
✅ Añadir un Test
✔ Hacer que un test pase
💩 Ñapas
🏗 Architectural changes
🤡 Mocks
💚 Fixing Build
📈 Analiltycs
🌐 Localizations
😒 Chore
💫 Animations & Transitions
♿ Accesibility
🚧 Feature work in progress
🚀 Launch a new build
```

# Diseño UX/UI

**[Esta sección es ilustrativa, ya que para este "Hello World" no aplica]**

El diseño de todo el proyecto se encuentra subido a [Figma](https://www.figma.com/)

Aquí podemos encontrar tanto los wireframes de las pantallas como el diseño final.


# Backlog y Sprints

**[Esta sección es ilustrativa, ya que para este "Hello World" no aplica]**

El _backlog_ del proyecto se gestiona en Jira: [Jira ElWillie](https://elwillie.atlassian.net/).

Aquí podremos encontrar Historias de Usuario, Tareas, y Subtareas, así como los Sprints (el activo y los históricos).


# Entornos e Integración Continua (CI/CD)

**[Esta sección es ilustrativa, ya que para este "Hello World" no aplica]**

Existe un _pipeline_ CI/CD en Jenkins para desplegar en el entorno correspondiente.

## Rama _master_ - Entorno producción

> [https://elwillie.es](https://elwillie.es)

## Ramas _feature_ y _hotfix_ - Entorno de desarrollo y pruebas

> [https://test.elwillie.es](https://test.elwillie.es)


# Docker - Ejecución en local

## Con Docker

Se puede ejecutar la aplicación en local con Docker. 

Los siguientes comandos ejecutados en la raíz del Proyecto, muestran cómo crear una imagen en local, listar las imágenes que tenemos disponible sen local, y cómo ejecutar un contenedor con nuestra imagen.

```shell
docker build -t python-hello-world .
docker images
docker run --rm python-hello-world
```

Podemos arrancar una sesión interativa de Bash sobre un Contendor con nuestra imagen Docker, para de este modo, poder analizar mejor incidencias y problemas que nos puedan surgir.

```shell
docker run --rm -it python-hello-world /bin/bash
```


## Con Docker Compose

El siguiente comando ejecutado en la raíz del Proyecto, muestra cómo ejecutar nuestra aplicación con Docker Compose. 

```shell
docker-compose -f docker-compose.yml up --build -d
```


# Kubernetes - Ejecución en local (MiniKube)

Se puede ejecutar la aplicación en local si tienes instalado MiniKube.

Los siguientes comandos ejecutados en la raíz del Proyecto, muestran cómo tagear la Imagen Docker para subirla al Registry local de MiniKube.

```shell
docker tag python-hello-world localhost:5000/python-hello-world
docker push localhost:5000/python-hello-world
```

Realizado esto, en la ventana Terminal de PyCharm, podemos ejecutar los siguientes comandos para aplicar los manifiestos en nuestro Cluster de MiniKube (namespace y Job), y consultar el Log de ejecución del Job que acabamos de crear y ejecutar (la salida del Log, será igual a cuando lo ejecutamos en Docker o directamente en PyCharm).

```shell
cd kube
kubectl apply -f ns-hello-world.yml
kubectl apply -f job-python-hello-world.yml
kubectl logs job/python-hello-world -n hello-world
```

Al finalizar podemos eliminar el namespace de Kubernetes, para eliminar todos los recursos y dejar la casa limpia.

```shell
kubectl delete ns hello-world
```


# Contactos

| Nombre        | Posición en el Proyecto         | Email                                                |
|---------------| ------------------------------- |------------------------------------------------------|
| **El Willie** | Product Owner                   | [elwillieES@gmail.com](mailto:elwillieES@gmail.com)  |
