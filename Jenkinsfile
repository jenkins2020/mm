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
        
      sh ('ftp -A -v ftp.gnu.org <<eof\
          binary\
          get gnu/hello/hello-2.10.tar.gz\
          eof')
      sh ('pwd;echo "wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz"')
      }
      dir('~/rpmbuild/SPECS') {
      sh ('pwd;rpmdev-newspec hello')
        }
      }
    }
  }
}
