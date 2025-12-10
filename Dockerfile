# Use official Python image
FROM python:3.11-slim

ARG USER_NAME="arun"
ENV USER_NAME=$USER_NAME

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY app.py .

EXPOSE 5001

# Default command
CMD ["python", "app.py"]