FROM debian:buster

RUN apt-get update && apt-get install -y nginx \
                                         python3 \
                                         python3-pip \
                                         nano \
                                         libmariadb-dev \
                                         libmariadb-dev-compat \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install django djangorestframework mysqlclient

#EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]