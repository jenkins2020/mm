#!/bin/groovy
pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage ('Init') {
      steps {
      sh ('rpmdev-setuptree;cp hello.spec ~/rpmbuild/SPECS/')
      dir('~/rpmbuild/SOURCES') {
      // some block
        
      sh ('pwd;wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz')
      }
      dir('~/rpmbuild/SPECS') {
      sh ('pwd;rpmbuild -ba hello.spec')
      }
    }
  }
}
