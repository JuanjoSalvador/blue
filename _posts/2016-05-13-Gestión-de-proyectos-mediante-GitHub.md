---
layout: post # Sustituye el layout si lo usas uno diferente
title: Gestión de proyectos mediante GitHub # Nombre generado automáticamente
---

GitHub además de ser una excelente plataforma de Git para compartir y mantener código, también puede ser una herramienta excelente para gestionar proyectos. Para explicar esto, usaré como ejemplo, es el desarrollo de Comicbook Packager (versión 3, en camino), que se está organizando a través de las issues de un repositorio. 

### Organiza el código en ramas

Esta nueva versión se está reescribiendo completamente en C#, de forma que logramos una capacidad multiplataforma casi nativa (nativa en Windows, a través de Mono en Linux), sin tener que escribir el mismo código para dos plataformas.

Para mantener el código, utilizamos 4 ramas (branches) dentro del repositorio:

* `win-dev`
* `win-master`
* `linux-dev`
* `linux-master`
        
De modo que disponemos de una rama (`*-dev`) que podemos usar para mantener el código inestable y en desarrollo, mientras que en la rama master (`*-master`) encontramos el código estable de cada versión.

Pero espera, ¿y qué rama pasa a ser la rama por defecto? Pues sigue siendo la rama master del repositorio, por supuesto. En ella encontramos la guía de usuario, imágenes e información relevante, como licencias y demás.

### Asigna un responsable por cada rama

Cada pareja de ramas la gestiona un miembro del proyecto: [@jotaperamez](https://github.com/jotaperamez) administra las de Windows, mientras que yo me ocupo de mantener al día el desarrollo general y de la rama Linux. De este modo, repartimos la carga de trabajo y dejamos cierta libertad para que cada parte del equipo sea independiente, aunque exista un *administrador general* que sea quien gestione todo.

El responsable de cada rama debe estar atento y mantener la rama `*-master` de su sección siempre al día, ya que las releases saldrán de ahí.

### Establece una vía de comunicación con el equipo

¿Y lo que dije antes de las issues? Esta es la parte divertida. De los compañeros de la Oficina de Software Libre UGR, aprendí que podemos usar las issues de GitHub a modo de foro para coordinar el desarrollo de un proyecto. Usando las etiquetas como si de categorías se tratasen, vamos añadiendo *to do* y anotaciones sobre el desarrollo. Mi sistema utiliza básicamente tres etiquetas:

* **Windows**. Para cualquier dato relacionado con el desarrollo de la rama Windows. Ya sean funciones que implementar, bugs, etc.
* **Linux**. Para cualquier cosa relacionada con el desarrollo de la rama Linux. Ya sean funciones que implementar, bugs, etc.
* **General**. Cualquier tema relacionado con el desarrollo general del proyecto, va aquí.
    
Cada tarea pendiente se asigna a un responsable, en este caso al responsable de cada rama, de modo que en un momento dado, sabemos que tareas están libres y/o pendientes de cumplirse.

### Hazlo escalable

¿Necesitas más? El modelo descrito es útil y válido cuando el equipo de desarrollo es relativamente pequeño. Sin emnbargo, existen herramientas opensource que pueden ayudarte muy bien a gestionar proyectos de mayor envergadura o que requieran una infraestructura más extensa. Prueba [Taiga.io](https://taiga.io/) para organizar y asignar tareas, y [Mattermost](http://www.mattermost.org/) (versión opensource de Slack) para establecer una línea de comunicación con tu equipo.
