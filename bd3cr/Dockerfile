#FROM tiangolo/uwsgi-nginx-flask:python2.7
#
#RUN apt-get update 
#RUN apt-get upgrade -y
#RUN apt-get install vim -y
#RUN mkdir /certs
#
## Copy and install BD DS
#RUN rm -rf /app
#COPY ./app /app
#COPY ./configs/bd_config /app/ds_config
#ENV DS_SETTINGS=/app/ds_config
#COPY ./configs/pip_packages.list /app/
#RUN pip install -r /app/pip_packages.list
#COPY configs/uwsgi.ini /app


FROM redis

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install -y python-pip
RUN apt-get update 
RUN apt-get upgrade -y

COPY app /app
COPY ./configs/pip_packages.list /app/
RUN pip install -r /app/pip_packages.list

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080 6379
ENTRYPOINT ["/entrypoint.sh"]

