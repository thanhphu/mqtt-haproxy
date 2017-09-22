FROM haproxy:1.5
LABEL maintainer="Thanh Phu <nvtphu@gmail.com>"

# VOLUME /certs:/certs

# Define working directory.
WORKDIR /etc/haproxy

# Add restart commands
ADD restart.bash haproxy-restart

# Add personalized configuration
ADD haproxy.cfg haproxy.cfg

# Expose ports.
EXPOSE 8080
# EXPOSE 443
EXPOSE 1883

# Define default command.
CMD ["bash", "haproxy-restart"]