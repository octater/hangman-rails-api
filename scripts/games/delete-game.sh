curl --include --request DELETE http://localhost:4741/games/1

#!/bin/bash
# run as sh scripts/games/delete-game.sh

TOKEN="BAhJIiUyNzIwNDhhZWRjZWNjMmU0MjhhYjZkMjEzYjkyMDZmOAY6BkVG--17696fca22d8d0f4734b619314151046355db51d"

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/games"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request GET \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=$TOKEN"
#
# echo



curl --include --request DELETE http://localhost:4741/games/5 \
  --header "Authorization: Token token=$TOKEN"
