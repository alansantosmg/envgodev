# Virtual Golang development environment

This project aim to create a default Go environment deployment for development teams.  

## Components

The environment is composed by a Linux Virtual Box machine `Debian 10 (Buster)` installed with the following config:

- Lastest `Go SDK` corretly installed.
- `Go path` and `Go root` configured along `Fish` and `Bash` shells.
- Go modules.
- `~/src/github.com/`  dirs created at home go_user dir.
- `Mysql` database up and running.
- Mysql `user go_user` and `goDB database` for fast development.
- `Vim editor` with `GruvBox Theme` and `go development plugins`.
- `Docker` software up and running for fast container app deployment.

## Requirements

- A host machine with debian dist like: ubuntu, mint etc.
- Virtualbox up and running.
- Vagrant (instructions below).

Vagrant is used to provide automated creation of virtual Machine and Ansible is required to setup the enviroment to desired state.

## Install

1. Make sure you have Virtual box installed and running ok.
2. Install vagrant via apt. Open your terminal and do  `sudo apt-get install vagrant`.
3. Clone the project from github: `git clone https://github.com/alansantosmg/envgodev`.
4. Go to project directory `cd /envgodev`.
5. Change the ip and bridge interface editing your "Vagrantfile". Here is a example:
    `godev.vm.network "public_network", ip: "192.168.2.133", bridge: "wlo1"`
    You need to provide a non-used ip of your local network and indicate what interface your computer are using. Above, the example shows wlo1 (wireless local 1) once the host is a laptop using only the wireless interface.
7. Save the Vangrantfile.
8. Run vagrant. Do  `vagrant up`.
9. After setup completed, connect to your dev VM. At the terminal do `vagrant ssh`
10. Open vim Editor and start programming.
11. Check the file  `vim-go-shortcuts.md` to see what the Vim IDE and go-vim pluggin can do for you.
12. You can save your projects at `~/src` dir.
13. The guest machine has the hugo blog framework installed. To create a blog, just run hugo (for more information, see Hugo's project page).
14. If you want to create go webservers, don't forget to set the port to 5500 and get the access through your host browser.

## Project Status

### Changelog

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

- Create ssh-key instructions
- Crate instrutions about vscode access from host
- Setup GOPATH and GOROOT along fish shell
- Use Ansible instead shell provider
- Setup ssh infraestructure to log
- Include instructions to log with SSH-key
- Instructions to use with the user choosen IDE
- Mysql database Setup
- Mongodb database setup
- Postgree database Setup
- Docker containers infraestructure
- Setup VM with Ansible in Windows
- Create Virtual Machine at AWS
- Create menu options to set public and private network interfaces
- Crete option to host redirection ports
- Create menu options to set hostname
- Create menu options to set
- Create options to show menus in portuguese or english lang
