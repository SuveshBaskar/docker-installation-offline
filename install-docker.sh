tar -zxvf ${PWD}/docker-rpm-files.tar.gz -C ${PWD}/

cd ${PWD}/docker-rpm-files

yum install -y checkpolicy-2.9-1.el8.x86_64.rpm
yum install -y python3-audit-3.0-0.17.20191104git1c2f876.el8.x86_64.rpm
yum install -y python3-libsemanage-2.9-2.el8.x86_64.rpm
yum install -y python3-setools-4.2.2-2.el8.x86_64.rpm
yum install -y python3-policycoreutils-2.9-9.el8.noarch.rpm
yum install -y policycoreutils-python-utils-2.9-9.el8.noarch.rpm
yum install -y libcgroup-0.41-19.el8.x86_64.rpm

yum install -y container-selinux-2.124.0-1.module+el8.2.0+6368+cf16aa14.noarch.rpm
yum install -y containerd.io-1.2.2-3.el7.x86_64.rpm

yum install -y docker-ce-cli-19.03.12-3.el7.x86_64.rpm
yum install -y docker-ce-19.03.9-3.el7.x86_64.rpm

systemctl enable docker
systemctl start docker

docker run hello-world