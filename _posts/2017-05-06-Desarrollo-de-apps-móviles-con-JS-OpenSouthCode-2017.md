---
layout: post # Sustituye el layout si lo usas uno diferente
title: Desarrollo de apps móviles con JS [OpenSouthCode 2017] # Nombre generado automáticamente
---

![](https://pbs.twimg.com/media/C_ITh6zXYAIjQiE.jpg)
Foto de [Elio Rojano](http://twitter.com/hellc2)

_¿Buscas las diapositivas de mi presentación?_ [_Están disponibles en Slides.com_](http://slides.com/juanjosalvador/desarrollo-de-apps-con-javascript)

### ¿Por qué JavaScript?

Esta es una pregunta que quizás muchos aquí os estáis haciendo. ¿Por qué JavaScript? 
Yo tengo una respuesta bastante sencilla para esto...

   <cite>¿Y por qué no?<cite>

El enorme "ecosistema" que ha generado JavaScript a su alrededor en cuanto a frameworks
y librerías, lo convierten en un lenguaje muy óptimo para las necesidades de hoy en día.

### WebApps, Progressive WebApps, Apps Híbridas

Existen muchas tecnologías que nos permiten crear nuestras propias aplicaciones móviles usando JavaScript,
así como existen diferentes tipos de aplicaciones que usarían este lenguaje.

La diferencia entre ellas reside primordialmente en las capacidades que nos ofertan. 
Por ejemplo, una webapp es directamente una aplicación que se ejecuta en el navegador 
y que nos permite visualizar contenido. ¿Y que pasa con las Progressive WebApps? 

Pasan a ser una versión evolucionada, a medio camino de webapp y aplicación nativa,
pero manteniendo el estilo.

Las aplicación híbridas, y aquí es donde me gustaría hacer hincapié, son aplicaciones
web, que se cargan desde un contenedor nativo,y que mediante un API propia nos permiten
acceder a componentes y funciones propias del dispositivo, como el espacio de almacenamiento,
la cámara o el GPS.

### Tecnologías JavaScript

¿Significa esto que tengo que aprender a desarrollar en Java o en Swift? 
No, desde que existen tecnologías que permiten a los desarrolladores de mi campo
abarcar más posibilidades, manteniendo una premisa: escribe tu aplicación una vez,
y compílala donde necesites (Android, iOS, Windows Universal App).

### Mantente híbrido VS Compila a nativo

De las tecnologías citadas, Cordova e Ionic utilizan JavaScript (aunque Ionic 2 en adelante ya pasa a usar TypeScript), y el paquete resultante se mantiene como una aplicación web dentro de un contenedor nativo. Sin embargo, NS y RN decidieron ir más allá implementando un bindeo entre TypeScript y las UI nativas.

Esto es especialmente genial, debido a que no vamos a emular una interfaz nativa, VAMOS A CONSTRUIRLA. De la misma forma nos brindan acceso al dispositivo (de forma muy similar a como podemos hacer en JS usando un API diseñada para la ocasión), encima sin necesidad de añadir plugins.

¿Cual es el resultado? En ambos casos vamos a terminar con un APK que hemos programado enteramente en JavaScript, pero solamente en uno de ellos tendremos un app nativa, que nos otorga todas las ventajas de estas.

### Conclusión

¿A que JavaScript mola?
