---
layout: post # Sustituye el layout si lo usas uno diferente
title: Terminal múltiple en una sola ventana # Nombre generado automáticamente
---
Personalmente, soy muy dado a tener abiertas de 3 a 5 terminales a la vez cuando trabajo con algo en Linux. En ventanas diferentes o en pestañas. Sin embargo, se me hace muy engorroso tener que cambiar de una a otra cuando tengo que consultar o comprobar ciertos resultados. ¿Que sería lo ideal? Tener varias terminales abiertas dentro de la misma ventana.

![Terminator](url)

¿La solución? **Terminator**. Se trata de un emulador de terminal enfocado a la visualización de varias consolas en la misma ventana, pudiendo dividirlas vertical u horizontalmente.

Disponible en los repositorios de Debian.

```bash
apt-get install terminator
```
En Gnome, si además queremos cambiar el emulador por defecto, podemos hacerlo con el comando `update-alternatives` (como root).

```bash
update-alternatives –config x-terminal-emulator
```
