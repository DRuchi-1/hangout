pipeline {
	agent any
	stages {
		stage ('git checkout') {
			steps {
				git url: 'https://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@github.com/techsriman/hangout.git'
			}
		}
		stage ('build') {
			steps {
				with_maven {
					sh 'mvn clean verify'
				}
			}
		}
	}
}