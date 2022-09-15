sudo docker build -t server:0.0.1 -f ./Dockerfile-dev .
if  sudo docker ps -a | grep docker_server ;  then
  sudo docker start -i docker_server
else
  sudo docker run -dit -p 8080:3000 -v $(pwd):/app:ro --name docker_server server:0.0.1
fi





