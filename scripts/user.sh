#!/bin/bash

# ID=1 TOKEN="BAhJIiUwNGQxMWI5NDdkYmZjMzM2NjA0N2RiMzc3ODUzZTEzOAY6BkVG--149e8ab4107b341aa59d25f97a9971c35d186cd0" scripts/user.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/users"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
