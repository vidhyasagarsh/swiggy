# Use a proper base image
FROM ubuntu:latest

# Update package list and install Apache2
RUN apt-get update && apt-get install -y apache2

# Copy the HTML file to the Apache web root
COPY index.html /var/www/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]

