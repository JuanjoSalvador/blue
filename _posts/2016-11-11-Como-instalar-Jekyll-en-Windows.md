---
layout: post # Sustituye el layout si lo usas uno diferente
title: Como instalar Jekyll en Windows # Nombre generado automáticamente
---

Con motivo de la segunda edición de mi charla [*Construye tu web como un hacker*](http://juanjosalvador.es/2016/09/20/Construye-tu-web-como-un-hacker/) en las **Jornadas Hacklab Almería 2016**,
he decidido instalar un Jekyll en mi netbook con Windows 10. ¿Por qué? En primer lugar, porque intuyo que la mayoría de asistentes de la charla serán usuarios del sistema de Microsoft,
y en segundo lugar, porque la instalación de Jekyll en Windows es más complicado que en GNU/Linux, y hacerlo ha sido un pequeño reto.

### Instalar Ruby

El primer paso, es instalar Ruby y Ruby Development Kit en Windows. La mejor forma de hacerlo es a través de [**RubyInstaller**](http://rubyinstaller.org/downloads/).

Se trata de un ejecutable, es simplemente seguir los pasos del asistente y a volar. A continuación, y desde la misma web de RubyInstaller
podemos descargar el Development Kit. Al ejecutarlo, nos pide una ruta de extracción, así que lo extraemos en `C:\RubyDevKit`.

Para instalarlo, abrimos la consola CMD de Windows, y navegamos hasta la ruta donde hemos extraído el Development Kit de Ruby, y lo instalamos.

```
> ruby dk.rb init
> ruby dk.rb install
```

### Instalar Rubygems

Rubygems es el gestor de paquetes de Ruby, creado por la comunidad, e imprescindible cuando trabajas con este lenguaje.

Descargamos el paquete ZIP desde la [web de Rubygems](https://rubygems.org/pages/download), y lo descomprimimos. Para instalarlo,
abrimos la consola de Windows con Ruby, navegamos hacia la ruta donde hayamos descomprimido el paquete, y lo instalamos:

```
> ruby setup.rb
```

Tras unos minutos, tendremos Rubygems instalado y podemos continuar.

### Instalar Jekyll

Una vez tenemos Ruby y Rubygems instalado, podemos instalar Jekyll, pero para asegurarnos de que no fallan las dependencias,
primero instalaremos Bundler.

```
> gem install bundler
> gem install jekyll
```

Cuando termine la instalación, ya podemos crear nuevos sitios, servir los que tenemos creados, y ponernos a crear.


