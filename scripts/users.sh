#!/bin/bash

# TOKEN="BAhJIiUwNGQxMWI5NDdkYmZjMzM2NjA0N2RiMzc3ODUzZTEzOAY6BkVG--149e8ab4107b341aa59d25f97a9971c35d186cd0" scripts/users.sh


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/users"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
