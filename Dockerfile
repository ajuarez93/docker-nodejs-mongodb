#NODEJS-SOCKET-io
FROM node:18.8.0 as node_image
# Set work directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN npm install -g nodemon
RUN mkdir -p ./app
# Add package.json and install Dependencies
COPY node/package.json package.json
RUN npm install
