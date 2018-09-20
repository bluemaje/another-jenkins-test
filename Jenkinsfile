node {
  try {
    stage('checkout') {
      checkout scm
    }
    stage('prepare') {
      sh "git clean -fdx"
    }
    stage('compile') {
      echo "nothing to compile..."
    }
    stage('test') {
      sh "echo test"
    }
    stage('package') {
      sh "echo package"
    }
    stage('publish') {
      sh "echo publish"
    }
    stage('deploy') {
      sh "echo deploy"
    }
  } finally {
    stage('cleanup') {
      echo "doing some cleanup..."
    }
  }
}
