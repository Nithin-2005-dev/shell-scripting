#!/bin/bash
<< task
deploy the django app
and handle the code for errors
task

code_clone(){
	echo "Cloning te Django app.."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}
install_requirements(){
	echo "Installing dependencies.."
	sudo apt-get update
	sudo apt-get install docker.io nginx -y docker-compose
}
required_restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker 
	sudo systemctl enable nginx
	sudo systemctl restart docker
}
deploy(){
    docker build -t notes-app .
    docker-compose up -d
}


echo "******* DEPLOYMENT STARTED *******"
if ! code_clone;then
	echo "The code directory already exists"
	cd django-notes-app
fi
if ! install_requirements;then
	echo "Installation failed"
	exit 1
fi

if ! required_restarts;then
	echo "System fault identified."
fi
deploy

echo "******* DEPLOYMENT DONE ********"
