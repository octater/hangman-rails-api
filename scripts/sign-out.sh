#!/bin/bash

# ID=4 TOKEN="BAhJIiVlODBlYzBjMzUwYmM0YjU0MGMwMDhmMzVhMDNlNmM0MgY6BkVG--edc977070125efaf322d674fbede8120339f66b3" scripts/sign-out.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
