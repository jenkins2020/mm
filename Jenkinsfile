#!/bin/groovy
pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage ('Init') {
      steps {
      sh ('rpmdev-setuptree')
      sh ('#ls;cp hello.spec /home/jenkins/rpmbuild/SPECS/; ls -a')
      }
      }
    stage ('Source') {
      steps {
      sh ('pwd;wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz; cp /home/jenkins/workspace/mm_master/hello-2.10.tar.gz /home/jenkins/rpmbuild/SOURCES/; ls -a /home/jenkins/rpmbuild/SOURCES')
      }
      }
    stage ('Specs') {
      steps {
      sh ('cp /home/jenkins/workspace/mm_master/hello.spec /home/jenkins/rpmbuild/SPECS/; ls -a')
      }
      }
    stage ('Build') {
      steps {
      sh ('pwd;cd /home/jenkins/rpmbuild/SPECS;ls -a;rpmbuild -ba hello.spec')
      sh ('cp ~/rpmbuild/RPMS/*/*.rpm .')
      }
      }
    stage ('Archive') {
      steps {
      archiveArtifacts(artifacts: '*.rpm')
      }
    }
  }
}
