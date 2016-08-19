FROM mhart/alpine-node:4

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Add installed binaries to env
ENV PATH /app/node_modules/.bin:$PATH

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD ["npm", "start"]
