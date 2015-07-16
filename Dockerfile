FROM php:5.6-apache

ADD ./smart_agent.zip /data/

RUN apt-get update -q && \
    apt-get install -y zip && \
    unzip /data/smart_agent.zip -d /data/ && \ 
    ls -al /data && \
    cd /data/smart_agent && \
    chmod u+x ./*.sh ./plugins/*/*.sh && \
    ./plugins/SendProxy/SendProxy.sh start && \
    ./SmartAgent.sh start



