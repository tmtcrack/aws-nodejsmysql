FROM public.ecr.aws/docker/library/node:14

RUN apt-get update
WORKDIR /app
COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 3000
CMD [ "node", "server.js" ]

