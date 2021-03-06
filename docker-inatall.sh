yum remove docker \
              	  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
yum install -y yum-utils
yum-config-manager  --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --enable docker-ce-nightly
yum-config-manager --enable docker-ce-test
yum-config-manager --disable docker-ce-nightly
yum install docker-ce docker-ce-cli containerd.io
yum list docker-ce --showduplicates | sort -r
yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io
systemctl start docker
docker run hello-world

