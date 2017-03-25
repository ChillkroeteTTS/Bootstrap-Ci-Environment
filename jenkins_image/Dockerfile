FROM jenkins

USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && apt-get install -y docker.io \
      && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.ssh
ADD ./custom/id_rsa /root/.ssh/
ADD ./custom/id_rsa.pub /root/.ssh/
ADD ./custom/known_hosts /root/.ssh/
