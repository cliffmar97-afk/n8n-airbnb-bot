FROM n8nio/n8n:latest

# Run as root
USER root

# Set PH Timezone
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Manila /etc/localtime && \
    echo "Asia/Manila" > /etc/timezone

# Start n8n with full shell command
CMD ["/bin/sh", "-c", "n8n start"]

EXPOSE 5678
