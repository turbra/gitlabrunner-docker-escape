FROM ubuntu:18.04
COPY collect.sh /tmp/collect.sh
CMD ["/bin/bash", "/tmp/collect.sh"]
