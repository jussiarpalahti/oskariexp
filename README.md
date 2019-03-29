# Oskari experimentation

Oskari related collection place

## Startup log

### Base image

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
docker run -it --name oskari -v $PWD:/code centos:centos7 /bin/bash
yum install -y epel-release
yum update -y
yum install -y unzip gcc openssl-devel bzip2-devel python-virtualenv
virtualenv venv
source venv/bin/activate
pip install ansible ara
```

### Commit

```bash
    docker commit oskari oskari
```

### Start stopped container

```bash
    docker start -i oskari
```

### Setup

This assumes Ansible folder from https://github.com/jussiarpalahti/sample-configs is linked to project folder containing Oskari provisioning script.

```bash
docker run -it --name oskari -v $PWD:/code oskari /bin/bash
mkdir /etc/ansible
cp /code/docker/ansible.cfg /etc/ansible
source venv/bin/activate
python -m ara.setup.ansible | tee /etc/ansible/ansible.cfg

ansible-playbook /code/ansible/jetty9-install/site.yml
```
