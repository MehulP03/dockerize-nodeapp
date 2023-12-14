FROM node:14.17.3-alpine
ENV PATH /app/node_modules/ .bin:$PATH
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . ./
EXPOSE 3000
CMD ["npm", "run", "dev"]
