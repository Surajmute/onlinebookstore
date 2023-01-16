pipeline {
    agent {
        node {
            label 'qa'
        }
    }
    stages {
        stage ("git clone") {
            steps {
                git 'https://github.com/Surajmute/onlinebookstore.git'
            }
        }
        stage ("Build") {
            steps {
                sh 'mvn install -DskipTests'
            }
        }
        stage ("Deploy") {
            steps {
                sh 'cp /home/ec2-user/jenkins/workspace/httpd/target/onlinebookstore.war /mnt/apache-tomcat-9.0.71/webapps/'
                sh "sudo bash /mnt/apache-tomcat-9.0.71/bin/startup.sh"
            }
        }
    }
}
