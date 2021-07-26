FROM jenkinsci/blueocean:1.24.8
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY casc/ /usr/share/jenkins/ref/casc/
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc
