# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
# COPY . /target/app.jar
WORKDIR /usr/src/myapp/


# Copy the application's jar file into the container
# COPY ./target/your-application.jar /app/application.jar
COPY  ./target/app.jar ./app.jar
# Expose the port the application runs on
EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "./app.jar"]
