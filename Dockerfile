FROM node: 12-alpine
RUN apk add no-cache git
RUN git clone -q https://github.com/BrahimElm01/todo-app.git
WORKDIR /todo-app
RUN yarn install --production
#Start the application
CMD ["node", "/src/index.js")
