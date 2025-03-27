# use linux as the base image
FROM node:18.0.0-alpine

# update package list and install Apache2
RUN yum update && yum install -y Apache2

# copy the HTML file to the apache web root
COPY index.html /var/www/html/index.html

#expose port 80 for HTTP traffic
EXPOSE 80

# start apache in the foreground
CMD ["apchectl","-D", "FOREGROUND"]
