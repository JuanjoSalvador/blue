---
layout: post # Sustituye el layout si lo usas uno diferente
title: Comicbook Packager, mi autoempaquetador de comics # Nombre generado automáticamente
comments: true
---

Confieso que soy aficionado a leer comics en formato digital. Y algunos de los comics que sigo, no se encuentran traducidos a mi idioma u otro idioma que entienda, por lo que tiendo a recurrir a fansites de traducciones no oficiales. Actualmente hay numerosos sitios web que ofrecen de forma gratuita o con una suscripción (*como Submanga o Crunchyroll*) la lectura de estos comics online.

Leer comics online no es una idea que me atraiga demasiado, ya que me obliga a estar conectado a Internet vía WiFi o con una conexión de datos, si estoy fuera de casa, siendo esta última un problema algo más recurrente dado el abuso de descarga de imágenes de gran tamaño. Mi solución ante este problema (en Android) fue usar [Open Comic Reader](https://play.google.com/store/apps/details?id=com.sketchpunk.ocomicreader&hl=en) y descargar yo mismo los comics traducidos.

Estos comics generalmente vienen en *páginas sueltas*, organizadas por capítulos/tomos, normalmente en directorios separados. Algo molesto para mi, que soy fanático del formato CBZ (*ComicBook ZIP*). Por eso, para que el empaquetado de comics sea más fácil y cómodo, me hice un script. Creé **Comicbook Packager**.

**Comicbook Packager** te permite, mediante la línea de comandos, generar un archivo CBZ a partir del directorio que le indiques, en cuestión de segundos. Está programado en Shell y depende del paquete `zip`. Se encuentra liberado en GitHub bajo licencia MIT.

Su uso es muy sencillo:

```bash
$ cbp -d ~/Comics/My\ Comic/
```

Devolverá un fichero llamado `My_Comic.cbz` que podemos abrir con cualquier lector de comics.

Así mismo, si no le pasamos ningún argumento, empaquetará de forma recursiva todos los directorios que encuentre en la ubicación actual.

```bash
$ ls ~/Comics/
Capitulo 1
Capitulo 2
Capitulo 3

$ cbp -r ~/Comics/
```

Devolverá 3 ficheros `.cbz` con nombres `Capitulo_1.cbz`, `Capitulo_2.cbz` y `Capitulo_3.cbz`.

**Comicbook Packager** se encuentra actualmente en desarrollo y su instalador solo está disponible para Debian/Ubuntu y derivadas, necesitando su instalación manual en otras distribuciones.

En el [repositorio de Comicbook Packager en GitHub](https://github.com/JuanjoSalvador/Comicbook-Packager) encontrarás más información sobre el funcionamiento y la instalación de este.
