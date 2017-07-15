FROM node

MAINTAINER Axel Camara <axel.camara@hotmail.fr>

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY app/server/package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY ../app /usr/src/app

EXPOSE 4000

CMD [ "npm", "start" ]
