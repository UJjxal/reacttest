FROM node:latest
WORKDIR /data
COPY package.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]