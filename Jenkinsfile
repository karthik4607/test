pipeline {
    agent any
    stages {
        stage('test AWS credentials') {
            steps {
                withAWS(credentials: 'jenkins-aws-user', region: 'ap-south-1') {
                    bat 'echo "hello Jenkins">hello1.txt'
                    s3Upload acl: 'Private', bucket: 'karthik2007', file: 'hello1.txt'
                    s3Download bucket: 'karthik2007', file: 'downloadedHello1.txt', path: 'hello1.txt'
                  
                }
            }
        }
    }
}
