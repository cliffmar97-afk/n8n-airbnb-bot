FROM n8nio/n8n:latest

# Run as root (n8n supports it)
USER root

# Set PH Timezone
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Manila /etc/localtime && \
    echo "Asia/Manila" > /etc/timezone

# Find and use correct n8n binary path
CMD ["sh", "-c", "find / -name n8n | head -1 | xargs {} start"]

EXPOSE 5678
