---
layout: post
title: Estrenando blog en GitHub Pages + Jekyll
---

Ya, ya lo se. Es mi tercer blog en un periodo de tiempo relativamente corto. Pero tengo que admitir que soy un enamorado de Jekyll, y no puedo evitarlo... Esto no quiere decir que vaya a abandonar Doblejota Blog, no, para nada, simplemente traslado mi web personal aquí, añadiéndole un pequeño blog de apuntes de programación y desarrollo. Algo que hasta ahora he estado haciendo con Gist, pero que no me da para documentar y explayarme en el funcionamiento de mis recortes de código, así que, ¿por qué no?

Otra cuestión aparece, al plantearme ¿y por qué no escribir esto en el Wordpress? La razón es muy sencilla: ese blog tiene un público hecho, y una temática definida, en la cual mis recortes y apuntes de programación no encajan demasiado... Cada tema en su lugar.

Por otro lado, trasladarme no ha sido tarea complicada. Si bien Jekyll, resulta algo complejo la primera vez que topas con el, una vez descifras el funcionamiento de `Liquid`, se hace bastante sencillo. De hecho, así he creado incluso mi propio sistema de categorías.

Pero si quieres hacer esta tarea *aún más sencilla*, existe un repositorio en GitHub, [Jekyll Now de Barry Clark](https://github.com/barryclark/jekyll-now), el cual solo tienes que hacerle un *fork* y editar los parámetros que te va indicando en la guía de instalación. ¡Fácil! ¡Rápido! ¡Sencillo!

### ¿Qué es Jekyll?

Jekyll es un generador de páginas HTML estáticas, escrito en Ruby, muy versátil y extensible. Se configura editando un archivo YAML (*_config.yml*), utilizando Liquid + HTML para crear layaouts y CSS para dar estilo. Es extensible mediante plugins y gemas, permitiendo añadir multitud de caracterísiticas, tales como un feed RSS o Atom, un generador de sitemap.xml automático, o comentarios con Disqus.

Los post de Jekyll se escriben en MarkDown, el cual se procesa a HTML al general el sitio, permitiendo una escritura mucho más ágil y rápida que utilizando tags HTML.

### ¿Por qué Jekyll?

Principalmente porque me permite escribir en MarkDown, teniendo una copia exacta del artículo en local, y porque el alojamiento me sale gratis mientras GitHub no caiga, además de que no tengo que pagar un extra por añadir un dominio, como ocurre con Wordpress.com o con alojamientos externos. ¡Yuju!

En adición, me inspiré a probar esto cuando, tiempo atrás @SoulChainer me habló de este tipo de sitios, aunque el utiliza otro generador, Pelican, escrito en Python. Investigué un poco, y en aquel tiempo, GitHub daba mucho bombo a Octopress, un fork de Jekyll propio de estos, cuyo funcionamiento estaba orientado a los blogs estáticos como este. Sin embargo nunca tuve mucho tiempo para profundizar con ello y lo pasé a un segundo plano.

Recientemente, tras leer el artículo de Tom Preston-Werner, [*Blogging like a hacker*](http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html), donde habla precisamente sobre este tipo de blogs, me inspiré completamente para crear el mío. Total, ¿y por qué no?
