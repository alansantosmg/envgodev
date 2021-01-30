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
- Vagrant and Ansible installed (instructions below).

Vagrant is used to provide automated creation of virtual Machine and Ansible is required to setup the enviroment to desired state.

## Project Status

### DONE

- Create Debian Buster Virtual Box machine
- Install git, curl, vim, fzf, htop
- Disable /vagrant share
- Enable /config share 
- Get and install Go SDK
- Setup GOPATH and GOROOT at shell Bash
- Get and build Hugo serverless blog engine
- Install fish shell with spacefish

### To do

- Setup GOPATH and GOROOT along fish shell
- Automated vim plugins install via Plug Manager
- Automated Go-Vim tools instaled via Vim
- Install powerline fonts
- Set fish as default shell for Vagrant user
- Doc Project install structions
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
