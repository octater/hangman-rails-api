#!/bin/bash

# TOKEN="BAhJIiUyOWU3MTJhY2JkYjg5MWRhNjM2MTFmMzQ4ZTdhNGI1MgY6BkVG--3029a6eacbb6252d29b27d42ae219ebb8b8ceef2" sh scripts/games/create-game.sh

curl --include --request POST http://localhost:4741/games \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "game": {
      "phrase_id": '3'
    }
  }'
