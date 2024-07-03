FROM elasticsearch:8.14.1

ENV ELASTIC_PASSWORD=elasticpass
ENV ES_JAVA_OPTS="-Xms750m -Xmx750m"

ENV node.name=elastic
ENV cluster.name=transcendance-cluster
ENV discovery.type=single-node
ENV bootstrap.memory_lock=false
ENV xpack.security.enabled=true
ENV xpack.security.http.ssl.enabled=true
ENV xpack.security.http.ssl.key=/usr/share/elasticsearch/config/certs/elastic/elastic.key
ENV xpack.security.http.ssl.certificate=/usr/share/elasticsearch/config/certs/elastic/elastic.crt
ENV xpack.security.http.ssl.certificate_authorities=/usr/share/elasticsearch/config/certs/ca/ca.crt
ENV xpack.security.transport.ssl.enabled=true
ENV xpack.security.transport.ssl.key=/usr/share/elasticsearch/config/certs/elastic/elastic.key
ENV xpack.security.transport.ssl.certificate=/usr/share/elasticsearch/config/certs/elastic/elastic.crt
ENV xpack.security.transport.ssl.certificate_authorities=/usr/share/elasticsearch/config/certs/ca/ca.crt
ENV xpack.security.transport.ssl.verification_mode=certificate
ENV xpack.license.self_generated.type=basic

USER root
COPY ./tools/setup.sh /usr/share/elasticsearch/setup.sh
RUN chmod +x /usr/share/elasticsearch/setup.sh
ENTRYPOINT ["/usr/share/elasticsearch/setup.sh"]