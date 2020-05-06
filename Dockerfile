FROM dron84/alpine-vue-cli-node-sass
MAINTAINER Dron84 <dron84@gmail.com>
COPY . /server
WORKDIR /server
RUN cd /server/client && npm install @vue/cli @vue/cli-service sass-loader -S && npm install -y node-sass@4.13 -S && npm install -g nodemon && npm install && npm run build
EXPOSE 80
EXPOSE 443
CMD npm run start