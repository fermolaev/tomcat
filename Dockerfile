FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install git default-jdk tomcat9 maven -y
RUN cd /home/user/
RUN git clone https://github.com/Diadems/boxfuse-sample-java-war-hello.git
RUN cd /home/ermolaev/boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp /home/ermolaev/boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps 

EXPOSE 8080

CMD ["/bin/bash"]
