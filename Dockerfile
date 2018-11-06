FROM grafana/grafana:4.6.4
MAINTAINER Stefan Walther <swrnixda@gmail.com>

RUN apt-get update && \
    apt-get install -y curl gettext-base && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

# Todo: Just for debugging purposes, can be removed
# Make sure that the init flag is not there
RUN rm -rf /var/lib/grafana/.init

ENTRYPOINT ["./entrypoint.sh"]
