FROM node:alpine

# File Author / Maintainer
LABEL authors="Bruce Xiong <xiongty@outlook.com>"

# Copy app source
COPY . /www

# set your port and node env
ENV PORT=8080
ENV NODE_ENV="production"

# Install app dependencies
RUN cd /www; npm install --production

# Set work directory to /www
WORKDIR /www

# expose the port to outside world
EXPOSE  8080

# start command as per package.json
CMD ["npm", "start"]
