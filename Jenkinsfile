#!/bin/groovy
pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage ('Init') {
      steps {
      sh ('pwd;rpmdev-setuptree;ls;cp hello.spec rpmbuild/SPECS/')
      dir('rpmbuild/SOURCES') {
      // some block
        
      sh ('pwd;wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz;ls')
      }
      dir('rpmbuild/SPECS') {
      sh ('pwd;ls;rpmbuild -ba hello.spec')
      }
    }
  }
  }
}
