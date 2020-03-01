# project-build
Docker setup for all projects

**Installation Guide**

First download python3 from: https://www.python.org/downloads/ And install Pycharm.

Once you have Python and Pycharm installed run download_repos.py, either from command line in this directory:
`python3 download_repos.py`
or run it in Pycharm. This script downloads all the code from every repository that we have, so it will take time.

The Next step is to install Docker for desktop. Go to: https://www.docker.com/products/docker-desktop
and download the latest version.


**Running the project**

This option allows to make changes directly in the code and see them reflected immediately after saving.
Run the next command:
`docker-compose up`
or in Pycharm right click on the file docker-compose-local.yml and run.


**Rebuild an specific container**

To build an specific container you need to specify its _'service name'_, you will find it in the Docker compose file.
Once you have the name, run the next command:

`docker-compose up -d --no-deps --build <service name>`


**Rebuild all the containers**

Run the next command to recreate all the containers from a Docker compose file.
This will check each service that is part of the file and apply all the changes in code or configuration.

`docker-compose up -d --force-recreate --build`


**Useful commands**

_Check all running container:_

`docker ps`

_Check all container:_

`docker ps -a`

_Check the logs form a container:_

`docker logs <container name>`

_Get inside a container:_

`docker exec -it <container name> /bin/bash`

_Delete unused Docker elements and images:_

`docker system prune`

_To stop all containers:_

`docker-compose stop`

Note:
The name of the container is different from the service name, to get the container name you need to use the result
from `docker ps` in the name column.