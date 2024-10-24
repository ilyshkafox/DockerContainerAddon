#!/bin/bash

# Чтение JSON файла и установка переменных
TIME_ZONE=$(jq -r '.time_zone' /data/options.json)
TS3SERVER_DB_HOST=$(jq -r '.db.host' /data/options.json)
TS3SERVER_DB_NAME=$(jq -r '.db.database' /data/options.json)
TS3SERVER_DB_USER=$(jq -r '.db.user' /data/options.json)
TS3SERVER_DB_PASSWORD=$(jq -r '.db.password' /data/options.json)

# Экспорт переменных окружения
export TIME_ZONE
export TS3SERVER_DB_HOST
export TS3SERVER_DB_NAME
export TS3SERVER_DB_USER
export TS3SERVER_DB_PASSWORD

/init