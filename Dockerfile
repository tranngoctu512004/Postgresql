#* ✈️ Production 
FROM node:20-alpine AS dev

WORKDIR /app

COPY package*.json .

RUN npm install --only=production

COPY . .

EXPOSE 5000

CMD [ "npm", "run", "start" ]