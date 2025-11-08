# Using Node 10 as the base image
FROM node:10

# Create app dir
WORKDIR /usr/src/lafs

# install app dependencies
COPY package*.json ./

RUN npm install -g @angular/cli@v6-lts
RUN npm install

# Bundle app source
COPY . .

EXPOSE 4200
CMD [ "ng", "serve", "--host", "0.0.0.0" ]