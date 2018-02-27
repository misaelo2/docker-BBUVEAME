# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD ./ProyectoMarcasAPP /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV APPID app.bbva.infoCuentas
ENV SECRET QUe7MwasE5gJO434ITz82FJ@nz3j8ypcEf4YYcSjw@y2AS1IhfiJGEiUr6qm9tXx

# Run app.py when the container launches
CMD ["python", "PROYECTOLM.py"]

