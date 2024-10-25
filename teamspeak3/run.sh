#!/bin/bash

# Чтение JSON файла и установка переменных
TIME_ZONE=$(jq -r '.time_zone' /data/options.json)

# Экспорт переменных окружения
export TIME_ZONE

/init