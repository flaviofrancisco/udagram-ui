FROM nginx as base

COPY udagram-app.conf /etc/nginx/sites-available/udagram-app.conf

RUN mkdir /etc/nginx/sites-enabled

RUN ln -s /etc/nginx/sites-available/udagram-app.conf /etc/nginx/sites-enabled/udagram-app.conf

COPY ./www /usr/share/nginx/html