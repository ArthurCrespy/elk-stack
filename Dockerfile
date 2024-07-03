FROM docker.elastic.co/elasticsearch/elasticsearch:8.14.1

USER root

COPY elk.sh /tmp/entry.sh
RUN chmod +x /tmp/entry.sh

ENTRYPOINT ["/tmp/entry.sh"]
