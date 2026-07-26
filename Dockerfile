FROM node:alpine3.24
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
EXPOSE 5173
ENTRYPOINT ["npm", "run"]
CMD ["dev"]

