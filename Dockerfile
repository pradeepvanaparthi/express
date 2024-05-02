# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /my-express-app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 4000

# Command to run the application
CMD ["node", "app.js"]

