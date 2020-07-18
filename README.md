# Installing Docker in airgapped RHEL 8

Docker Version 19+

The following procedure is for a RHEL 8 in a Vagrant Box (generic/rhel8)

## Copying the files to the Machine
```bash
scp  -r rhel8 vagrant@192.168.33.21:/home/vagrant/d1
```

This will copy all the necessary RPM Packages to install Docker 19 Offline

## Run the Bash Script

The following command should be run with Root Access.

```bash
./install-docker.sh
```

This will install the RPM Packages in a particular order, starts Docker Service and runs the Hello-World docker image.

## Packages

```
checkpolicy-2.9-1.el8.x86_64.rpm
python3-audit-3.0-0.17.20191104git1c2f876.el8.x86_64.rpm
python3-libsemanage-2.9-2.el8.x86_64.rpm
python3-setools-4.2.2-2.el8.x86_64.rpm
python3-policycoreutils-2.9-9.el8.noarch.rpm
policycoreutils-python-utils-2.9-9.el8.noarch.rpm
libcgroup-0.41-19.el8.x86_64.rpm
container-selinux-2.124.0-1.module+el8.2.0+6368+cf16aa14.noarch.rpm
containerd.io-1.2.2-3.el7.x86_64.rpm
docker-ce-cli-19.03.12-3.el7.x86_64.rpm
docker-ce-19.03.9-3.el7.x86_64.rpm
```