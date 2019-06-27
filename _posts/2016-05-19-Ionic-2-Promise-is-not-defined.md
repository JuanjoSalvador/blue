---
layout: post # Sustituye el layout si lo usas uno diferente
title: Ionic 2 (beta) y el error "Promise is not defined"
---

Esta entrada es más un apunte personal que un artículo. Sin embargo, mis apuntes personales pueden resultar instructivos, así que no veo por qué no colgarlo aquí.

Trata sobre como resolver (o como he resuelto yo) el error `Promise is not defined` al intentar depurar una aplicación híbrida de Ionic 2 (beta 22) desde el navegador, usando `ionic serve`.

### El problema, descrito

Al ejecutar `ionic serve`, es posible que obtengamos el siguiente log.

    Running 'serve:before' gulp task before serve
    [18:28:32] Starting 'clean'...
    [18:28:32] Finished 'clean' after 17 ms
    [18:28:32] Starting 'watch'...
    [18:28:32] Starting 'sass'...
    [18:28:32] Starting 'html'...
    [18:28:32] Starting 'fonts'...
    [18:28:32] Starting 'scripts'...
    [18:28:32] Finished 'scripts' after 76 ms
    [18:28:32] Finished 'html' after 85 ms
    [18:28:32] Finished 'fonts' after 93 ms
    Caught exception:
     ReferenceError: Promise is not defined
        at LazyResult.async (/Users/linuxeitor/Documents/Ionic2/Ionic2SecondApp/node_modules/postcss/lib/lazy-result.js:157:31)
        at LazyResult.then (/Users/linuxeitor/Documents/Ionic2/Ionic2SecondApp/node_modules/postcss/lib/lazy-result.js:79:21)
        at DestroyableTransform._transform (/Users/linuxeitor/Documents/Ionic2/Ionic2SecondApp/node_modules/gulp-autoprefixer/index.js:24:6)
        at DestroyableTransform.Transform._read (/Users/linuxeitor/Documents/Ionic2/Ionic2SecondApp/node_modules/through2/node_modules/readable-stream/lib/_stream_transform.js:159:10)
        at DestroyableTransform.Transform._write (/Users/linuxeitor/Documents/Ionic2/Ionic2SecondApp/node_modules/through2/node_modules/readable-stream/lib/_stream_transform.js:147:83)
        at doWrite (/Users/linuxeitor/Documents/Ionic2/Ionic2SecondApp/node_modules/through2/node_modules/readable-stream/lib/_stream_writable.js:313:64)
        at writeOrBuffer (/Users/linuxeitor/Documents/Ionic2/Ionic2SecondApp/node_modules/through2/node_modules/readable-stream/lib/_stream_writable.js:302:5)
        at DestroyableTransform.Writable.write (/Users/linuxeitor/Documents/Ionic2/Ionic2SecondApp/node_modules/through2/node_modules/readable-stream/lib/_stream_writable.js:241:11)
        at DestroyableTransform.ondata (/Users/linuxeitor/Documents/Ionic2/Ionic2SecondApp/node_modules/through2/node_modules/readable-stream/lib/_stream_readable.js:531:20)
        at DestroyableTransform.emit (events.js:95:17) 
    
    Mind letting us know? https://github.com/driftyco/ionic-cli/issues
    
  Los señores de Ionic, muy amablemente introdujeron un enlace a la página de incidencias de su repositorio, para que notifiquemos el error. Sin embargo, si haces una búsqueda en dicha URL, verás que hay muchos casos similares con respuestas muy variopintas.
  
### El origen
  
Tras indagar en Internet (y mucho StackOverflow), he llegado a la conclusión de que el origen del problema es una **dependencia faltante** y una configuración de Gulp. En concreto, falta añadir un `requiere` a `gulpfile.js` y un paquete NPM a nuestra lista de módulos.

### La solución

Sencillo. Solo tenemos que abrir nuestro `gulpfile.js` (en la raíz del proyecto Ionic), y añadir lo siguiente a la línea 6:

    require('es6-promise').polyfill();

A continuación, instalamos el paquete `es6-promise` con NPM:

    npm install es6-promise
    
¡Y a volar!

Por si acaso, he hecho un [pull request al repositorio de la plantilla `blank` de Ionic 2](https://github.com/driftyco/ionic2-app-base/pull/31), solucionando este problema.
  
  
