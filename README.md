# Home-Assistant Configuration ![TravisCI-Build](https://travis-ci.org/derstrassi/hass-config.svg?branch=develop)

This is my Home-Assistant configuration.

## TravisCI

I use Travis to do a config check on every commit I push to my `develop` branch. If the build succeeds, the commit is automatically merged into my productive `master` branch.
See [packages/git.yaml](https://github.com/derstrassi/hass-config/blob/master/packages/git.yaml) and [travis_automerge.sh](https://github.com/derstrassi/hass-config/blob/master/travis_automerge.sh).


## Connected Devices
- a lot of [Sonoff Basic](https://www.itead.cc/sonoff-wifi-wireless-switch.html)
- [Sonoff Touch](https://www.itead.cc/sonoff-touch-eu-local.html) and [Sonoff T1 Dual](https://www.itead.cc/sonoff-t1-eu.html)
- many more...

All Sonoff devices are flashed with latest [Tasmota](https://github.com/arendst/Sonoff-Tasmota) release to use **MQTT**.
