# Open webOS dev environment builder

webOS was recently open sourced. It currently only works on 32bit systems, but most new computers are 64bit systems. By building in a 32bit virtual machine one can get around this obstacle to development. This project's aim is to make the process of building it in a virtual machine easier.

http://www.openwebosproject.org/

## Install

Get Vagrant http://vagrantup.com/

Clone this repo

Run

    vagrant box add precise32 http://files.vagrantup.com/precise32.box
    vagrant up
    cd source/webos/
    git clone git://github.com/openwebos/build-desktop.git
    vagrant ssh
    cd /vagrant/webos/source/build-desktop
    ./build-webos-desktop.sh

continue from the Install section on the webOS project page
https://github.com/openwebos/build-desktop#installing-open-webos

