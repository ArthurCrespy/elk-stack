FROM kibana:8.14.1

ENV SERVERNAME=kibana
ENV ELASTICSEARCH_HOSTS=https://elastic:9200
ENV ELASTICSEARCH_USERNAME=kibana_system
ENV ELASTICSEARCH_PASSWORD=kibanapass
ENV ELASTICSEARCH_SSL_CERTIFICATEAUTHORITIES=/usr/share/kibana/config/certs/ca/ca.crt

USER kibana

RUN chown -R kibana:kibana /usr/share/kibana/data
RUN chmod -R 777 /usr/share/kibana/data