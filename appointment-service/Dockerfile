# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY appointment-service.js ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port (adjust if needed)
EXPOSE 3000

# Run the app
CMD [ "npm", "start" ]