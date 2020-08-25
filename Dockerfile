FROM registry.redhat.io/ubi8
EXPOSE 9000
RUN dnf install -y java-1.8.0-openjdk-headless procps-ng

RUN useradd app
ENV HOME /home/app
#ENV HOME /home/app
RUN mkdir -p $HOME
RUN mkdir $HOME/target
WORKDIR $HOME
RUN echo $HOME

# Copy our settings into
COPY --from=0 build/target/pam-proxy-service-1.0.0-SNAPSHOT.jar app.jar
COPY settings/application.properties application.properties

RUN chown -R app:app $HOME
RUN chmod -R 777 $HOME
USER app

RUN pwd
RUN ls -al $HOME
RUN whoami


ENTRYPOINT ["java", "-jar", "./app.jar", "--spring.config.location=./application.properties"]