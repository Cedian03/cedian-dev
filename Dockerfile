# Use the official Python image
FROM python:3-slim

# Set the working directory
WORKDIR /app

# Copy the application files
COPY flaskr /app/flaskr

# Install Flask
RUN pip install flask

# Flask env variables
ENV FLASK_ENV=production
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Expose the port the app runs on
EXPOSE 5000

# Run the Flask app
CMD ["flask", "--app", "flaskr", "run"]