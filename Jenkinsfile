#!/bin/groovy
pipeline {
//    parameters {
//        string(name:'VERSION', defaultValue:'latest', description:'Fedora version')
//    }

    agent {
//        docker {
//            image "fedora:${params.VERSION}"
//            args '-u 0'
//        }
      dockerfile true
    }

    stages {
        stage('Init') {
            steps {
                copyArtifacts(projectName: 'mm/master')
                sh('dnf install -y hello-[^d]*rpm')
                sh('hello')
            }
        }
    }
}
