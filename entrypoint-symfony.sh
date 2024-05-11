#!bin/sh

cd /home

if [ -z "$(ls -A /home/)"]; then
    echo "Aucun projet setup"

    composer create-project symfony/skeleton:"7.0.*" $SYMFONY_PROJECT_NAME

    cd $SYMFONY_PROJECT_NAME

    composer require -W --quiet webapp
else
    echo "Projet Trouvé"
    
    cd $SYMFONY_PROJECT_NAME
fi

# export LD_LIBRARY_PATH=/usr/lib:$LD_LIBRARY_PATH

# caddy run --config /caddyfile
php -S 0.0.0.0:80 ./public/index.php

exec "/bin/sh"