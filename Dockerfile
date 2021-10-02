FROM node:14.15.4-alpine3.12
RUN apk add --upgrade nginx bash
RUN mkdir -p /pactum
COPY . pactum
RUN chmod -R a+rwx /pactum
RUN bash /pactum/scripts/install.sh
RUN mkdir -p /run/nginx
COPY nginx/nginx.conf /etc/nginx/nginx.conf
CMD [ "/pactum/scripts/run.sh" ]