# Use a slim Python base image for smaller size
FROM python:3.12.3-slim

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory inside the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire Django project into the container
COPY . .

# Expose the port Django will run on
EXPOSE 8000

# Command to run the Django development server
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]