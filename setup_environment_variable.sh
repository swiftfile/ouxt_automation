ansible-playbook -i ansible/hosts/localhost.ini ansible/setup_environment_variable.yml --connection local --ask-become-pass --ask-vault-pass