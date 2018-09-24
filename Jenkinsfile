pipeline {
  agent any

  options {
    timeout(time: 5, unit: 'MINUTES')
    ansiColor('xterm')
    timestamps()
  }

  environment {
    SOME_VAR = "hello"
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
        sh "echo ${SOME_VAR}"
      }
    }

    stage('Prepare') {
      steps {
        sh "git clean -fdx"
      }
    }

    stage('Compile') {
      steps {
        sh "make build"
      }
    }

    stage('Colours?') {
      steps {
        sh "make help"
      }
    }

    stage('Tests') {
      parallel {
        stage('Integration') {
          steps {
            sh "make test"
          }
        }

        stage('Unit') {
          steps {
            sh "make test"
          }
        }
      }
    }


    stage('Package') {
      steps {
        sh "make package"
      }
    }

    stage('Publish') {
      steps {
        sh "make publish"
      }
    }

    stage('Deploy') {
      when {
        branch 'production'
      }

      steps {
        sh "echo deploy!!!!!!!!!"
      }
    }

  }
}
