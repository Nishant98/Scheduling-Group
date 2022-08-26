# Scheduling Group

## Prerequisites
Set up the development environment [as described here](https://cap.cloud.sap/docs/java/getting-started).

## Clone Build & Run
- Clone the repository from 
```
git clone git@github.wdf.sap.corp:I524874/Scheduling-Group.git
```
- To Build and Run the application in-memory
```
 mvn spring-boot:run
```
- To Build and Run the application in persistent storage
```
 cds deploy --to sqlite
 mvn spring-boot:run -Dspring-boot.run.profiles=sqlite
```
- Use **admin** as username and password
