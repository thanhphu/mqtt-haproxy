FROM dockerfile/haproxy
LABEL maintainer="Thanh Phu <nvtphu@gmail.com>"

VOLUME /certs:/certs

# Add personalized configuration
ADD haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# Add restart commands
ADD restart.bash /haproxy-restart

# Define working directory.
WORKDIR /etc/haproxy

# Define default command.
CMD ["bash", "/haproxy-start"]

# Expose ports.
EXPOSE 8080
EXPOSE 443
EXPOSE 1883
