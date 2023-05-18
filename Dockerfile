# Use the official lightweight Node.js 14 image.
# https://hub.docker.com/_/node
FROM node:18-alpine
# FROM node:16-alpine

# Set the working directory.
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files.
COPY package*.json ./

# Install dependencies.
# RUN npm install
RUN npm install --only=production

# Copy the rest of the app's code.
COPY . .

#set Port??
EXPOSE 3000

# Build the app.
RUN npm run build

# Set the command to start the app.
CMD [ "npm", "start" ]
