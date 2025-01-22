FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo-devops
ENV MONGODB_CLUSTER_ADDRESS graphqlnode.z5vfw.mongodb.net
ENV MONGODB_USERNAME nasa
ENV MONGODB_PASSWORD coffeeday

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]