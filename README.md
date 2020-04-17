# Udaity Devops Capstone Project

First, I would like to explain a little about my project. 

I have used rolling updates using kubernetes. 

My versions were as follows 

1. alpha (letter a)
2. beta (letter b)
3. cherry (letter c)

I used the templates provided by aws to form the cloudformation script and the kubernetes cluster. 

My kubernetes cluster was running in one EC2 instance, and hence I did not know how to show the change in the EC2 instance. I did however put screenshots of the "kubectl get pods" commands to show that old pods were terminated and new pods were added to my kubernetes cluster.


## App Files

	index.html


## Cloudformation Scripts
	
	cloudformation.yml

## Shell scripts to run CloudFormation Scripts

	create.sh
	update.sh

## Dockerfiles

	Dockerfile
	run_docker.sh

## Kubernetes files

	run_k8s.sh
	eks-deployment.yml

## Jenkins 

	Jenkinsfile


Endpoint URL Showing my final html page : [a99e352a9802511ea9d28020b73fc421-2036734422.us-west-2.elb.amazonaws.com](http://a99e352a9802511ea9d28020b73fc421-2036734422.us-west-2.elb.amazonaws.com/)