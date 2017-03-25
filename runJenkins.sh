mkdir -p persistence
docker rm my_jenkins
docker run -d --name my_jenkins -p 8080:8080 -p 50000:50000 -v $(pwd)/persistence/:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock custom-jenkins 
