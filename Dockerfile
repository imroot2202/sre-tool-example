# Use a base image with kubectl installed
FROM alpine:latest

# Install kubectl
RUN apk add --no-cache curl

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the script into the container
COPY sre.sh .

# Make the script executable
RUN chmod +x sre.sh

# Define the entry point for the container
ENTRYPOINT ["./sre.sh"]
