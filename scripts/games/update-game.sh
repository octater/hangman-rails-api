  #!/bin/bash

  # ID=11 TOKEN="BAhJIiUyOWU3MTJhY2JkYjg5MWRhNjM2MTFmMzQ4ZTdhNGI1MgY6BkVG--3029a6eacbb6252d29b27d42ae219ebb8b8ceef2" LETTERS=6 STATUS=W sh scripts/games/update-game.sh
  # ID=11 TOKEN="BAhJIiU4OTc5NzNjMTdiOWJhMjJhYTcwMzRjYmYzYTVhMzNkNAY6BkVG--3d56cddecc06e1308d3add4c294fb955bf9813bd" LETTERS=6 STATUS=W sh scripts/games/update-game.sh

  API="${API_ORIGIN:-http://localhost:4741}"
      URL_PATH="/games/$ID"
      curl "${API}${URL_PATH}" \
        --include \
        --request PATCH \
        --header "Authorization: Token token=$TOKEN" \
        --header "Content-Type: application/json" \
        --data '{
          "game": {
            "letters_played": "'"${LETTERS}"'",
            "game_status": "'"${STATUS}"'"
          }
        }'
  # data output from curl doesn't have a trailing newline
  echo
