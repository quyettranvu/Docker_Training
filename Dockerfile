# Use a Node.js base image
FROM node:latest

#Set working directory
WORKDIR /usr/src/app

#Copy package.json over to the image and npm install at build time
COPY package*.json ./
RUN npm install

#Copy the rest of the app 
COPY . .

#Expose port 3030 from the container
EXPOSE 3030

#Run npm start at container start time
CMD ["npm", "start"]
