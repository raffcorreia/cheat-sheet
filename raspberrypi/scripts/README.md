# Raspberry Pi

## In order to run those scripts, copy its `.sh` file to the desired folder and add run permission to it

copy scripts to raspberry using `Secure copy protocol (SCP)`

```sh
scp _source_path_/_sample_script.sh pi@_address_:_dest_path_
```

add run permission to script

```sh
chmod +x _sample_script.sh
```

## List of scripts for Raspberry pi

* [display and refresh processor temperature](/raspberrypi/scripts/temperature)
