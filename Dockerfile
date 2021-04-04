FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install default-jdk -y
RUN apt-get install tomcat9 -y
RUN apt-get install maven -y
RUN cd /home/user/
RUN git clone https://github.com/Diadems/boxfuse-sample-java-war-hello.git
RUN cd /home/user/boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp /home/user/boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps 

EXPOSE 8080

CMD ["/bin/bash"]
