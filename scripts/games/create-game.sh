curl --include --request POST http://localhost:4741/games \
  --header "Content-Type: application/json" \
  --data '{
    "game": {
      "player_id": "1",
      "game_status": "I",
      "letters_played": {
        "index": "1",
        "value": "A"
      }
    }
  }'


  API="${API_ORIGIN:-http://localhost:4741}"
      URL_PATH="/games/$ID"
      curl "${API}${URL_PATH}" \
        --include \
        --request PATCH \
        --header "Authorization: Token token=$TOKEN" \
        --header "Content-Type: application/json" \
        --data '{
          "game": {
            "cell": {
              "index": "'"${INDEX}"'",
              "value": "'"${VALUE}"'"
            },
            "over": "'"${OVER}"'"
          }
        }'
  # data output from curl doesn't have a trailing newline
  echo
