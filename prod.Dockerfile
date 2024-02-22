FROM adoptopenjdk/openjdk11:x86_64-ubi-minimal-jre-11.0.22_7
RUN /bin/sh -c wget install
#RUN apk add --no-cache openjdk11
#RUN apk add --no-cache tomcat-native

#ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk

RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M1/bin/apache-tomcat-9.0.0.M1.tar.gz \
    && tar -xzvf apache-tomcat-9.0.0.M1.tar.gz \
    && mv apache-tomcat-9.0.0.M1 /opt/tomcat \
    && rm apache-tomcat-9.0.0.M1.tar.gz \
    && chmod +x /opt/tomcat/bin/*.sh

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
