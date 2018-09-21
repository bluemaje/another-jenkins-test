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
      steps {
        checkout scm
        sh "echo ${SOME_VAR}"
      }
    }

    stage('prepare') {
      steps {
        sh "git clean -fdx"
      }
    }

    stage('compile') {
      steps {
        sh "make build"
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


    stage('package') {
      steps {
        sh "make package"
      }
    }

    stage('publish') {
      steps {
        sh "make publish"
      }
    }

    stage('deploy') {
      when {
        branch 'production'
      }

      steps {
        sh "echo deploy!!!!!!!!!"
      }
    }

  }
}
