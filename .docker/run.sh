#! /bin/bash

case $1 in
up) 
    docker-compose up -d ;;
down) 
    docker-compose down ;;
rm)
    service docker restart && \
    docker-compose down --rmi all ;;
app)
    docker-compose exec app bash ;;
build)
    docker-compose build $2 ;;
ps)
    docker-compose ps ;;
log)
    docker-compose logs ;;
kill)
    service docker restart && \
    docker system prune --volumes -f && \
    docker image prune -a -f && \
    docker network prune -f && \ 
    docker network rm $(docker network ls) ;;
*) 
    echo "Opcao Invalida!" ;;
esac