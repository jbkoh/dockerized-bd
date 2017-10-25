FROM tiangolo/uwsgi-nginx-flask:python2.7

RUN apt-get update
RUN apt-get install vim -y
CMD mkdir /certs

# Copy and install BD DS
COPY ../BuildingDepot-v3/buildingdepot/DataService /app
ENV DS_SETTINGS=/app/ds_config
COPY ./BuildingDepot-v3/pip_packages.list /
RUN pip install -r /pip_packages.list

# Override existing entrypoint for SSL.
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
