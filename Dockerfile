# Use an official Node.js runtime as a parent image
FROM node:18-bullseye

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Add http-server globally
RUN npm install -g http-server

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on (if applicable)
EXPOSE 8081

# Define the command to run the application
CMD ["npm", "run", "dev"]