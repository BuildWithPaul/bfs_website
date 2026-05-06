FROM python:3.12-slim

# Copy static site files
COPY . /app
WORKDIR /app

# Use Python's built-in HTTP server on port 5002
EXPOSE 5002

CMD ["python", "-m", "http.server", "5002"]