# Use an official Python runtime as the base image
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install required packages
RUN pip install --no-cache-dir -r requirements.txt

# # Set environment variables
# ENV DJANGO_SETTINGS_MODULE=todoapp.settings


# setting up port
EXPOSE 3000

# Run the command to start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:3000"]
