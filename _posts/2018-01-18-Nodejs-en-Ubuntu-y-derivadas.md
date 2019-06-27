---
layout: post
title: Node.js en Ubuntu y derivadas
---

Instalar Node.js en Linux, solía ser una tarea fácil. Y aunque por norma general mi recomendación es instalar a partir del código fuente,
para la mayoría de usuarios es más fácil hacerlo desde el gestor de paquetes. Ubuntu tiene un problema con esto: el conflicto de nombres de
paquetes. Esto se debe a que, mientras que en la mayoría de distribuciones, Node.js es llamado sencillamente `node` (tanto el instalador
como el ejecutable), en Ubuntu el paquete `node` atiende a otro software diferente.

```bash
[12:51:08] [~]  → apt search node
[...]
node/trusty 0.3.2-7.4 all
  Amateur Packet Radio Node program (transitional package)
```
Mientras que el que nos interesa a nosotros es el paquete `nodejs`.

```bash
[12:51:08] [~]  → apt search node
[...]
nodejs/unknown,now 8.9.4-1nodesource1 amd64 [installed]
  Node.js event-based server-side javascript engine
```

Otro problema es la ausencia de un paquete actualizado en los repositorios de Ubuntu. A día de hoy (18 de Enero de 2018), los repositorios
de Artful [tienen todavía la versión 6 de Node](https://packages.ubuntu.com/artful/nodejs). Así que, ¿cómo solventamos esto?

Primero instalamos el paquete `nodejs` tal y como explica en la web, añadiendo un repositorio extra.

```bash
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
```

Llegados a este punto, el ejecutable será `/usr/bin/nodejs`, la raíz del conflicto. Lo solucionaremos creando un enlace blando.

```bash
sudo ln -s /usr/bin/nodejs /usr/bin/node
```

Ahora podemos ejecutar `node --version` y comprobar que todo ha ido como la seda.

```
[13:01:35] [~]  → node --version
v8.9.4
```
