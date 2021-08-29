---
title: PT
---
# proxy-toggle

Easy switch between proxy and directy configurations for tools such as Bash, NPM, Apt, Git and Docker.

> sudo password prompt will appear to set system level proxy

## Usage
### Disable proxy
```bash
user@ubuntu:~$ proxy-toggle
Disabling proxy at user level
User - ~/.bashrc
Docker - ~/.docker/config.json
Npm - config
Git - config
Disabling proxy at system level
System - /etc/environment
System - apt
running new shell
user@ubuntu:~$
```
### Enable proxy
The script accepts http_proxy from environment. If `http_proxy` is not found it falls back to default hardcoded in the script at line 3:
`MYPROXY=http://localhost:3128/`

```bash
export http_proxy=http://10.10.5.10/3128/
user@ubuntu:~$ proxy-toggle
Enabling proxy at user level
User - ~/.bashrc
User - ~/.docker/config.json
Npm - config
Git - config
[sudo] password for user: 
Enabling proxy at system level
System - /etc/environment
Docker - service
System - apt
running new shell
user@ubuntu:~$ 
```
## Installation 
```
cd /tmp
git clone https://github.com/malikashish8/scripts.git
sudo cp -f scripts/proxy-toggle/proxy-toggle /usr/bin/proxy-toggle
sudo chmod a+x /usr/bin/proxy-toggle
```
{{ page.title }}
{% embedder %}
