FROM node:12

#create app directory
WORKDIR /usr/src/app

#install app deps
COPY package*.json ./

#run deps
RUN npm install

#bundle app code
COPY . .

EXPOSE 8080

CMD [ "node", "token.js" ]