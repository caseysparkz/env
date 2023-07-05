#!/usr/bin/env bash
#-*- coding:utf-8 -*-

# Application defaults
export BROWSER="$(which firefox)"
export EDITOR="vim"
export TERM="xterm-256color"

# Misc.
export ALIASES="${HOME}/.bash/aliases.sh"
export FUNCTIONS="${HOME}/.bash/functions/"
export SCRIPTS="${HOME}/.local/lib/scripts/"
export SECRETS="${HOME}/.bash/secrets.asc"
export VARS="${HOME}/.bash/vars.sh"

## Ansible
export ANSIBLE_DUPLICATE_YAML_DICT_KEY=ignore

## Docker
#export DOCKER_BUILDKIT=1

## PGP
export GPG_TTY="$(tty)"
export PGP_KEY_ID="0x2027DEDFECE6A3D5"

## SSH
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"