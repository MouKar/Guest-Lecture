# Use a python base image
FROM python:3.10-slim-buster

# Install Python and pip
RUN apt update && apt install -y python3 python3-pip

# Set the working directory
# WORKDIR /docker_learn

# Copy requirements.txt
#COPY requirements.txt ./

# Install dependencies
#RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY app.py ./

# Expose the port (if applicable)
# EXPOSE 8000

# Command to run the application
CMD ["python", "app.py"]
