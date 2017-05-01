curl --include --request DELETE http://localhost:4741/games/1

#!/bin/bash
# run as sh scripts/games/delete-game.sh

TOKEN="BAhJIiU1NTk3OGE2N2YxZjBhZmM5ZGFiNTZmN2Q0ZjUyNTg1ZAY6BkVG--d2725c3d63307e39563555babb0c6041dd0e4723"

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/games"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request GET \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=$TOKEN"
#
# echo



curl --include --request DELETE http://localhost:4741/games/52 \
  --header "Authorization: Token token=$TOKEN"
