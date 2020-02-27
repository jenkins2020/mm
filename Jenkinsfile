#!/bin/groovy
pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage ('Init') {
      steps {
      sh ('rpmdev-setuptree')
      dir('~/rpmbuild/SOURCES') {
      // some block
        
      sh ('(echo \'GET gnu/hello/hello-2.10.tar.gz\'; echo; sleep 1; ) | telnet ftp.gnu.org 80
      sh ('pwd;echo "wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz"')
      }
      dir('~/rpmbuild/SPECS') {
      sh ('pwd;rpmdev-newspec hello')
        }
      }
    }
  }
}
