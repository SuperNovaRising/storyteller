# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Copy the current directory contents into the container at /gateway
COPY ./gateway .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8000

# Run app.py when the container launches
CMD ["python", "main.py"]
