.PHONY: make build clean install uninstall

_HOST?=eid
_UID?=$(shell id -u)
_USER?=${USER}
_GID?=$(shell id -g)
_GROUP?=$(shell id -gn)
_HOME?=${HOME}

make: build install

build:
	PATH="/usr/sbin:${PATH}" _UID="${_UID}" _USER="${_USER}" _GID="${_GID}" _GROUP="${_GROUP}" _HOME="${_HOME}" mkosi -f build

clean:
	sudo find mkosi.workspace/ mkosi.cache/ mkosi.output/ -mindepth 1 -not -name .gitignore -delete

install:
	sudo mkdir -p /etc/systemd/nspawn /var/lib/machines
	sudo machinectl import-tar mkosi.output/ubuntu~jammy/image.tar.xz ${_HOST}
	sudo cp mkosi.output/image.nspawn /etc/systemd/nspawn/${_HOST}.nspawn
	sudo machinectl start ${_HOST}

uninstall:
	sudo machinectl terminate ${_HOST} || true
	sleep 3
	sudo machinectl remove ${_HOST} || true
	sudo rm -f /etc/systemd/nspawn/${_HOST}.nspawn
	sudo rmdir --ignore-fail-on-non-empty /etc/systemd/nspawn /var/lib/machines
