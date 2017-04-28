#!/bin/bash

# TOKEN=BAhJIiUzNTUwOWMyMTM2Y2ExNzUxYTFiNjgyMGYxNmE4OWQ2OAY6BkVG--e80d6ffc766f11dd54233cf5df51f47ff300dd63 sh scripts/games/show-games.sh

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/games"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request GET \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=$TOKEN"
#
# echo



curl --include --request GET http://localhost:4741/games \
  --header "Authorization: Token token=$TOKEN"
