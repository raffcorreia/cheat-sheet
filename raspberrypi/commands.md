# Raspberry Pi

## Raspberry Pi OS

### Setup

#### Enable SSH

Insert SD into another computer and create a file called `ssh` in the `boot` volume. On mac;

```shell
touch /Volumes/boot/ssh
```

#### Install default java JDK for ARM

Update apt

```sh
sudo apt update
```

Install
```sh
sudo apt install default-jdk
```

### Commands

Shutdown Raspberry pi
```shell
sudo halt -p
```

Check current processor temperature
```shell
vcgencmd measure_temp
```

Check time since last boot
```shell
uptime
```

Show processess and system load with a text UI
```shell
htop
```
