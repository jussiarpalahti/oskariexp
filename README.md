# Oskari experimentation

Oskari related collection place

## Startup log

### Base image

```bash
docker run -it --name oskari centos:centos6 /bin/bash
yum install -y epel-release
yum update -y
yum install -y ansible
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
