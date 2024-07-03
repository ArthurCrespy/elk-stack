#!/bin/bash
if [ ! -f config/certs/ca.zip ]; then
    bin/elasticsearch-certutil ca --silent --pem -out config/certs/ca.zip
    unzip config/certs/ca.zip -d config/certs
fi

if [ ! -f config/certs/certs.zip ]; then
    cat <<EOF > config/certs/instances.yml
instances:
  - name: elastic
    dns:
      - node
      - localhost
    ip:
      - 127.0.0.1
EOF
    bin/elasticsearch-certutil cert --silent --pem -out config/certs/certs.zip --in config/certs/instances.yml --ca-cert config/certs/ca/ca.crt --ca-key config/certs/ca/ca.key
    unzip config/certs/certs.zip -d config/certs
fi

chown -R root:root config/certs
find . -type d -exec chmod 750 {} \;
find . -type f -exec chmod 640 {} \;

until curl -s --cacert config/certs/ca/ca.crt https://elastic:9200 | grep -q "missing authentication credentials"; do
    sleep 30
done

until curl -s -X POST --cacert config/certs/ca/ca.crt -u "elastic:elasticpass" -H "Content-Type: application/json" https://elastic:9200/_security/user/kibana_system/_password -d "{\"password\":\"kibanapass\"}" | grep -q "^{}"; do
    sleep 10
done