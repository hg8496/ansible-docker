# hg8496/ansible

To map the ssh-agent into docker do:

`docker run --rm -ti  -v $SSH_AUTH_SOCK:/auth_sock -e SSH_AUTH_SOCK=/auth_sock -v /ansible/infrastructure:/infra hg8496/ansible ansible -u USER -i /infra/hosts all -m ping`