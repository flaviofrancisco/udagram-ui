FROM nginx as base

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./www /usr/share/nginx/html

EXPOSE 8100

RUN service nginx configtest