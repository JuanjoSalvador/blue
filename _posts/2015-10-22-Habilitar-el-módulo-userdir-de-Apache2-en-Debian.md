---
layout: post # Sustituye el layout si lo usas uno diferente
title: Habilitar el módulo userdir de Apache2 en Debian # Nombre generado automáticamente
---

El módulo `userdir` de Apache2 nos permite tener una carpeta en nuestro /home, llamada public_html, donde un usuario de nuestro servidor, puede alojar sus propios documentos y que estos estén disponibles en Apache bajo la url http://mi-servidor/~usuario.

Aunque en distros como OpenSUSE, el módulo `userdir` viene habilitado por defecto, en Ubuntu/Debian no es el caso, por lo que si queremos disfrutar de esta característica, tendremos que hacerlo a mano.

### Habilitar el módulo

Para empezar, tenemos que habilitar el módulo con la siguiente instrucción.

```bash
sudo a2enmod userdir
```

### Configurar el módulo

Nos pedirá que reiniciemos Apache para tener esta característica habilitada. Pero aún nos queda un poco, ahora vamos a configurar el módulo, editando `userdir.conf`. Eso si, antes de editarlo, haremos un backup por si las moscas.

```bash
sudo cp /etc/apache2/mods-enabled/userdir.conf /etc/apache2/mods-enabled/userdir.conf.backup
sudo nano /etc/apache2/mods-enabled/userdir.conf
```

Aquí yo uso nano, pero tu puedes usar gedit, vim, leafpad o el editor de texto plano que más te guste.

Este es el original.

```xml
    <IfModule mod_userdir.c>
        UserDir public_html
        UserDir disabled root

        <Directory /home/*/public_html>
            AllowOverride FileInfo AuthConfig Limit Indexes
            Options MultiViews Indexes SymLinksIfOwnerMatch IncludesNoExec
            <Limit GET POST OPTIONS>
                Require all granted
            </Limit>
            <LimitExcept GET POST OPTIONS>
                Require all denied
            </LimitExcept>
        </Directory>
    </IfModule>
```
Modificaremos las líneas 6, 7, 9 y 12, y añadiremos en sus respectivos bloques algunas líneas extra, de modo que quedaría tal que así.

 ```xml
    <IfModule mod_userdir.c>
            UserDir public_html
            UserDir disabled root

            <Directory /home/*/public_html>
            AllowOverride All
            Options MultiViews Indexes SymLinksIfOwnerMatch
            <Limit GET POST OPTIONS>
                 #Require all granted
                    Order allow,deny
                    Allow from all
            </Limit>
            <LimitExcept GET POST OPTIONS>
                 #Require all denied
                    Order deny,allow
                    Deny from all
            </LimitExcept>
            </Directory>
    </IfModule>
```

Una vez tengamos editado el módulo `userdir.conf`, podremos acceder a nuestra `public_html` situada en `/home/$USER`, lo cual nos permite alojar ahí cualquier documento para que aparezca en nuestro servidor (y si es un index.html, mejor).

Para terminar, reiniciamos Apache2 y añadimos el directorio.

```bash
    sudo service apache2 restart
    mkdir /home/$USER/public_html
```
Sin embargo, esto aún no soporta PHP, por ejemplo. Veremos como añadir ese soporte en otro artículo.

### Posible error de Apache2

Es posible que tras configurarlo, al acceder a http://mi-servidor/~usuario nos de un error de permisos (403 Forbidden). La solución a esto es sencilla, basta con asegurarnos de que nuestra carpeta personal tiene permiso de lectura y ejecución para grupos y otros usuarios.

```bash
    sudo chmod -R 755 /home/tu-usuario/
```

Si aún así falla, nos vamos a `/etc/apache2/apache2.conf` y como root añadimos el siguiente código:

```xml
    <Directory /home/*/public_html>
            Options Indexes FollowSymLinks
            AllowOverride None
            Require all granted
    </Directory>
```

Una vez hecho esto, no debería dar error de nuevo.
