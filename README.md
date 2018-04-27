# Home-Assistant Configuration [![TravisCI-Build](https://travis-ci.org/derstrassi/hass-config.svg?branch=develop)](https://travis-ci.org/derstrassi/hass-config)

This is my Home-Assistant configuration.

## Hardware

HA is running on a raspberryPi 3 installed on Hassbian. A wall mounted iPad mini and a FireTablet to control HA.

## Connected Devices

### Lights / Power Control
 
- a lot of [Sonoff Basic](https://www.itead.cc/sonoff-wifi-wireless-switch.html)
- [Sonoff Touch](https://www.itead.cc/sonoff-touch-eu-local.html) and [Sonoff T1 Dual](https://www.itead.cc/sonoff-t1-eu.html)
- Pilight @ raspberryPi to control 433Mhz RF devices:
  - Smartwares Outlets
  - Smartwares Wall Switch
  - Several no-name RF Outlets
- 2x Xiaomi Aqara Gateway (ZigBee):
  - 4 x Mi / Aqara Motion Sensors
  - 2 x Mi Door / Window Sensor
  - 5 x Mi / Aqara Temperature Sensor
  - 1 x Mi Smart Plug
  - 2 x Aqara Wall Switch (double)
- YeeLight Smart Bulb

### Media Player

- LG TV
- Volumio @ raspberryPi (via MPD for TTS)
- Emby Media Server
- PS4 (not working atm)

### Misc

- Xiaomi / XiaoFang Camera
- Tado Smart Thermostate to control central heating
- UniFi gear for networking:
  - EdgeRouter ER-X as main router
  - 2 x UniFi AC-Lite
  - (Fritz!Box 6490 Cable for internet connectivity)

### Device Tracker

- Tado with Geo-Fencing
- UniFi_DirectAP

All Sonoff devices are flashed with latest [Tasmota](https://github.com/arendst/Sonoff-Tasmota) firmware to use **MQTT**.

## TravisCI

I use Travis to do a config check on every commit I push to my `develop` branch. If the build succeeds, the commit is automatically merged into my productive `master` branch.
See [packages/git.yaml](https://github.com/derstrassi/hass-config/blob/master/packages/git.yaml) and [travis_automerge.sh](https://github.com/derstrassi/hass-config/blob/master/travis_automerge.sh).
