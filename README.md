proxy-balancer
==============

Sample for configuring Ubuntu + Apache for load balancing.

The provision script installs Apache 2 and enables modules for creating a load balancer.

## First Install/Run:
* Install [VirtualBox][virtualbox.url]
* Install [Vagrant][vagrant.url]
* Clone this project
* Start up the VM with vagrant

```bash
  $ vagrant up
```
* Wait for the box to download (Ubuntu) and the VM to be provisioned
* ssh into the VM by executing to work with apache: `$ vagrant ssh`
* Browse to [http://localhost][localhost.url] or [https://localhost][localhost.url.ssl] from your host machine

Vagrant automatically shares the project directory to **/vagrant** in the VM - so you can code in the comfort of your host machine.
*Note that the root user and password are both 'vagrant'*
VirtualHost configs are symlinked to apache's "sites-available" directory from the root (/vagrant) to keep things simple.
*Note that you probably shouldn't provision a server with the provision.sh because of this!*

## Stop/Halt the VM:

```bash
  $ vagrant halt
```

[virtualbox.url]:https://www.virtualbox.org/
[vagrant.url]:http://www.vagrantup.com/
[localhost.url]:http://192.168.100.10
[localhost.url.ssl]:https://192.168.100.10
