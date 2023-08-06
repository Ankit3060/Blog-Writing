# Use an official Node.js image as the base image
FROM node:14

# Set the working directory within the container
WORKDIR /usr/src/app

# Install nodemon as a development dependency
RUN npm install -g nodemon

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that your app will run on
EXPOSE 3000

# Command to start the app
CMD ["npm", "run", "hmr"]


