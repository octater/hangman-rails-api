#!/bin/bash

# TOKEN="BAhJIiVlN2I2MmVjMDE5YjFiOWVlZjMyZmI4ODFhYmQ2Y2I3NgY6BkVG--7ef3a3dead45e71c9617279bf655891b73a5e728" sh scripts/games/create-game.sh

curl --include --request POST http://localhost:4741/games \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "game": {
      "phrase_id": '10',
      "user_id": '12',
      "letters_played": '0',
      "game_status": '0'
    }
  }'
