# Dockerized Eddystone for Raspberry Pi
Dockerized Eddystone BLE beacon for Raspberry Pi

## How to run

```bash
docker build -t flatlining/eddystone-url .
docker run -it --net host --rm flatlining/eddystone-url bash
```

## References

- https://medium.com/@urish/exploring-the-physical-web-without-buying-beacons-efae51e36c2e
- https://hackaday.io/project/10314-raspberry-pi-3-as-an-eddystone-url-beacon
  - https://yencarnacion.github.io/eddystone-url-calculator/
- https://github.com/nirmankarta/PyBeacon
