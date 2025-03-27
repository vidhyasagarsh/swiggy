# Use Alpine Linux with Node.js as the base image
FROM node:18.0.0-alpine

# Update package list and install Apache2 using apk (Alpine uses apk, not yum)
RUN apk update && apk add --no-cache apache2

# Copy the HTML file to the Apache web root
COPY index.html /var/www/localhost/htdocs/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
