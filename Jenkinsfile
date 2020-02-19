
node {

     def registry = "mounabal/docker_pipeline"
     def registryCredential = "dockerhub"
     def dockerImage = ""
  
    stage ('CloningGit'){
          
          git 'https://github.com/Mounagit/dockerfile_pipeline.git'
      }
      
    stage ('Building') {
         
              dockerImage = docker.build registry + ":1.0"
  
      }
  
    stage ('DeployImage') {
     
              docker.withRegistry('',registryCredential){
                  dockerImage.push()
              
              }
         
    }
    stage ('PullImage') {
     
          
              docker.withRegistry(''){
                  dockerImage.pull()
      
                }
      }

}
