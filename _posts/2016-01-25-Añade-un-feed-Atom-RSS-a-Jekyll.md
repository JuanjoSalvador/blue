---
layout: post # Sustituye el layout si lo usas uno diferente
title: Añade un feed Atom/RSS a Jekyll # Nombre generado automáticamente
---
Los feed RSS o Atom son geniales. Tanto para los lectores, ya que les permiten seguir una cantidad intersante de blogs desde una aplicación única y de un vistazo, como para autores, ya que facilita que aumenten sus suscriptores habituales.

Un sistema muy popular para añadir un feed RSS a tu sitio, es FeedBurner. Este sistema te permite incluso llevar un seguimiento eficaz del número de lectores que tienes. Sin embargo, a menos que pretendas ganar dinero con tu sitio, esas métricas son un poco innecesarias.

En Jekyll no existe una forma nativa de establecer un feed, sin embargo, gracias a XML y Liquid se puede crear un feed RSS o Atom que podemos añadir a nuestro site tan solo añadiendo un nuevo fichero. ¿Cómo? Descargando y añadiendo a la raíz del sitio [este documento XML](https://github.com/JuanjoSalvador/jekyll-utils/blob/master/feed-atom/atom.xml) y enlazandolo desde nuestro site.

Una vez añadido, en cuanto Jekyll genere la página de nuevo, tendremos nuestro feed listo para funcionar.
