# Use the official Node.js image from Docker Hub
FROM node:16-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json first to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application to the container
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
