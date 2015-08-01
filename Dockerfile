# Dockerfile to create a docker image
FROM node

# Add files to the image
RUN mkdir -p /opt/nodejs
ADD . /opt/nodejs
WORKDIR /opt/nodejs

RUN cd /opt/nodejs && npm install --production

ENV NODE_ENV production
# Expose the container port
EXPOSE 2368

ENTRYPOINT ["node", "index.js"]
