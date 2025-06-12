#!/bin/bash

CONTAINER_NAME=Hello_word_web
IMAGE_NAME=${DOCKER_IMAGE:-"your_dockerhub_username/hello_word:latest"}

echo "старый контейнер остановлен"
docker stop "$CONTAINER_NAME" 2>/dev/null || true
docker rm "$CONTAINER_NAME" 2>/dev/null || true

echo "Загружаю свежий образ"
docker pull "$IMAGE_NAME"

echo "Запускаю контейнер"
docker run -d --name "$CONTAINER_NAME" -p 80:80 "$IMAGE_NAME"

