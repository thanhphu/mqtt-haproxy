docker run --name haproxy -d -p 1884:1884 -v ~/Code/mqtt-haproxy:/usr/local/etc/haproxy:ro haproxy