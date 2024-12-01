FROM node:alpine

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install -g @angular/cli@18

RUN npm install
#https://dev.to/rodrigokamada/creating-and-running-an-angular-application-in-a-docker-container-40mk
#npm install -g @angular/cli@18
#docker build -t angular-docker .
#docker run -p 4201:4200 angular-docker

CMD ["ng", "serve", "--host", "0.0.0.0"]