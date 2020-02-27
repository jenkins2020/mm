#!/bin/groovy
pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage ('Init') {
      steps {
      sh ('rpmdev-setuptree;ls;cp hello.spec /home/jenkins/rpmbuild/SPECS/; ls -a')
      sh ('#wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz;cp /home/jenkins/workspace/mm_master/hello/hello-2.10.tar.gz ./')
      dir('/home/jenkins/rpmbuild/SPECS') {
      sh ('pwd;ls -a;rpmbuild -ba hello.spec')
      }
    }
  }
  }
}
