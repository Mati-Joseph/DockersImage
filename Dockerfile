# Image to be used
FROM python:3.9-slim

# Prevent Python from creating .pyc files
ENV PYTHONDONTWRITEBYTECODE=1

# Send logs straight to terminal
ENV PYTHONUNBUFFERED=1

# The working Directory
WORKDIR /app

# Copy dependency file first (Docker cache optimization)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose port
EXPOSE 5000

# Run the app
CMD [ "python","app.py" ]