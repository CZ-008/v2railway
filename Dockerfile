FROM v2fly/v2fly-core:latest

COPY config.json /etc/v2ray/config.template.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
