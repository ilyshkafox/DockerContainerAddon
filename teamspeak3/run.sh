#!/bin/bash

# Чтение JSON файла и установка переменных
DATA_PATH=$(jq -r '.data_path' /data/options.json)
TIME_ZONE=$(jq -r '.time_zone' /data/options.json)
TS3SERVER_DB_HOST=$(jq -r '.db.host' /data/options.json)
TS3SERVER_DB_NAME=$(jq -r '.db.database' /data/options.json)
TS3SERVER_DB_USER=$(jq -r '.db.user' /data/options.json)
TS3SERVER_DB_PASSWORD=$(jq -r '.db.password' /data/options.json)


TS3SERVER_DB_PLUGIN=ts3db_mariadb
TS3SERVER_DB_SQLCREATEPATH=create_mariadb
TS3SERVER_DB_WAITUNTILREADY=30
TS3SERVER_LICENSE=accept

# Экспорт переменных окружения
export TIME_ZONE
export TS3SERVER_DB_HOST
export TS3SERVER_DB_NAME
export TS3SERVER_DB_USER
export TS3SERVER_DB_PASSWORD
export TS3SERVER_DB_PLUGIN
export TS3SERVER_DB_SQLCREATEPATH
export TS3SERVER_DB_WAITUNTILREADY
export TS3SERVER_LICENSE


mkdir -p "$DATA_PATH"
ln -fP "$DATA_PATH" "/teamspeak/save"

/init