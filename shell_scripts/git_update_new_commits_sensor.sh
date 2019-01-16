cd /root/.homeassistant
git fetch origin master
commits="$(git rev-list --count master..origin/master)"
curl -X POST -H "Content-Type: application/json" -d "{\"state\": $commits}" "http://127.0.0.1:8123/api/states/sensor.new_commits"
exit 0
