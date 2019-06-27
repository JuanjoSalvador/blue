---
layout: post # Sustituye el layout si lo usas uno diferente
title: Escribiendo un bot para Telegram
---

Telegram es un cliente de mensajería fantástico, como ya ha quedado reflejado en anteriores posts de mi blog, como cuando utilicé un [sistema automatizado para enviar felicitaciones de año nuevo usando Telegram-cli](http://juanjosalvador.me/2016/12/31/Mensajes-de-ano-nuevo-automaticos/). Es muy versátil y extensible mediante bots que pueden hacer todo lo que imaginemos y más.

## La idea

Es el caso de MariaBot, un bot sencillo que he desarrollado para el grupo [Andalucía Developers](https://t.me/andaluciadev) con dos premisas:

* Ayudar a gestionar ciertas tareas del grupo.
* Lanzar un proyecto conjunto para todos los miembros del grupo.

Actualmente el bot solo tiene capacidad para dar la bienvenida de forma automática a cada nuevo miembro que se une al grupo. Próximamente espero que pueda atender más tareas, como almacenar enlaces de recursos, o ser capaz de realizar tareas sencillas.

Está programado en Python usando Telebot.

## El código

Lo primero que tenemos que hacer es inicializar el bot. Para eso necesitaremos un API token, que podemos conseguir a través de @BotFather, un bot (valga la redundancia) que se encarga de dar de alta nuevos autómatas en el API de telegram.

```python

    import telebot

    bot = telebot.TeleBot(<TU TOKEN AQUÍ>)
```

El siguiente paso es añador un *handler* (manejador) que permita al bot escuchar eventos y responder a ellos.

```python
# Escuchamos el evento de tipo "new_chat_members" que se lanza cuando entra un nuevo usuario al grupo.

@bot.message_handler(func=lambda m: True, content_types=['new_chat_members'])

# Y ejecutamos la función "welcome" el respuesta.
def welcome(message):
    new_member = message.new_chat_member.username
    msg = "Bienvenido/a al grupo, " + new_member
    chat_id = message.chat.id

    bot.send_message(chat_id, msg)

```

Este paso podemos repetirlo todas las veces que necesitemos para cada evento que necesitemos. Permite responder ante comandos, mensajes anclados, usuarios que entran o salen, y una extensa lista más. Puedes consultar toda la documentación [aquí](https://github.com/eternnoir/pyTelegramBotAPI).

Para terminar, solo tenemos que decirle a nuestro bot que empiece a funcionar.

```python
    bot.polling()
```

## Algunas mejoras

Además del bot, también escribí un script bash que hace las veces de manager para el bot. Me permite arrancarlo y pararlo como si de un *daemon* se tratase, haciendolo mucho más sencillo.

El código fuente del bot completo está liberado en GitHub bajo licencia MIT.

> https://github.com/JuanjoSalvador/maria-bot

Para ejecutarlo, solo necesitamos un servidor que soporte Python. Yo lo tengo funcionando en mi propio VPS, pero otras alternativas interesantes son PythonEverywhere, Cloud9, etc.

## Conclusión

Hacer bots de Telegram es bastante sencillo, pero no debemos olvidarnos de que se trata solamente de una interfaz casi humana para un programa. Podemos hacer lo que queramos con ellos, desde dar la bienvenida a un grupo, hasta que traduzca contenido entre idiomas.