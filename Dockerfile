FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install default-jdk -y
RUN apt-get install tomcat8 -y
RUN apt-get install maven -y
RUN git clone https://github.com/Diadems/boxfuse-sample-java-war-hello.git
RUN cd /boxfuse-sample-java-war-hello
RUN mvn package
RUN cp /boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat8/webapps 

EXPOSE 8080

CMD ["/bin/bash"]
