FROM quay.io/strimzi/kafka:0.25.0-kafka-2.8.0
USER root:root

COPY ./confluentinc-kafka-connect-avro-converter-6.2.0/lib/ /opt/kafka/plugins/confluentinc-kafka-connect-avro-converter-6.2.0/
COPY ./confluentinc-kafka-connect-s3-10.0.1/ /opt/kafka/confluentinc-kafka-connect-s3-10.0.1/

USER 1001
