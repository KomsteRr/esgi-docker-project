
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

### Docker Compose
Docker Compose DB + Adminer :
```
    docker compose up db-docker-compose.yml up
```