![Java CI with Gradle](https://github.com/PeterJakubik/java-app/workflows/Java%20CI%20with%20Gradle/badge.svg)

##### build the project

    ./gradlew build

##### build Docker image called java-app. Execute from root

    docker build -t java-app .
    
##### push image to repo 

    docker tag java-app demo-app:java-1.0
    
