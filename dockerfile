# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the app's source code
COPY . .

# Expose a port for the application
EXPOSE 3000

# Command to start the application
CMD ["node", "server.js"]
