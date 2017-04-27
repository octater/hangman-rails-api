#!/bin/bash

#$ ID=1 OLDPW="test" NEWPW="newtest" TOKEN="BAhJIiUwNGQxMWI5NDdkYmZjMzM2NjA0N2RiMzc3ODUzZTEzOAY6BkVG--149e8ab4107b341aa59d25f97a9971c35d186cd0" sh scripts/change-password.sh


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
