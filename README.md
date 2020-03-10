orchestrator-unit-test: Unit Test for JBoss PAM Project
======================================================
Author: Nevin Zhu  
Level: Intermediate  
Technologies: JBoss PAM 7.x, SpringBoot
Summary: The `pam-proxy-service` is an app that interacts with the workflow engine on JBoss PAM 7.x and facilitate communication between PAM and external systems such as message broker  
Target Product: JBoss PAM 7.x

What is it?
-----------

The `pam-proxy-service` demonstrates how to initiate workflow instances with JBoss PAM 7.x and act as a proxy to cascade messages to external system from PAM

It contains the following:

1. Message consumer service 
2. Message producer service
3. Workflow initiator service 



System requirements
-------------------

The application this project produces is designed to be run on maven 3.x

All you need to build this project is Java 8.0 (Java SDK 1.8) or later, Maven 3.0 or later.

 
Configure Maven
---------------

If you have not yet done so, you must [Configure Maven](p:/Nevin/Raytheon - PAM 7 AWS Installation - v1.0.docx) before running the project.


Build and run the Project on Local Workstation
-----------------------------------------------

_NOTE: The following build command assumes you have configured your Maven user settings. If you have not, you must include Maven setting arguments on the command line. 

1. Open a command prompt and navigate to the root directory of this project.
2. Type this command to build and run the project assuming this is running on your local workstation:

        >mvn clean install
        >java -jar target/pam-proxy-service-1.0.0-SNAPSHOT.jar
        

Build and run the Project on DEV environment
-----------------------------------------------

1. Open a command prompt and navigate to the root directory of this project.
2. Type this command to build and run the project assuming this is running on your local workstation:

        >mvn clean install
        >java -Dspring.profiles.active=dev -jar target/pam-proxy-service-1.0.0-SNAPSHOT.jar
        

Investigate the Console Output
------------------------------------

If the command is successful, you will see output similar to this:

```text
  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::        (v2.1.6.RELEASE)

2020-03-09 23:28:19.998  INFO 44013 --- [           main] com.malware.MainApplication              : Starting MainApplication on Nevins-MacBook-Pro.local with PID 44013 (/Users/nzhu/Dev/git/raytheon/pam-controller2/target/pam-proxy-service-1.0.0-SNAPSHOT.jar started by nzhu in /Users/nzhu/Dev/git/raytheon/pam-controller2)
2020-03-09 23:28:20.001  INFO 44013 --- [           main] com.malware.MainApplication              : No active profile set, falling back to default profiles: default
2020-03-09 23:28:21.065  INFO 44013 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8085 (http)
2020-03-09 23:28:21.099  INFO 44013 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2020-03-09 23:28:21.099  INFO 44013 --- [           main] org.apache.catalina.core.StandardEngine  : Starting Servlet engine: [Apache Tomcat/9.0.21]
2020-03-09 23:28:21.209  INFO 44013 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2020-03-09 23:28:21.209  INFO 44013 --- [           main] o.s.web.context.ContextLoader            : Root WebApplicationContext: initialization completed in 1157 ms
2020-03-09 23:28:21.504  INFO 44013 --- [           main] o.s.s.concurrent.ThreadPoolTaskExecutor  : Initializing ExecutorService 'applicationTaskExecutor'
2020-03-09 23:28:22.217  INFO 44013 --- [localhost:5672]] o.a.qpid.jms.sasl.SaslMechanismFinder    : Best match for SASL auth was: SASL-ANONYMOUS
2020-03-09 23:28:22.273  INFO 44013 --- [localhost:5672]] org.apache.qpid.jms.JmsConnection        : Connection ID:ff042793-63d6-4e33-8f56-75cdd4454374:1 connected to remote Broker: amqp://localhost:5672
2020-03-09 23:28:22.297  INFO 44013 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8085 (http) with context path ''
2020-03-09 23:28:22.301  INFO 44013 --- [           main] com.malware.MainApplication              : Started MainApplication in 2.817 seconds (JVM running for 3.297)
```
   

