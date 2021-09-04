# Linux

## List app id using port 8080

lsof -i -n -P | grep TCP | grep 8080

## Copy between two locations `Secure copy protocol (SCP)`

copy single from local to remote computer
```sh
scp _source_path_/_sample_script.sh pi@_address_:_dest_path_
```


copy single from remote to local computer
```sh
scp _source_path_/_sample_script.sh pi@_address_:_dest_path_
```


copy all files in the folder from local to remote computer
```sh
scp -r _source_path_/ pi@_address_:_dest_path_
```

## SSH with public key

* [To use SSH without entering password every time](ssh-public-key.md)

## Install GIT Server

* [Setup a private GIT server](git-server.md)