cd /root/.homeassistant
/usr/local/bin/git fetch origin master
commits=`/usr/local/bin/git rev-list --count master..origin/master`
/usr/local/bin/curl -X POST -H "Content-Type: application/json" -d "{\"state\": $commits}" "http://127.0.0.1:8123/api/states/sensor.new_commits"
