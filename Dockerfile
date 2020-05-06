FROM dron84/alpine-vue-cli-node-sass
MAINTAINER Dron84 <dron84@gmail.com>
COPY . /server
WORKDIR /server
RUN npm install -y -g node-sass@4.13 @vue/cli @vue/cli-service sass-loader -S && npm install && npm run build
EXPOSE 80
CMD npm run start