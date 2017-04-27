#!/bin/bash

# ID=1 TOKEN="BAhJIiU1MDQ4NGY1ODhiNGMwMDNlNDE0NTQzZmNkYTk0ZmU0YgY6BkVG--761bcfe0d0d4a8ef6cc07a5764f96a1eb78cef9e" scripts/sign-out.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
