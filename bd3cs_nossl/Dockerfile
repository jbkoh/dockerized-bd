FROM tiangolo/uwsgi-nginx-flask:python2.7

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install vim -y

# Install Redis
RUN mkdir /Downloads
RUN cd /Downloads && wget http://download.redis.io/redis-stable.tar.gz
RUN tar -xzvf /Downloads/redis-stable.tar.gz -C /
RUN cd /redis-stable && make install
RUN cp /redis-stable/src/redis-server /usr/local/bin/

# Copy and install BD DS
RUN rm -rf /app
COPY ./app /app
COPY ./configs/bd_config /app/cs_config
ENV CS_SETTINGS=/app/cs_config
COPY ./configs/pip_packages.list /app/
RUN pip install -r /app/pip_packages.list
COPY setup_bd.py /app/
COPY configs/uwsgi.ini /app

EXPOSE 80 443 8080 27017 

# Override existing entrypoint for SSL.
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
