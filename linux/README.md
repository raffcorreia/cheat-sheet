# Linux

## List app id using port 8080

lsof -i -n -P | grep TCP | grep 8080

## Copy file to remote `Secure copy protocol (SCP)`

```sh
scp _source_path_/_sample_script.sh pi@_address_:_dest_path_
```
