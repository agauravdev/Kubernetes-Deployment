pipeline{
	agent any
	stages {
		stage('Lint HTML'){
			steps {
				sh 'tidy -q -e index.html'
				sh 'hadolint Dockerfile'
			}
		}

		stage('Upload docker Image')
		{
			steps{
				sh 'docker build . --tag=gauravg21/udacity_capstone:cherry'
				withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'passwd', usernameVariable: 'username')]) {
					sh 'docker login -u $username -p $passwd'
				}
				docker push gauravg21/udacity_capstone:cherry

			}
		}

		stage('deploy in kubernetes')
		{
			steps{
				withAWS(credentials: 'aws', region: 'us-west-2')
				{
					sh 'aws eks --region=us-west-2 update-kubeconfig --name devops_capstone'
					sh 'kubectl apply -f eks-deployment.yml'
				}
			}
		}
	}
}