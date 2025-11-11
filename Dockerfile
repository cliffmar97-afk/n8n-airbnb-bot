FROM n8nio/n8n:latest
USER root

ENV TZ=Asia/Manila
RUN ln -sf /usr/share/zoneinfo/Asia/Manila /etc/localtime && \
    echo "Asia/Manila" > /etc/timezone

ENV PATH="/usr/local/bin:$PATH"
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

CMD ["n8n", "start"]

EXPOSE 5678
