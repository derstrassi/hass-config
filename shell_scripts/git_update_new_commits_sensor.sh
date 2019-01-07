cd /root/.homeassistant
git fetch origin master
commits="$(git rev-list --count master..origin/master)"
pw="$(grep HTTP_API_PASSWORD secrets.yaml | sed 's/HTTP_API_PASSWORD://')"

curl -X POST -H "x-ha-access: $pw" -H "Content-Type: application/json" -d "{\"state\": $commits}" "http://127.0.0.1:8123/api/states/sensor.new_commits"
