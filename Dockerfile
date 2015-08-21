FROM ludalex/docker-java7-maven-aws-git 
WORKDIR /opt/${appname}

RUN git clone ${gitrepo}
