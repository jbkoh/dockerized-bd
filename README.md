# Dockerized BuildingDepot.


## Running Instruction

### Install Docker
- [docker installation](https://docs.docker.com/engine/installation/)
- (optional) Enable Docker without sudo.

### Docker Image Building
```bash
bash configure.sh
bash build.sh
```


### Run containers without SSL
```bash
cd scripts/
bash pull_dockers.sh
bash run.sh
```

### Run containers with SSL.
TODO: The certificate cannot be verified for communication between CS and DS.
