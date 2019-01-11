#Build and push docker imagedocker build -t thanhphu/mqtt-collector .
docker build -t thanhphu/mqtt-haproxy .
docker push thanhphu/mqtt-haproxy