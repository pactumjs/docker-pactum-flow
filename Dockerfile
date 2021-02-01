FROM node:14.15.4-alpine3.12
RUN apk add --upgrade nginx bash
RUN mkdir -p /pactum
RUN mkdir -p /run/nginx
COPY . pactum
COPY nginx.conf /etc/nginx/nginx.conf
RUN chmod -R a+rwx /pactum
RUN bash /pactum/install.sh
CMD [ "/pactum/run.sh" ]