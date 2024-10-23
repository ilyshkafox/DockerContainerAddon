echo "Starting..."

export TIME_ZONE=$TZ
export TS3SERVER_DB_HOST="$(bashio::config 'db.host')"
export TS3SERVER_DB_NAME="$(bashio::config 'db.database')"
export TS3SERVER_DB_USER="$(bashio::config 'db.user')"
export TS3SERVER_DB_PASSWORD="$(bashio::config 'db.password')"

./init