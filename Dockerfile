FROM node:alpine

# File Author / Maintainer
LABEL authors="Bruce Xiong <xiongty@outlook.com>"

# Copy app source
COPY . /www

# Install app dependencies
RUN cd /www; npm install

# Set work directory to /www
WORKDIR /www

# set your port
ENV PORT=8080
ENV NODE_ENV="production"

# expose the port to outside world
EXPOSE  8080

# start command as per package.json
CMD ["npm", "start"]
