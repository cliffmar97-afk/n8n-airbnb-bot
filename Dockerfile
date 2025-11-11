FROM n8nio/n8n:latest

# Run as root only for timezone setup
USER root
ENV TZ=Asia/Manila
RUN ln -sf /usr/share/zoneinfo/Asia/Manila /etc/localtime && \
    echo "Asia/Manila" > /etc/timezone

# Switch back to default user for n8n
USER node

# Enforce config file permissions
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Use the official n8n entrypoint script (don’t override it)
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["n8n", "start"]

EXPOSE 5678
