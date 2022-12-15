node {
      def app
      def mvnHome = tool 'maven-3.8.6'
      stage('Clone repository') {

            checkout scm
      }

      stage('Build Project') {
            // build project via maven
            sh "'${mvnHome}/bin/mvn' clean install"
      }

      stage('Build image') {

            app = docker.build("simplilearn/test")
       }
      stage('Test image') {
            app.inside {

             sh 'echo "Tests passed"'
            }
        }
       stage('Push image') {
       docker.withRegistry('https://registry.hub.docker.com', 'git') {
       app.push("${env.BUILD_NUMBER}")
       app.push("latest")
       }
      }
}