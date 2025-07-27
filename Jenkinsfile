pipeline {
        agent {label'terra-slave'}
        stages {
        stage('cloneproject'){
                
        steps{
    git (
          credentialsId: 'deepaoum1128@gmail.com',
          branch:'master',url:'https://github.com/deepat1128/terraform')
    }
    }
        stage('init') {

        steps{
                sh 'terraform init'
                }
                }
       stage('validate') {
        steps{
                sh 'terraform validate'
               }

}
        stage('plan') {

        steps{
                sh 'terraform plan'
                }
                }
stage('apply') {
    steps {
        sh 'terraform apply --auto-approve'
    }
}

                }
}

