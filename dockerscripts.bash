docker build -t alexzhaohong/reviewsfecserver .
docker run -d -p 3003:3003 --name reviewscontainer alexzhaohong/reviewsfecserver
docker run -d -p 2000:8080 -v $(pwd):/src/app --name psychic_reviewscontainer alexzhaohong/reviewsfecserver

# Compose Workflow
docker-compose up -d --build
open http://localhost:3003
docker ps -a
docker volume ls
containername="reviews-module_reviews-module_1"
echo $containername
docker logs $containername
docker exec -it $containername sh
docker-compose down -v --rmi all

# Workflow
docker build
docker images 
docker run
open http://localhost:3003
docker ps
docker stop 
docker rm
docker rmi 
# Publishing
docker login
docker image push <YourDockerID>/firstimage
docker push alexzhaohong/reviewsfecserver:tagname
docker pull alexzhaohong/reviewsfecserver:latest
docker run -d -p 3003:3003 --name reviewscontainer alexzhaohong/reviewsfecserver
open http://localhost:3003
docker logs reviewscontainer
docker exec -it reviewscontainer sh
docker rm -f reviewscontainer
docker rmi alexzhaohong/reviewsfecserver:latest
# 6
docker-compose up
docker-compose up -d --build
docker-compose down -v --rmi all
# 5-Make_Multiple_Containers_Work_Together
docker network ls
docker network inspect <network-name> #IPv4 Addressing
# 4-Containerized_Development_With_Volumes
docker logs <container-name>
docker volume ls
docker volume prune
# 3-Bundle_Your_App_Into_An_Image
docker pull <image-name> : <version>
docker history <image-name>
docker build --tag <image-name> .
docker run -d -p <hostport:containerport> -v <$(pwd):directorypath> --rm --name <container-name> <image-name>
docker restart <container-name>
# 2-Long_Lived_Containers
docker stop <container-name>
docker start <container-name>
docker rm -f <container-name>
docker rmi <image-name>
# 1-Introduction
docker info
docker images -a
docker run <image-name>
docker ps
docker ps -a