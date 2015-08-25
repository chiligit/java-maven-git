FROM java:openjdk-7-jdk

ENV MAVEN_VERSION 3.3.3

RUN curl -fsSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven

WORKDIR /opt
RUN git clone https://github.com/chiligit/docker-app.git
cd docker-app

RUN ls
RUN mvn package


VOLUME ["/opt/docker-app"]
EXPOSE 8080

RUN java -jar docker-app/target/docker-app-1.0-SNAPSHOT.jar
