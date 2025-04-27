# Use the official Python image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the application files
COPY flaskr /app/flaskr

# Install Flask
RUN pip install flask

# Expose the port the app runs on
EXPOSE 5000

# Run the Flask app
CMD ["flask", "--app", "flaskr", "run", "--host=0.0.0.0"]