FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.eubxdkd.mongodb.net
ENV MONGODB_USERNAME prashantsalgaocar
ENV MONGODB_PASSWORD XrPC7QFalDb9Ulxi

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]