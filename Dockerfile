FROM ludalex/docker-java7-maven-aws-git 
WORKDIR /opt/

RUN git clone ${gitrepo}
