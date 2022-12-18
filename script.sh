

#!/bin/bash

cd /root
rm -rf docker ;
git clone https://github.com/samirsaket/docker.git ;
docker system prune -af ;
cd /root/docker ;
docker build -t samirsaket/mydockerepo:apacheTag12 .
docker push samirsaket/mydockerepo:apacheTag12
docker rm -f mycontianer
docker system prune -af
docker run -itd -p 80:80 --name mycontianer amirsaket/mydockerepo:apacheTag12
