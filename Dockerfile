# Use a specific and lightweight Node.js Alpine image
FROM node:18.0.0-alpine

# Create the application directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first for caching
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

# Copy application files
COPY . .

# Set Node.js options (fixing the typo)
ENV NODE_OPTIONS="--openssl-legacy-provider"

# Build the application
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
