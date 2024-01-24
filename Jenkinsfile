pipeline {
    agent any
    
    environment {
        // Define environment variables, if needed
        PYTHON_VERSION = ''
        DJANGO_SETTINGS_MODULE = 'netclone.netflix.netflixprj.netflixprj.settings'
        DOCKER_REGISTRY = 'your-docker-registry'
        DOCKER_IMAGE_NAME = 'myflix-django-app'
        DOCKER_IMAGE_TAG = 'latest'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

     stage('Install Dependencies') {
            steps {
                script {
                    sh "cd /var/lib/jenkins/workspace/myflix-jenkins && python3 -m venv myenv"
                    sh "cd /var/lib/jenkins/workspace/myflix-jenkins && ls -l"
                }
            }
        }

        // stage('Run Tests') {
        //     steps {
        //         script {
        //             sh "cd /var/lib/jenkins/workspace/myflix-jenkins && python3 manage.py test"
        //         }
        //     }
        // }

        // stage('Build and Collect Static Files') {
        //     steps {
        //         script {
        //             sh "cd /var/lib/jenkins/workspace/myflix-jenkins && source myenv/bin/activate && python3 manage.py collectstatic --noinput"
        //         }
        //     }
        // }

        // stage('Build Docker Image') {
        //     steps {
        //         script {
        //             sh "cd /var/lib/jenkins/workspace/myflix-jenkins && docker build -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
        //         }
        //     }
        // }

        // stage('Deploy with Docker') {
        //     steps {
        //         script {
        //             // Build the Docker image
        //             sh "cd /var/lib/jenkins/workspace/myflix-jenkins && docker build -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
                    
        //             // Run the Docker container in detached mode (-d)
        //             sh "cd /var/lib/jenkins/workspace/myflix-jenkins && docker run -d -p 8000:8000 --name myflix-container ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
        //         }
        //     }

        //     post {
        //         always {
        //             script {
        //                 sh "cd /var/lib/jenkins/workspace/myflix-jenkins && deactivate || true"
        //             }
        //         }
        //     }
        // }
    }
}
