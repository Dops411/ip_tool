# Use official Python runtime as parent image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first to leverage Docker cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY ip_tool.py .

# Make script executable
RUN chmod +x ip_tool.py

# Set entrypoint
ENTRYPOINT ["./ip_tool.py"]
