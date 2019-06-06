# Below is the image that the docker will run the application on.
FROM node:8
# Create the working directory in the path provided below.
WORKDIR /usr/src/app
# copy project directory and give it tot he image.
COPY package*.json ./
# install dependencies
RUN npm install

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# open specified port.
EXPOSE 8080

#run folowing commands
CMD [ "npm", "start" ]