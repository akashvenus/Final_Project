docker compose -f docker-compose.yml up -d --wait
docker compose exec broker /bin/sh -c "cd /opt/kafka/bin; ./kafka-topics.sh --create --topic ml-raw-dns --bootstrap-server localhost:9092"
docker compose exec broker /bin/sh -c "cd /opt/kafka/bin; ./kafka-topics.sh --create --topic ml-dns-predictions --bootstrap-server localhost:9092"
