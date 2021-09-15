#!/bin/bash -e
HOST_NAME="monitor.dev.shearn89.com"
SITE_NAME="cmk"
API_URL="https://$HOST_NAME/$SITE_NAME/check_mk/api/1.0"

USERNAME="automation"
PASSWORD="d9c08b0b-fa14-4ded-8b00-80c614cfb23e"

if [[ -f /opt/.cmk_added ]]
then
  echo 'already run'
  exit 0
fi

http POST "$API_URL/domain-types/host_config/collections/all" \
  "Authorization:Bearer $USERNAME $PASSWORD"  folder='/' host_name=$HOSTNAME
http POST "$API_URL/objects/host/$HOSTNAME/actions/discover_services/invoke" \
  "Authorization:Bearer $USERNAME $PASSWORD" mode=new

http POST "$API_URL/domain-types/activation_run/actions/activate-changes/invoke" \
  "Authorization:Bearer $USERNAME $PASSWORD" redirect=false sites:='["cmk"]'

touch /opt/.cmk_added