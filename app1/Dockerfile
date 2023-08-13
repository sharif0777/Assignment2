FROM nginx:latest

ENV APP_NAME=CoverGo
ENV APP_VERSION=1.0.1

WORKDIR /usr/share/nginx/html

COPY app1 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
