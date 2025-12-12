# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json files to the container working directory
COPY package*.json ./

# Install dependencies defined in package.json
RUN npm install

# Copy the rest of the application code to the container working directory
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]
