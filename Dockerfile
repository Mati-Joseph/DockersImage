# Image to be used
FROM python:3.9-slim

# The working Directory
WORKDIR /app

# Copy WORKDIR into app
COPY . app

# Install Dependencies
RUN pip install flask

# Expose port
EXPOSE 5000

# Run the app
CMD [ "python","app.py" ]