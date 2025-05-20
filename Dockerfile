    # Use a Java 17 JRE base image from Eclipse Temurin (Alpine for smaller size)
FROM eclipse-temurin:17-jre-alpine
    # Set the working directory inside the container
WORKDIR /app

    # Copy only the JMusicBot JAR file to the /app directory in the container.
    # *** IMPORTANT: Update "JMusicBot-0.4.3.8.jar" if your JAR has a different filename! ***
COPY JMusicBot-0.4.3.8.jar .

    # Define the command to run your JMusicBot with the -Dnogui=true flag.
CMD ["java", "-Dnogui=true", "-jar", "JMusicBot-0.4.3.8.jar"]
