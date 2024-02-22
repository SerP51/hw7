FROM alpine:latest
#RUN apk add --no-cache openjre11
#RUN apk add --no-cache tomcat-native

#ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk

RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M1/bin/apache-tomcat-9.0.0.M1.tar.gz \
    && tar -xzvf apache-tomcat-9.0.0.M1.tar.gz \
    && mv apache-tomcat-9.0.0.M1 /opt/tomcat \
    && rm apache-tomcat-9.0.0.M1.tar.gz \
    && chmod +x /opt/tomcat/bin/*.sh

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
