#!/bin/groovy
pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage ('Init') {
      steps {
      sh ('rpmdev-setuptree')
      sh ('cd ~/rpmbuild/SOURCES')
      sh ('wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz')
      sh ('cd ~/rpmbuild/SPECS')
      sh ('rpmdev-newspec hello')
      }
    }
  }
}
