
FROM node:lts

ARG EXPOSE_PORT
ENV port=$EXPOSE_PORT

# Update and install needed tools
RUN apt-get update
RUN apt-get -y install vim


# use changes to package.json to force Docker not to use the cache
# when we change our application's nodejs dependencies:
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/ 


# From here we load our application's code in, therefore the previous docker
# "layer" thats been cached will be used if possible
WORKDIR /opt/app
ADD . /opt/app

EXPOSE ${port}

CMD npm run serve -- --port ${port}
