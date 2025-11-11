FROM n8nio/n8n:latest
USER root
ENV TZ=Asia/Manila
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

RUN ln -sf /usr/share/zoneinfo/Asia/Manila /etc/localtime && \
    echo "Asia/Manila" > /etc/timezone

CMD ["n8n", "start"]
EXPOSE 5678
