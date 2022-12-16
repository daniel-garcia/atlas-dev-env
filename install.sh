#!/usr/bin/env bash

if which ansible 2>&1 > /dev/null; then
	echo "detected ansible"
	ansible --version
else
	sudo apt-get install -y ansible
fi

ansible-playbook  dev_env_playbook.yaml

