FROM tiangolo/uwsgi-nginx-flask:python2.7

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install vim -y
RUN mkdir /certs

# Copy and install BD DS
RUN rm -rf /app
COPY ./app /app
COPY ./configs/bd_config /app/cs_config
ENV CS_SETTINGS=/app/cs_config
COPY ./configs/pip_packages.list /app/
RUN pip install -r /app/pip_packages.list
COPY setup_bd.py /app/
COPY configs/uwsgi.ini /app

# Override existing entrypoint for SSL.
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
