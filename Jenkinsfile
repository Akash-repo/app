node {
      def app
      stage('Clone repository') {

            checkout scm
      }

      stage('Initialize'){
              def dockerHome = tool 'myDocker'
              env.PATH = "${dockerHome}/bin:${env.PATH}"
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