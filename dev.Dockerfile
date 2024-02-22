FROM ubuntu:20.04
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
#RUN apt update
RUN apt install default-jdk maven git -y
WORKDIR /tmp/boxfuse
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse/boxfuse-sample-java-war-hello
RUN mvn package