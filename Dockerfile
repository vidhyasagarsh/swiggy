FROM node:18.0.0-alpine

WORKDIR /usr/src/app

# Copy package files first to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

# Copy remaining project files
COPY . .

# Build the application
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
