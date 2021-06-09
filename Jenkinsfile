pipeline {
	agent {
	    label 'agentnode1'
	}
	stages {
		//stage ('git checkout') {
			//steps {
				//git url: 'https://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@github.com/techsriman/hangout.git'
			//}
		//}
		stage ('build') {
			steps {
				withMaven {
					sh 'mvn clean verify'
				}
			}
		}
		stage('docker image') {
		    steps {
		        
		        dockerfile {
		            filename 'Dockerfile'
		            label 'techsriman/hangout:2.0'
		        }
		        
		    }
		}
	}
}