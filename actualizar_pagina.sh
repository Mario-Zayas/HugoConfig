#!/bin/bash

# Este script esta realizado para actualizar tu pagina web con commits
# desde tu maquina hasta github

# El Script debe utilizarse en la carpeta en la cual tengas todo lo necesario

# Primero usamos Hugo, para crear la carpeta public.

hugo

# Una vez hecho esto, se copiara el contenido de la carpeta public generado
# Y se copiará en el directorio del repositorio HTML

cp -r public/* ../HugoHMTLPag

# Ahora se habrá copiado en el directorio del HTML, una vez hecho esto cambiaremos al directorio del HTML

cd ../HugoHMTLPag

# Una vez dentro procederemos a hacer un git add, un git commit -am "Cambios realizados" y un git push origin main

git add *

git commit -am "Cambios realizados"

git push origin main

# Y listo, script finalizado
# Puedes hacer exactamente lo mismo pero con el contenido de la configuración si quieres cambiarlo
