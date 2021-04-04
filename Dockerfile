FROM tomcat:latest

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install default-jdk -y
RUN apt-get install maven -y
RUN mkdir  /usr/test
RUN git clone https://github.com/Diadems/boxfuse-sample-java-war-hello.git /usr/test
RUN cd /usr/test && mvn package
RUN cp /usr/test/target/hello-1.0.war /usr/local/tomcat/webapps



EXPOSE 8080
CMD ["catalina.sh", "run"]
