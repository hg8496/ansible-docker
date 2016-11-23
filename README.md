## hg8496/ansible

[![](https://images.microbadger.com/badges/version/hg8496/ansible.svg)](http://microbadger.com/images/hg8496/ansible "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/hg8496/ansible.svg)](http://microbadger.com/images/hg8496/ansible "Get your own image badge on microbadger.com")

### Features
- Based on Alpine Linux.
- Bundled with openssh

### Usage 
#### Direct call with mapped volumes
To map the ssh-agent into docker do:

`docker run --rm -ti  -v $SSH_AUTH_SOCK:/auth_sock -e SSH_AUTH_SOCK=/auth_sock -v /ansible/infrastructure:/infra hg8496/ansible ansible -u USER -i /infra/hosts all -m ping`

#### Create own image
With all your ansible infrastructure under `infra` write the following Dockerfile
`Dockerfile`
```dockerfile
FROM hg8496/ansible

ADD infra /infra
```
then `docker build --force-rm -t ansible .` to build your image.

Execute with `sudo docker run --rm -ti  -v $SSH_AUTH_SOCK:/auth_sock -e SSH_AUTH_SOCK=/auth_sock ansible ansible -u USER -i /infra/hosts all -m ping`