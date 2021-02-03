FROM node
RUN mkdir -p /usr/src
WORKDIR /usr/src
COPY . /usr/src
RUN npm install
RUN npm run build
EXPOSE 8080
USER node
CMD ["/usr/src/node_modules/.bin/next", "start", "-H", "0.0.0.0", "-p", "8080"]