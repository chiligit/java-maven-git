FROM jamesdbloom/docker-java8-maven

WORKDIR /opt
RUN git clone https://github.com/chiligit/docker-app.git

RUN ls
RUN cd docker-app; ls; mvn package

VOLUME ["/opt/docker-app"]
EXPOSE 8080

RUN cd docker-app; java -jar target/docker-app-1.0-SNAPSHOT.jar
