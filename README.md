# docker-escape

escape docker container and gather some info <br>
this uses the docker executor to mount the local filesystem and snag some stuff. <br>

Reqs: <br>
gitlab-runner user is part of the docker group <br>
runner config must include <br> 
volumes = ["/cache", "/var/run/docker.sock:/var/run/docker.sock"]

# Test 1 - docker escape
* volumes = ["/cache", "/var/run/docker.sock:/var/run/docker.sock"]
* gitlab-runner part of docker group = NO

#### Results
* build image = yes
* run built image = yes
* escape built image and mount host filesystem = yes
* destroy container from shell executor = no
	*  docker.errors.DockerException: Error while fetching server API version: ('Connection aborted.', PermissionError(13, 'Permission denied'))
	
	
	
# Test 2 - docker escape
* volumes = ["/cache", "/var/run/docker.sock:/var/run/docker.sock"]
* gitlab-runner part of docker group = YES

#### Results
* build image = yes
* run built image = yes
* escape built image and mount host filesystem = yes
* destroy container from shell executor = yes

# Test 3 - docker escape
* volumes = ["/cache"]
* gitlab-runner part of docker group = no

#### Results
* build image = no
* run built image = no
* escape built image and mount host filesystem = no
* destroy container from shell executor = no

# Test 4 - docker escape
* volumes = ["/cache"]
* gitlab-runner part of docker group = yes

#### Results
* build image = no
* run built image = no
* escape built image and mount host filesystem = no
* destroy container from shell executor = yes
