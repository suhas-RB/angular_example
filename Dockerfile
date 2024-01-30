FROM node:latest
RUN mkdir /project
WORKDIR /project

RUN npm install -g @angular/cli@13
COPY package.json package-lock.json ./
RUN npm ci

COPY . .
CMD ["ng", "serve", "--host", "0.0.0.0"]

