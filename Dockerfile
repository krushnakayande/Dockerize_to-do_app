# Step 1: Use the official Node.js image as the base image
FROM node:14

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code to the working directory
COPY . .

# Step 6: Expose the port that the app will run on
EXPOSE 3000

# Step 7: Start the Node.js app
CMD ["node", "server.js"]
