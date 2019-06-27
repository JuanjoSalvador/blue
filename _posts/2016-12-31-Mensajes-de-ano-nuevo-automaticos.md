---
layout: post # Sustituye el layout si lo usas uno diferente
title: Mensajes de Año Nuevo automáticos
---

En este día, normalmente la banda de 3G/4G tiende a estar colapsada por la cantidad de mensajes de "Feliz año" que envía la gente a la misma hora.
Esto, junto a tener que escribir el mismo mensaje para tus compañeros de trabajo, tu jefe, tus familiares, tu abuela (que es muy moderna y tiene smartphone)
hace que el año nuevo sea cada vez más desesperante... ¿Y si **automatizamos esta tarea** y que sea otro quien se ocupe de enviarlo en nuestro lugar?

Esto es posible gracias a la magia de **[Telegram-CLI](https://github.com/vysheng/tg) y Bash**.

En primer lugar, necesitas instalar Telegram-Cli (Linux). Mi recomendación es instalarlo siempre desde el código fuente. Y si usas Debian,
ten presente [esta issue](https://github.com/vysheng/tg/issues/1256), ya que existe algún problema con OpenSSL a la hora de hacer el `make`.
A continuación es necesario que nos logueemos (introduciendo el número de teléfono y el código del país).

En segundo lugar, necesitas este [script](http://juanjosalvador.es/random/happyNewYear.sh) y un `usernames.txt` donde incluiremos los ID de toda la gente a la que queremos que le llegue el mensaje (uno por línea).

El script original está aquí. Necesitarás actualizar la variable `PATH` con la ruta donde tienes tu Telegram-CLI instalado.

```shell
#!/bin/bash

############################################
# Author: Juanjo Salvador Piedra
# Website: http://juanjosalvador.es
# GitHub: https://github.es/JuanjoSalvador
# Twitter: @Linuxneitor
# Telegram: @JuanjoSalvador
############################################

# PATH to your Telegram-Cli installation
PATH="/path/to/tg"
# Replace this with your own message
MESSAGE="Feliz año nuevo! De parte de Juanjo y el equipo de JotaDevs ;)"
# File where is all usernames (one per line)
FILE="usernames.txt"

while IFS='' read -r USERNAME; do
	$PATH/bin/telegram-cli -W -e "msg $USERNAME $MESSAGE" > /dev/null && echo "Message sent to $USERNAME"
	sleep 10
done < "$FILE"
```

El último paso es programar el proceso utilizando `at`.

```
$ at 0000
```
Y veremos como el prompt cambia por un `>`. Entonces introducimos:

```
bash /ruta/del/script/happyNewYear.sh
```

Y le enviamos un EOF con Ctrl-D. Añadir `bash` delante es importante, dado que `at` ejecuta todo con `/bin/sh` en lugar de BASH, por lo que el script fallaría
si no le indicamos explícitamente como debe ejecutarlo.

Llegados a este punto, podemos salir y despreocuparnos, que nuestro ordenador se encargará de enviar el mensaje llegada la hora, a la lista de contactos especificados.

Feliz Año Nuevo, y que disfrutéis de las vacaciones ;-)

#### ACTUALIZACIÓN

Me han notificado que es posible que Telegram nos ponga una limitación de mensajes por minuto que podemos enviar, lo cual podría dar pie a un baneo de una hora. Para evitar eso, he añadido un `sleep 10` entre mensaje y mensaje. Sin embargo, es recomendable que la lista de usuarios no tenga más de 20 contactos para evitarnos malfuncionamiento.
