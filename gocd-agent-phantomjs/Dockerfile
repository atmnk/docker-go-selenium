# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED.
# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
FROM selenium/node-phantomjs
MAINTAINER anaik@thoughtworks.com

USER root

RUN apt-get update; apt-get install -y curl

ENV GOCD_VERSION=16.5.0-3305
ENV GOCD_AGENT_SHA1=90e1f9c7281c6cd7ddc384b831faeaf347331ab9
ENV GOCD_AGENT_URL=https://download.go.cd/binaries/${GOCD_VERSION}/deb/go-agent-${GOCD_VERSION}.deb


RUN set -x \
 # Download/Install/Cleanup Go Agent
 && curl -fSL "$GOCD_AGENT_URL" -o go-agent.deb \
 && echo "$GOCD_AGENT_SHA1 go-agent.deb" | sha1sum -c - \
 && dpkg -i --debug=10 go-agent.deb \
 && rm go-agent.deb

COPY autoregister.properties /var/lib/go-agent/config/autoregister.properties


RUN apt-get install -y git maven

RUN chmod -R 777 /var/log /var/lib /etc/default/go-agent /usr/share/go-agent
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository -y ppa:webupd8team/java \
    && apt-get update \
    && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
    && apt-get install -y oracle-java8-installer \
    && apt-get clean


#====================================
# Scripts to run Selenium Standalone
#====================================

COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh

COPY go_agent_config /etc/default/go-agent

USER seluser
EXPOSE 4444
