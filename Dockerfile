FROM node:8.11
COPY package*.json .
RUN npm install -g serverless \
    npm install --save-dev serverless-localstack \
    npm install -g yarn \
    npm install -g netlify-cli \
    yarn install
RUN mkdir /app
WORKDIR /app
