sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo systemctl enable docker
sudo docker pull jenkins/jenkins
mkdir -p /jenkins-data/jenkins_home
sudo chown -R 1000:1000 /jenkins-data
sudo docker info | grep -i root
sudo mkdir jenkins-data
sudo cd jenkins-data
sudo docker run --name myjenkins -p 8080:8080 -p 50000:50000 -d -v /jenkins-data/jenkins_home:/var/jenkins_home jenkins/jenkins
echo "Docker PS Status:"
sudo docker psdocker run --name myjenkins -p 8080:8080 -p 50000:50000 -d -v /jenkins-data/jenkins_home:/var/jenkins_home jenkins/jenkins
sudo echo "Docker PS Status:"
sudo docker ps
sudo echo "Initial Jenkins Password:"
sudo cat /jenkins-data/jenkins_home/secrets/initialAdminPassword