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
				sh 'sudo -S docker build . --tag=gauravg21/udacity_capstone:alpha'
				sh 'sudo -S docker login'
				sh 'sudo -S docker push gauravg21/udacity_capstone:alpha'
			}
		}
	}
}