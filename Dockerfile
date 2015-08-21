FROM ludalex/docker-java7-maven-aws-git 
WORKDIR /opt
RUN mkdir /test
RUN echo "hello world" > /test/hello
VOLUME /test

RUN git clone https://github.com/chiligit/java-maven-git.git
