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
      when {
        branch 'production'
      }

      sh "echo deploy!!!!!!!!!"
    }
  }  
}
