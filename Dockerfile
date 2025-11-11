FROM n8nio/n8n:latest

# Run as root
USER root

# Set PH Timezone (tzdata is pre-installed)
ENV TZ=Asia/Manila
RUN ln -sf /usr/share/zoneinfo/Asia/Manila /etc/localtime && \
    echo "Asia/Manila" > /etc/timezone

# Start n8n using npx (guaranteed to exist)
CMD ["npx", "n8n", "start"]

EXPOSE 5678
