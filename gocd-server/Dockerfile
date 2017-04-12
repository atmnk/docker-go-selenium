FROM gocd/gocd-server:16.8.0
MAINTAINER anaik@thoughtworks.com

COPY cruise-config.xml /etc/go/cruise-config.xml
COPY fix-permissions.sh /etc/my_init.d/fix-permissions.sh

RUN chmod +x /etc/my_init.d/fix-permissions.sh