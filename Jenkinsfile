pipeline {
    agent any
    stages {
        stage('test AWS credentials') {
            steps {
                withAWS(credentials: 'jenkins-aws-user', region: 'ap-south-1') {
                    bat 'echo "hello Jenkins">hello.txt'
                    s3Upload acl: 'Private', bucket: 'karthik4607', file: 'hello.txt'
                    s3Download bucket: 'karthik4607', file: 'downloadedHello.txt', path: 'hello.txt'
                    bat 'cat downloadedHello.txt'
                }
            }
        }
    }
}
