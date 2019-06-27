---
layout: post # Sustituye el layout si lo usas uno diferente
title: DrHenry genera posts por ti # Nombre generado automáticamente
categories: []
---

Tiempo atrás [escribí un script en bash](https://gist.github.com/JuanjoSalvador/9669022d8e3f59ab7a4f) para ayudarme a publicar artículos en mi sitio de Jekyll, dado que crear un archivo-plantilla no me parecía factible, ya que mi configuración usa un nombre de archivo bastante concreto (YYYY-MM-DD-titulo.md).

Ese script tenía un problema: me obligaba a mover manualmente los post una vez creados a la carpeta pertinente... Y solo funciona con Linux. ¿Que pasa si un día de pronto un usuario de Windows o Mac quiere hacer lo mismo que yo?

Solución: lo convierto en una gema. Así que, esta mañana me he puesto y lo he reescrito de cero en Ruby. He de decir que la parte más difícil ha sido corregir los errores de estilo y subirlo a RubyGems.

El código de DrHenry, mi *post generator* de Jekyll se encuentra disponible bajo licencia MIT en GitHub, además de la documentación necesaria.

DrHenry se encuentra actualmente en una versión muy temprana de su desarrollo, es posible que existan numerosos errores.

* [GitHub](https://github.com/JuanjoSalvador/drhenry)
* [RubyGems](https://rubygems.org/gems/drhenry)
