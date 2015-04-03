FROM node

RUN bash -c "npm i -g --verbose pm2 pm2-web"

COPY pm2-deploy.json /pm2-deploy.json

EXPOSE 9000

CMD pm2 start --no-daemon pm2-deploy.json
