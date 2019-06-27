---
layout: post # Sustituye el layout si lo usas uno diferente
title: Parsear un JSON con Ruby # Nombre generado automáticamente
categories: [Ruby] # Añade tus categorías o borra esta línea
---

Podemos definir JSON como un formato ligero de intercambio de datos. Es un subconjunto de la notación literal de objetos de JavaScript que no requiere el uso de XML, lo cual facilita mucho la legibilidad de la información contenida.

En la actualidad está muy extendido, lo cual hace que cualquier desarrollador web requiera de su uso en más de una ocasión. Al proceso de extracción de datos de un JSON (*o XML, o cualquier otro formato*) se le llama *parsear*.

Muchos lenguajes incluyen librerías para hacer esto, como es el caso de Ruby. Hace unos días, trabajando en un script el cual necesita tomar datos de terceros y que descaga en un archivo JSON, tuve la impediosa necesidad de parsear dicho archivo, pero, era la primera vez que necesitaba hacer algo así en Ruby, así que, me lancé a la aventura.

La solución, como casi siempre que tengo un problema similar, me apareció en [StackOverflow](http://stackoverflow.com/questions/5410682/parsing-a-json-string-in-ruby).

Primero instalamos la gema json

`gem install json`

La añadimos a nuestro proyecto...

```ruby
require 'rubygems'
require 'json'
```

Y por último, para usarlo, solo tenemos que llamar al método `JSON.parse()`, suponiendo que aquí nuestro JSON está almacenado en una variable llamada `string`.

```ruby
parsed_file = JSON.parse(string)
```

Esto nos devolverá el JSON dividido en claves y valores, por lo que, para acceder al valor de una clave en concreto, a través de la variable donde lo hemos guardado...

```ruby
string = '{"desc":{"someKey":"someValue","anotherKey":"value"}}'
parsed_file = JSON.parse(string)
parsed_file["anotherKey"] # Nos devuelve al valor de 'anotherKey'
```
