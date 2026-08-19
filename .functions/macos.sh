# THIS FILE IS UNDER VERSION CONTROL.  MAKE CHANGES IN YOUR REPO!!!!! #
#*********************************************************************#
#!/usr/bin/env bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Runs Ansible
    updatemac() {
      cd ~/mac-ansible/macos-config
      if sudo -n true 2>/dev/null; then
        ansible-playbook playbook.yml -i inventory
      else
        ansible-playbook playbook.yml -i inventory -K
      fi
    }
fi
