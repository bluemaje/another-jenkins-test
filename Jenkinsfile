node {
  try {
    stage('checkout') {
      checkout scm
    }
    stage('prepare') {
      sh "git clean -fdx"
    }
    stage('compile') {
      sh "make build"
    }
    stage('test') {
      sh "make test"
    }
    stage('package') {
      sh "make package"
    }
    stage('publish') {
      sh "make publish"
    }
    stage('deploy') {
      sh "echo deploy!!!!!!!!!"
    }
  } finally {
    stage('cleanup') {
      echo "doing some cleanup..."
    }
  }
}
