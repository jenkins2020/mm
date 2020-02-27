#!/bin/groovy
pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage ('Init') {
      steps {
      sh ('rpmdev-setuptree')
      sh ('ls;cp hello.spec /home/jenkins/rpmbuild/SPECS/; ls -a')
      }
      }
    stage ('Source') {
      steps {
      sh ('pwd;wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz; cp /home/jenkins/workspace/mm_master/hello-2.10.tar.gz /home/jenkins/SOURCES/; ls -a /home /jenkins/SOURCES')
      }
      }
    stage ('Specs') {
      steps {
      sh ('cp /home/jenkins/workspace/mm_master/hello.spec /home/jenkins/rpmbuild/SPECS/; ls -a')
      }
      }
    stage ('Build') {
      steps {
      dir('/home/jenkins/rpmbuild/SPECS') {
      sh ('pwd;ls -a;rpmbuild -ba hello.spec')
      }
      }
      }
  }
}
