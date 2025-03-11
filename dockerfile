# Use an official Node.js runtime as a parent image
FROM node:18.0.0-alpine

# Set the working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json package-lock.json 
RUN npm install
RUN npm run build

# Expose a port for the application
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
