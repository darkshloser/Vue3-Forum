
FROM node:lts

# Creating the root directory of the project
RUN mkdir /app

# Set the working directory
WORKDIR /app

EXPOSE 8000

COPY . /app

RUN apt-get update
RUN apt-get -y install vim

RUN rm -rf node_modules
RUN npm install

CMD ["npm", "run", "serve"]
