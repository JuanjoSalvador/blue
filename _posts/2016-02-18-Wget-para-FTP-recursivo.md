---
layout: post # Sustituye el layout si lo usas uno diferente
title: Wget para FTP recursivo # Nombre generado automáticamente
---

Por circunstancias laborales, he precisado descargar un directorio raiz bastante extenso desde un FTP. Como no tengo instalado un cliente gráfico, y prefiero no tener que hacerlo, he usado la herramienta `wget`.

```bash
$ wget -r ftp://usuario:contraseña@servidor/
```
Y a descargar.

Tengo que hacerme un script similar pero para descargar el contenido de un directorio de Apache2.
