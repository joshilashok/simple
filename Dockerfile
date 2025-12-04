# Use the official Node.js image from AWS Public ECR (no rate limits)
FROM public.ecr.aws/docker/library/node:18-slim

# Set the working directory inside the container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
