---
layout: post # Sustituye el layout si lo usas uno diferente
title: Python, Web Scraping y enlaces encriptados # Nombre generado automáticamente
---

Cuando escribí [Comicbook Packager](http://juanjosalvador.me/2015/11/11/Comicbook-Packager-mi-autoempaquetador-de-comics/) hace 2 años, mi problema era casi exclusivamente poder convertir un montón (pero un montón, ¿eh?) de carpetas con imágenes sueltas en paquetes CBZ para poderlos subir a mi nube, llevarlos siempre conmigo y poderlos leer en mi tablet Android usando un lector de cómics digitales.

En aquellos años, encontrar comics vía torrent era mucho más sencillo que ahora, así que no tenía problema para descargarlos. Pero, las cosas han cambiado y han desaparecido muchas de mis fuentes de torrents, lo cual ha hecho que vuelva la edad de la descarga directa y los enlaces de Mega, con su correspondiente proxy y encriptado de Adf.ly, Linkbucks, y otros servicios que prometen dinero por cada clic que reciba tu enlace. Además de ser muy molesto, esto hace que tengas que ir enlace por enlace extrayendo manualmente el enlace a Mega y meterlo en tu gestor de descargas.

### La solución

Llevo un tiempo trabajando en una [librería de Python](https://github.com/JuanjoSalvador/NyaaPy) que haciendo uso de [Web Scraping](https://en.wikipedia.org/wiki/Web_scraping) extrae información de una web concreta, según le pidamos. Es un principio que podemos aplicar perfectamente a este problema, con objeto de solucionarlo.

Para llevarlo a cabo he utilizado **Requests**, un módulo de Python que te permite lanzar peticiones HTTP, e inclusive descargar todo el contenido de una página en formato HTML plano, y **BeautifulSoup**, otro módulo de Python que podemos utilizar para analizar y extraer el contenido que queramos de un documento HTML, en base a sus etiquetas.

Mi flujo de trabajo ha sido el siguiente:

1. Mediante Requests obtenemos el HTML de la página en cuestión.
2. Mediante BeautifulSoup extraemos los contenedores donde se encuentran los enlaces.
3. De cada contenedor, extraemos el elemento `<a>` y su atributo `href` (enlace encriptado en este caso). 
4. Desencriptamos cada enlace y almacenamos la URL definitiva en un fichero TXT

### El código

La primera y única pega de esto, es que **solamente funciona con Python 2.7**, dado que las funciones para desencriptar los enlaces, proceden de [AdflyUrlgrabber](https://github.com/MGF15/AdflyUrlGrabber), el cual por algún motivo no ha sido portado a Python 3.x todavía.

```python
# -*- coding: utf-8 -*-

import base64, urllib
import requests
import os, re, sys

from bs4 import BeautifulSoup
```
Estos son los `import` que he necesitado, tanto para extraer los enlaces como para desencriptarlos.

```python
def _crack(code):
        zeros = ''
        ones = ''
        for n,letter in enumerate(code):
            if n % 2 == 0:
                zeros += code[n]
            else:
                ones = code[n] + ones

        key = zeros + ones
        key = list(key)
        i = 0

        while i < len(key):
            if key[i].isdigit():
                for j in range(i+1,len(key)):
                    if key[j].isdigit():
                        u = int(key[i])^int(key[j])
                        if u < 10: 
                            key[i] = str(u)
                        i = j					
                        break
            i+=1

        key = ''.join(key).decode('base64')[16:-16]

        return key

def _decrypt(url):
    adfly = urllib.urlopen(url).read()
    ysmm = re.findall(r"var ysmm = '(.*?)';",adfly)[0]
    decrypted_url = _crack(ysmm)

    return decrypted_url
```
Funciones `_crack()` y `_decrypt()`, encargadas de romper el cifrado de Adf.ly y de devolver la URL que se oculta detrás.

```python
def main():
    # Extrae los enlaces que cumplan las condiciones de la página objetivo.
    target  = "<URL>"

    content = requests.get(target).text
    soup    = BeautifulSoup(content, 'html.parser')
    items   = soup.select('article blockquote div') # Contenedor de enlaces
    links   = []

    for item in items:
        for a in item.find_all('a'):
            # Condición para que el enlace sea el que buscamos
            if a.text == "www.Mega.com":
                url = re.search('http://adf(.*)', a.get('href'))
                links.append("http://adf{}\n".format(url.group(1)))

    # Comprueba que exista el directorio de salida
    if not os.path.exists('output'):
        os.mkdir('output')

    file = open('output/output.txt', 'w')

    # Procesa cada enlace adf.ly, desencriptándolo y guardándolo en output.txt
    try:
        for index, link in enumerate(links):
            print "Procesando enlace #{} de {}".format(index + 1, len(links))
            file.write("{}\n".format(_decrypt(link)))

    except Exception as e:
        print "Ocurrió un error: {}".format(e)

    print "¡Finalizado! Resultados guardados en output/output.txt"
```
Función principal del script. Realiza el flujo de trabajo explicado arriba, primero extrayendo el HTML de la página objetivo, a continuación analizándolo en busca de los enlaces que nos interesan, y por último guardándolos en un archivo TXT que podemos utilizar como más nos guste.
