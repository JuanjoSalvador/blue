---
layout: post # Sustituye el layout si lo usas uno diferente
title: Desarrollo de aplicaciones móviles con JavaScript # Nombre generado automáticamente
---

La tecnología siempre avanza en torno a facilitarnos según qué tareas. Los primeros ordenadores aparecieron bajo la premisa de realizar cálculos complejos, y en base a esto, hemos ido creando software que facilita cada vez más tareas pesadas, como todo aquello que gira en torno a la burocracia, por ejemplo.

En el caso del desarrollo de aplicaciones para dispositivos móviles no es diferente, y aquí es donde aparecen las **aplicaciones híbridas**, aquellas que complementan las tecnologías web con el poder del código nativo.

### Tipos de aplicaciones

Podemos dividir el grueso de aplicaciones del mercado en tres grandes grupos:

* **Apps Nativas**. Ofrecen un acceso completo al dispositivo y un rendimiento que el resto pueden no tener, pero requieren que se diseñe y construya una aplicación independiente para cada sistema operativo (en su lenguaje nativo), lo cual eleva los costes.

* **Web Apps**. Su desarrollo es mucho más rápido que las aplicaciones nativas, dado que todo el código es HTML, CSS y JS. Pueden correr en cualquier dispositivo que tenga un navegador web, pero eso limita el acceso al dispositivo en si.

* **Apps híbridas**. Ofrecen la solución a medio camino entre las nativas y las web: desarrollo rápido, rendimiento asequible y acceso completo al dispositivo, mediante un contenedor nativo que hace las veces de intermediario entre el usuario y la aplicación, y un código web que ofrece la funcionalidad y la interfaz.

### Desarrollo híbrido: ¿por dónde empezamos?

Existen numerosos frameworks y *app builders* que nos facilitan el proceso de desarrollo, pero yo voy a hablar de tres: **NativeScript**, **Ionic** y **React Native**. Cada uno con sus pros y sus contras.

* **Ionic**. Se trata de un framework de Apache Cordova, la plataforma que heredó el potencial de PhoneGap. Su fuerte está en que otorga el poder de AngularJS a Cordova, además de un conjunto muy completo de herramientas y preconfiguraciones. Es un framework completamente híbrido, dado que se apoya en el contenedor WebView.

* **NativeScript**. Permite desarrollar aplicaciones completamente nativas haciendo uso de tecnologías web: Angular, TypeScript o JavaScript. Aunque su filosofía no se ajusta completamente al modelo híbrido, ya que actúa más bien como Xamarin.

* **React Native**. Plantea aplicaciones nativas, pero escritas en React, el framework JavaScript de Facebook. De forma muy similar al mencionado anteriormente, tampoco sigue exactamente la filosofía de aplicaciones híbridas como tal, sin embargo, si es cierto que ofrece un rendimiento y un tiempo de desarrollo bastante interesantes.

Claro que, con todos estos frameworks podemos desarrollar, pero si queremos además compilar nosotros mismos nuestras aplicaciones, necesitaremos tener instalado y configurado el correspondiente SDK (Android, Windows, iOS), y en el caso de Apple, también necesitaríamos un equipo Mac.

### Ionic

* Se basa en AngularJS, HTML5 y CSS3
* Existe una librería de plugins para acceder al dispositivo: ngCordova.
* Proporciona estilos que emulan el nativo, transiciones, elementos, etc.
* Extiende las funciones que incluía Apache Cordova.
* Herramientas en la nube (Ionic Cloud, Ionic View)

Sitio web: [https://ionic.io](https://ionic.io)

### NativeScript

* Soporta JavaScript, TypeScript y Angular 2
* No requiere tantos conocimientos de HTML y CSS como Ionic
* UI nativas, en lugar de WebView
* Extensible mediante plugins
* Compila a nativo (Android, iOS)

Sitio web: [https://www.nativescript.org/](https://www.nativescript.org/)

### React Native

* Soporta React (TypeScript)
* Compila a nativo (Android, iOS)
* LiveReload: no necesitas volver a compilar para visualizar los cambios.
* React Native UWP permite usar RN para crear apps universales de Windows.
* Orientado a componentes

Sitio web: [https://facebook.github.io/react-native/](https://facebook.github.io/react-native/)

#### ¡Extra!

El trabajo con estilos en React Native puede ser pesado. De igual forma que Ionic posee su propio conjunto de estilos predefinidos que emulan los estilos nativos de iOS y Android, en React Native tenemos librerías de componentes similares, como es el caso de NativeBase.

Sitio web: [http://nativebase.io/](http://nativebase.io/)
