ARG N8N_VERSION="0.234.0"

FROM n8nio/n8n:${N8N_VERSION}

USER root

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

EXPOSE 5000/tcp

CMD ["/entrypoint.sh"]
