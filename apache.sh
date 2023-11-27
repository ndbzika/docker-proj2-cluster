#!/bin/bash

docker volume create app

docker service create --name meu-app --replicas 15 -p 80:80 --mount type=volume,source=app,dst=/usr/local/apache2/htdocs/ httpd