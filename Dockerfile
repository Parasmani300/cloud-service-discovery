# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the packaged jar file into the container
COPY build/libs/Service-discovery-0.0.1-SNAPSHOT.jar /app/Service-discovery-0.0.1-SNAPSHOT.jar

# Set environment variables
ENV DB_PASSWORD=pass
ENV DB_URL=jdbc:mysql://192.168.49.2:31454/my_db

# Expose the port that your app runs on
EXPOSE 8761

# Run the jar file
CMD ["java", "-jar", "Service-discovery-0.0.1-SNAPSHOT.jar"]
