# cddocker
This script displays the path to root of the docker container on the host

### Usage
Pass id of the docker container as parameter.
```bash
user@ubuntu:~$ ./cddocker 35600321a665
/proc/2701/root
user@ubuntu:~$ sudo ls /proc/2701/root
bin  boot  dev	docker-entrypoint-initdb.d  docker-entrypoint.sh  etc  home  lib  lib64  media	mnt  opt  proc	root  run  sbin  srv  sys  tmp	usr  var
```
Docker container id's can be found by running:
```bash
sudo docker ps
```

### Installation
Run the following commands to install cddocker in /usr/bin and execute it directly by running `cddocker <container-id>`
```bash
cd /tmp
git clone https://github.com/malikashish8/scripts.git
sudo mv scripts/cddocker/cddocker /usr/bin/cddocker
chmod a+x /usr/bin/cddocker
```

Tested on Ubuntu. Should run on other Linux distros as well.
Does not work on Mac due to lack of `/proc/` folder on it. 
