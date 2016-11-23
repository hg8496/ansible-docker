## hg8496/ansible

[![](https://images.microbadger.com/badges/version/hg8496/ansible.svg)](http://microbadger.com/images/hg8496/ansible "Get your own version badge on microbadger.com") 
[![](https://images.microbadger.com/badges/image/hg8496/ansible.svg)](http://microbadger.com/images/hg8496/ansible "Get your own image badge on microbadger.com")

### Features
- Based on Alpine Linux.
- Bundled with openssh

### Usage 
To map the ssh-agent into docker do:

`docker run --rm -ti  -v $SSH_AUTH_SOCK:/auth_sock -e SSH_AUTH_SOCK=/auth_sock -v /ansible/infrastructure:/infra hg8496/ansible ansible -u USER -i /infra/hosts all -m ping`