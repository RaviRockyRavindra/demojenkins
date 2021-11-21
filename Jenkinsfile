pipeline{

agent {
    node {
        label 'dev'
        customWorkspace '/home/ravindra/jenkins/mynodework'
    }
}


stages{

stage("verify")    
{
    steps{
    sh """echo "got that" """
    }    
}
    
stage("git clone")
{
steps{
git branch: 'main', url: 'https://github.com/RaviRockyRavindra/demojenkins.git'
}
}

stage("build")
{
steps{
sh "sudo docker build . -t 852535/httpdchakri -f demojenkins/Dockerfile"
}
}


stage("docker push")
{
steps{
script{
withDockerRegistry(credentialsId: 'b732b366-ddd0-4051-9dce-23b6dea243d6', url: 'https://hub.docker.com/') {
   docker.image("852535/httpdchakri").push
}
}
}
}


stage("Deploy")
{
steps{
sh "sudo docker run -it -d --name server1 -p85:80 852535/httpdchakri"
}

}
}




}
