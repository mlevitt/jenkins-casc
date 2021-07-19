FROM jenkinsci/blueocean:1.24.7
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
# ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
# COPY casc.yaml /var/jenkins_home/casc.yaml
