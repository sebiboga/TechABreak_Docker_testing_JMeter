# Start with the official JMeter base image
FROM justb4/jmeter:latest

# Set the working directory
WORKDIR /jmeter

# Copy the JMeter script to the container
COPY DockerHUB.jmx /jmeter

# Define the default command to run the JMeter script when the container starts
ENTRYPOINT ["jmeter", "-n", "-t", "DockerHUB.jmx", "-l", "result.jtl"]

# Optionally, expose ports for remote testing
EXPOSE 1099 50000