# Virtual Golang development environment

This project aim to create a default Go environment deployment for development teams.  

## Components

The environment is composed by a Linux Virtual Box machine `Ubuntu 20.10 Groovy Gorilla 64` installed with the following config:

- Lastest `Go SDK` corretly installed.
- `GOPATH` and `GOROOT` configured along `Fish` and `Bash` shells.
- Go modules.
- `~/src/github.com/`  dirs created at home go_user dir.
- `Mysql` database up and running.
- `Vim editor` with `Molokai Theme` and `go development plugins`.
- `Docker` software up and running for fast container app deployment.

## Requirements

- A host machine with Virtualbox up and running.
- Vagrant installed at host machine (instructions below).

Vagrant is used to provide automated creation of virtual Machine and Ansible is required to setup the enviroment to desired state.

## Install

1. Make sure you have Virtual box installed and running ok.
2. Install vagrant via apt. Open your terminal and do  `sudo apt-get install vagrant`.
3. Clone the project from github: `git clone https://github.com/alansantosmg/envgodev`.
4. Go to project directory `cd /envgodev`.
5. Change the ip and bridge interface editing your "Vagrantfile". Here is a example:
    `godev.vm.network "public_network", ip: "192.168.2.133", bridge: "wlo1"`
    You need to provide a non-used ip of your local network and indicate what interface your computer are using. Above, the example shows wlo1 (wireless local 1) once the host is a laptop using only the wireless interface.   
6. Run vagrant. Do  `vagrant up`.
7. After setup completed, connect to your dev VM. At the terminal do `vagrant ssh`
8. Open vim Editor and start programming
9. The guest machine has the hugo blog framework installed. To create a blog, just run hugo (for more information, see Hugo's project page).
10. If you want to create go webservers, don't forget to set the port to 5500 and get the access through your host browser.

## Project Status

### Changelog

02/01/2021:

- Setup GOPATH and GOROOT along fish shell
- Refactoring: Modular shell structure.
- VagrantFile shell modules. Comment/uncomment to choose which scripts run.
- Change SO from Debian Buster to Ubuntu Groovy Gorilla 64.
- Add script to create swap file. (Prevent compiling errors on Ubuntu Groovy)
- Use Ansible instead shell provider.
- Disable config share after provising.
- New "share" host folder at /home/vangrant dir.
- Default route added to Vangrantfile (needed to proper git clone function).
- New cleaning shell script.
- Optional script to add a host id_rsa.pub key (copy the key to host config folder).
- Line added to sysctl.conf - Vscode monitoring files error.
- Added tty -ixo to .bashrc - Prevent VIM freezes at control-s.
- Added gcc, g++, make - Prevent errors compiling vim scripts.
- Change VIM theme to Molokai
- Removed non used themes from .vimrc
- Added GOPATH to fish enviroment variables
- Added New fish.config file

01/31/2021:

- Set fish as default shell for Vagrant user
- Create basic install instructions

01/30/2021:

- Create Debian Buster Virtual Box machine
- Install git, curl, vim, fzf, htop
- Disable /vagrant share
- Enable /config share
- Get and install Go SDK
- Setup GOPATH and GOROOT at shell Bash
- Get and build Hugo serverless blog engine
- Install fish shell with spacefish
- Automated vim plugins install via Plug Manager
- Install powerline fonts

### To do

- Separate commands to disable swapfile from clean script
- Autoload vscode server extensions at home folder
- Create ssh-key instructions
- Crate instrutions about vscode access from host
- Setup ssh infraestructure to log
- Include instructions to log with SSH-key
- Instructions to use with the user choosen IDE
- Mysql database Setup
- Mongodb database setup
- Postgree database Setup
- Docker containers infraestructure
- Setup VM with Ansible
- Create Virtual Machine at AWS
- Create menu options to set public and private network interfaces
- Create option to host redirection ports
- Create menu options to set hostname
- Create options to show menus in portuguese or english lang.
  