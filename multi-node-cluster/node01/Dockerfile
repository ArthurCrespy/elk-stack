FROM docker.elastic.co/elasticsearch/elasticsearch:8.14.1

ENV node.name=es01
ENV cluster.name=elk-docker
ENV cluster.initial_master_nodes=es01,es02,es03
ENV discovery.seed_hosts=es02,es03
ENV ELASTIC_PASSWORD=elasticpass
ENV bootstrap.memory_lock=false
ENV xpack.security.enabled=true
ENV xpack.security.http.ssl.enabled=true
ENV xpack.security.http.ssl.key=certs/es01/es01.key
ENV xpack.security.http.ssl.certificate=certs/es01/es01.crt
ENV xpack.security.http.ssl.certificate_authorities=certs/ca/ca.crt
ENV xpack.security.transport.ssl.enabled=true
ENV xpack.security.transport.ssl.key=certs/es01/es01.key
ENV xpack.security.transport.ssl.certificate=certs/es01/es01.crt
ENV xpack.security.transport.ssl.certificate_authorities=certs/ca/ca.crt
ENV xpack.security.transport.ssl.verification_mode=certificate
ENV xpack.license.self_generated.type=basic
ENV ES_JAVA_OPTS="-Xms750m -Xmx750m"
