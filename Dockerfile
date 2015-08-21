FROM ludalex/docker-java7-maven-aws-git 
WORKDIR /opt

RUN git clone https://github.com/chiligit/java-maven-git.git
