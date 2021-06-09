FROM ubuntu:21.10
 
RUN mkdir -p /u01/data
 
RUN apt update -y 
RUN apt install -y openjdk-11-jdk
 
WORKDIR /u01/data
COPY target/hangout-1.0.jar .
RUN chmod u+x hangout-1.0.jar
EXPOSE 8081
CMD ["java", "-jar", "hangout-1.0.jar"]
 