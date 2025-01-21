# Use a base image with Java runtime
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR files to the working directory
COPY ./build/*.jar /app/

# Expose port 8080 to allow external access
EXPOSE 8080

# Set the command to run the JAR files (adjust as needed for your application)
# If you have two JARs, specify which one to run or add custom logic
#CMD ["java", "-Djava.security.manager=allow", "-jar", "/app/openems-backend.jar"]
CMD ["java", "-Djava.security.manager=allow", "-jar", "/app/openems-edge.jar"]