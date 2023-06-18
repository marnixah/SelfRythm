FROM node:16-buster
WORKDIR /code
COPY package*.json ./
# RUN apk add  --no-cache ffmpeg
RUN apt-get update && apt-get install --no-install-recommends -y ffmpeg
RUN apt-get install -y python make g++
RUN npm i
COPY . .
CMD [ "node", "index.js" ]
