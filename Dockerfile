FROM n8nio/n8n:latest

# Switch temporarily to root only to set timezone
USER root
ENV TZ=Asia/Manila
RUN ln -sf /usr/share/zoneinfo/Asia/Manila /etc/localtime && \
    echo "Asia/Manila" > /etc/timezone

# Go back to the default n8n user
USER node

# (optional) enforce secure config permissions
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

CMD ["n8n", "start"]

EXPOSE 5678
