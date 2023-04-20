FROM node:latest
LABEL maintainer="Paul Wambura <wamburakid@gmail.com>"
RUN mkdir -p /app
WORKDIR /app
COPY client/package*.json ./
RUN npm install 
COPY client/ . 
RUN npm run build
EXPOSE $PORT
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=$PORT
ENV PROXY_API = $PROXY_API
CMD [ "npm", "start"]
 
