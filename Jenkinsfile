pipeline {
  agent any
 
  options {
    timeout(time: 5, unit: 'MINUTES')
    ansiColor('xterm')
  }
  
  environment {
    SOME_VAR = "hello"
  }

  stages {
    try {
      stage('checkout') {
        checkout scm
        sh "echo ${SOME_VAR}"
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
}
