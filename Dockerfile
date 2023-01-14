
FROM node:lts

# Creating the root directory of the project
RUN mkdir /app

# Set the working directory
WORKDIR /app


RUN apt-get update
RUN apt-get -y install vim


EXPOSE 8000
# CMD python app.py

