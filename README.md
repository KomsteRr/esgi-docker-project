
# Projet Docker ESGI 4IW

Ceci est le depot du projet docker IW

## Procedure

### Build Images
PostgreSQL :
```
    docker build . -t esgi-postgres -f Dockerfile.postgres
```

Adminer :
```
    docker build . -t esgi-adminer -f Dockerfile.adminer
```

Composer :
```
    docker build . -t esgi-composer -f Dockerfile.composer
```

Symfony :
```
    docker build . -t esgi-symfony -f Dockerfile.symfony
```

### Docker Compose
Docker Compose DB + Adminer :
```
    docker compose up db-docker-compose.yml up
```

Docker Compose Composer + Symfony :
```
    docker compose up symfony-docker-compose.yml up
```