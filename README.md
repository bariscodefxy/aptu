# aptu
Apt shortcuts for lazy Linuxers.

## Requirements
- python3 (Should be installed if you use debian or based on distro)
- sudo (Not installed by default in debian but debian based distros have installed that)

## Shortcuts (usage)
- `aptar` - `sudo apt autoremove`
- `apti` - `sudo apt install`
- `aptr` - `sudo apt remove`
- `aptrei` - `sudo apt reinstall`
- `aptse` - `sudo apt search`
- `aptsh` - `sudo apt show`
- `aptu` - `sudo apt update`
- `aptug` - `sudo apt update && sudo apt upgrade`

## Example
```bash
$ aptug # update and upgrade packages
$ aptr neofetch # remove neofetch
$ apti neofetch # install neofetch
$ aptsh xfce4 # show information of xfce4 package
```

## Installation
```bash
git clone https://github.com/bariscodefxy/aptu
cd aptu
./install.sh
```
### Single Line
```bash
git clone https://github.com/bariscodefxy/aptu && cd aptu && ./install.sh
```

## Note 
You can delete the aptu folder after installation. 

## Support
If you like this project, you can contribute to me by starring it.