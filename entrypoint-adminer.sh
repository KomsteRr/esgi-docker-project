#!bin/sh

php -S 0.0.0.0:80 opt/adminer/adminer-4.8.1.php

exec "$@"