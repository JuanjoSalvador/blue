---
layout: post
title: 5 herramientas que todo Web Developer debería conocer
---

Cuando entras en el mundo del desarrollo web e indagas a fondo, te das cuenta de que hay un mundo de posibilidades. Pero para aprovechar al máximo este mundo de posibilidades, es conveniente conocer y saber manejar algunas herramientas que nos harán la vida más fácil.

### Framework CSS

Ya sea Bootstrap, o tu propia librería de estilos y animaciones que has ido desarrollando a lo largo de los años. Conocer un framework CSS y evitar tener que escribir manualmente todos los estilos de cada web, acelera muchísimo el trabajo de maquetación y de estilos. Algunos ejemplos interesantes son:

* **Bootstrap** proporciona un sistema de columnas que facilita la responsividad, siendo además el más extendido.
* **Kube**, un framework CSS responsivo, flexible y ligero, diseñado para profesionales.
* **Flexbox** es otro sistema de columnas responsivo basado en la propiedad `flex`de CSS.

### Framework JavaScript

Conocer **jQuery** hoy en día no basta. Cierto es que facilita muchos trabajos relacionados con JavaScript y se ha convertido en el pilar base de muchos sistemas de UI/UX, pero en el mundo real, un front-end developer necesitará crear algo más allá de interfaces. ¿Que tal aplicaciones escritas completamente en JavaScript? En este grupo tenemos una variedad casi infinita, se dice que si levantas una piedra, aparecen 12 frameworks de JavaScript.

* **Ember.js** se define como un framework para crear aplicaciones ambiciosas, basado en el paradigma MVVM (Modelo-Vista-Vistamodelo).
* **AngularJS** conocido como "_Superheroic JavaScript MVW_", donde MVW se traduce como Modelo-Vista-Loquesea.
* **Backbone.js**, el framework más ligero (pesa solo 7Kb), potente y muy flexible.

En este punto, como mención especial añadiría **CoffeeScript**, un pequeño lenguaje que se compila a JavaScript (como TypeScript en Angular 2) pensado para añadir azúcar sintáctico a JavaScript. ¡Endulza tu código!

### Gestores de paquetes

Cuando hablo de gestores de paquetes, orientados al desarrollo web, hablo sobretodo de **npm** y **bower**, dos herramientas que considero claves en este tipo de desarrollos.

**NPM**, es un gestor de paquetes de **node.js** y que nos proporciona acceso a un sinfín de librerías y componentes JavaScript, como *shelljs*, una librería que proporciona instrucciones UNIX en JS.

**Bower** sin embargo, está enfocado a descargar y administrar dependencias  del lado cliente (Bootstrap por ejemplo, puede instalarse desde bower).

Ambos sistemas incorporan un fichero de dependencias, `package.json` y `bower.json` respectivamente, donde le podemos indicar los paquetes que queramos descargar e instalarlos de un plumazo con `npm install`.

Mención especial a **Yeoman**, un `kickstarter manager`, o un gestor de plantillas. Cada proyecto requiere una esctructura de carpetas y ficheros específicos, y con Yeoman, podemos generarlos. Muy útil sobretodo para Angular.

### Tester de APIs

Una tendencia actual y en alza, es el modelo de aplicaciones centralizadas basadas en API REST, o el _deja que el servidor trabaje_. Este modelo de apps se basa en un servidor, con todo el motor de la aplicación sobre el, y que se conecta a los clientes a través de un API REST. Este sistema por ejemplo, lo encontramos en el _zen de Angular_.

Cuando estamos desarrollando un API REST, para hacer las pruebas pertinentes, tenemos que además tener listo un cliente. Esto puede retrasarnos o aumentar la carga de trabajo, así que para facilitar estas tareas, ¿por qué no usar un tester? Mi recomendación en este punto es **Postman**.

Postman es una aplicación que podemos instalar en el navegador (Chorme/Chromium) y utilizarla para **atacar nuestra API** pasándole una URL, el método (POST/GET) y unos parámetros si fuesen necesarios. Inmediatamente tendremos la respuesta del servidor en formato XML, HTML o JSON, como convenga, y podremos analizar si vamos o no por el buen camino. Considero esta herramienta como una de las más importantes del artículo, ya que agiliza muchísimo el desarrollo back.

### Depurador del navegador

Depurar el código JavaScript solía ser complicado, hasta que aparecieron los depuradores de navegador. Google hizo su apuesta con **Chrome DevTools**, una herramienta que nos permite analizar elementos, estilos, tráfico y salidas de consola de JavaScript en tiempo de ejecución. Asi mismo, incluye un depurador, y permite editar el código en vivo.

Firefox incluye una suite de herramientas muy similar e igual de potente, sin embargo, para entrar en profundidad, existe una versión alternativa del navegador, denominada **Firefox Developer**, con actualizaciones más frecuntes y un completo editor de código que permite analizar y modificar _on the fly_.
