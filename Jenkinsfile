#!/usr/bin/env groovy

pipeline {
  agent any

  tools {
    nodejs 'NpxNodeJS'
  }

  stages {
    stage('Clean Workspace') {
      steps {
        script {
          ws("workspace") {
            cleanWs()
          }
        }
      }
    }

    stage('Checkout') {
      steps {
        script {
          ws("workspace") {
            git branch: 'main',
            url: 'https://github.com/antonioconselheiro/nostrboot-year-progress'
          }
        }
      }
    }

    stage('Install') {
      steps {
        script {
          ws("workspace") {
            nodejs(nodeJSInstallationName: 'NpxNodeJS') {
              sh 'npm install'
            }
          }
        }
      }
    }

    stage('Build Project') {
      steps {
        script {
          ws("workspace") {
            nodejs(nodeJSInstallationName: 'NpxNodeJS') {
              sh 'npm run build --prod'
            }
          }
        }
      }
    }

    stage('Build Dockerfile') {
      steps {
        script {
          ws("workspace") {
            nodejs(nodeJSInstallationName: 'NpxNodeJS') {
              docker.build('yearprogress:latest')
            }
          }
        }
      }
    }

    stage('Publish') {
      steps {
        script {
          ws("workspace") {
            docker.withRegistry('https://ra9.local:5000', 'ra9-registry-credentials') {
              docker.image('yearprogress:latest').push()
            }
          }
        }
      }
    }
  }
}
