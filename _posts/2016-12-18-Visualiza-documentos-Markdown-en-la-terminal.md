---
layout: post # Sustituye el layout si lo usas uno diferente
title: Visualiza documentos Markdown en la terminal # Nombre generado automáticamente
---

Últimamente el formato Markdown (`.md`) está trinfando mucho, dada su versatilidad y simpleza. Prueba de ello
es que podemos encontrar prácticamente en cualquier repositorio que clonemos desde Github, u otro servicio similar,
documentación escrita en dicho formato.

Normalmente el Markdown se **parsea a HTML**, de modo que hace su visualización en webs muy cómoda,
de la misma forma que diversos editores (como VS Code, o Atom) soportan la previsualización de nuestros documentos. Claro que, ¿que ocurre
si **no tenemos acceso a una GUI**, no tenemos un editor compatible, o no queremos tener que abrirlo? Hay un truco que nos permite
leer nuestros documentos Markdown directamente **desde la terminal**.

### Requisitos

* **Lynx**. Navegador web en modo texto.
* **Pandoc**. Conversor de documentos muy versátil.

Ambos paquetes podemos instalarlos en nuestro sistema *nix (GNU/Linux, OSX, BSD, etc).

### Uso

```shell
$ pandoc file.md | lynx -stdin
```

### ¡Allá vamos!

![Using Lynx to view a Markdown document](http://i.imgur.com/Gm2Ci0D.png)