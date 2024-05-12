#!bin/sh

cd /home

if [ -n "$(find "/home/" -maxdepth 0 -type d -empty 2>/dev/null)" ]; then
    echo "Aucun projet setup"

    composer create-project symfony/skeleton:"7.0.*" $SYMFONY_PROJECT_NAME

    cd $SYMFONY_PROJECT_NAME

    composer require -W --quiet webapp
else
    echo "Projet Trouvé"
    
    cd $SYMFONY_PROJECT_NAME
fi

# export LD_LIBRARY_PATH=/usr/lib:$LD_LIBRARY_PATH

# caddy fmt --overwrite /etc/caddy/CaddyFile

# caddy run --watch --config /etc/caddy/CaddyFile --adapter caddyfile
php -S 0.0.0.0:80 ./public/index.php

exec "/bin/sh"