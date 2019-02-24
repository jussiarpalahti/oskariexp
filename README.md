# Oskari experimentation

Oskari related collection place

## Startup log

### Base image

Ara likes Python 2.7, Ansible RPM/Yum won't work with Python 3, Centos 6 has 2.6. Thus, installing Conda takes care of this.

```bash
docker run -it --name oskari -v $PWD:/code centos:centos6 /bin/bash
yum install -y epel-release
yum update -y
yum install -y unzip gcc openssl-devel bzip2-devel
sh /code/Miniconda3-latest-Linux-x86_64.sh
conda create -qy -n ansible python=2.7
conda activate ansible
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

```bash
docker run -it --name oskari -v $PWD:/code oskari /bin/bash
```
