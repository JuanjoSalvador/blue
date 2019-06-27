---
layout: post # Sustituye el layout si lo usas uno diferente
title: Plantilla de posts para Jekyll # Nombre generado automáticamente
categories: jekyll # Añade tus categorías o borra esta línea
---

La automatización de tareas es un aspecto básico que todo *sysadmin* debe tener presente y conocer al dedillo. En Linux, tengo que reconocer que soy muy aficionado a esto de montarme scripts para casi cualquier tarea que pueda ser (o no), repetitiva. Es el caso de escribir un post para un blog en Jekyll.

Jekyll utiliza MarkDown para dar formato a los posts, además de lo que llamamos *layout* (o plantilla) con la posición de cada elemento dentro del post. Generalmente le pasamos como parámetros el layout y el título del post, pudiendo o no añadir nuevos elementos mediante plugins o simplemente, editando nuestro site. Estos parámetros vienen dados en la cabecera de cada archivo `.md` que escribimos, con el siguiente formato:

    ---
    layout: post # Sustituye el layout si lo usas uno diferente
    title: Título del post # Nombre generado automáticamente
    categories: [jekyll] # Añade tus categorías o borra esta línea
    ---

Además de esta cabecera, cada archivo además debe ser llamado de una forma específica, siendo esta, la fecha del post, seguida del título de este, separado todo por guiones. Esta tarea puede ser muy pesada, sobretodo si tenemos que migrar un blog entero desde otro site. ¿Solución? Un script que le pases el nombre del post, y te genere automáticamente el archivo .md con la cabecera y el nombre de archivo con el formato correcto y prescindido por Jekyll.
