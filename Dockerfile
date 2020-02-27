FROM fedora
MAINTAINER http://fedoraproject.org/wiki/Cloud

RUN dnf -y update && dnf clean all
RUN dnf -y install fedora-packager @development-tools && dnf clean all
RUN dnf -y install wget && dnf clean all
RUN useradd -m jenkins && usermod -a -G mock jenkins

USER jenkins

