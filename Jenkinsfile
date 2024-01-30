pipeline {
    agent any
    stages {
        stage('test AWS credentials') {
            steps {
                withAWS(credentials: 'jenkins-aws-user', region: 'ap-south-1') {
                    bat 'echo "hello Jenkins">hello1.txt'
                    s3Upload acl: 'Private', bucket: 'karthik4607', file: 'hello1.txt'
                    s3Download bucket: 'karthik4607', file: 'downloadedHello1.txt', path: 'hello1.txt'
                    bat 'notepad downloadedHello1.txt'
                }
            }
        }
    }
}
