# https://qmlbook.github.io

FROM python:3 as builder
WORKDIR /data
RUN apt-get update && apt-get install git -y
RUN git clone https://github.com/qmlbook/qmlbook
WORKDIR /data/qmlbook
RUN pip install -r requirements.txt
RUN make dirhtml

FROM alpine
RUN apk update && apk add nginx
COPY --from=builder /data/qmlbook/_build/dirhtml /var/www/html/
EXPOSE 80
RUN mkdir -p /run/nginx
RUN sed 's#return 404;#root /var/www/html/;#' -i /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
