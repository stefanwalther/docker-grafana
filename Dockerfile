FROM grafana/grafana:4.3.2
MAINTAINER Stefan Walther <swrnixda@gmail.com>

RUN apt-get update && \
    apt-get install -y curl gettext-base && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

RUN rm -rf /var/lib/grafana/.init

ENTRYPOINT ["./entrypoint.sh"]
