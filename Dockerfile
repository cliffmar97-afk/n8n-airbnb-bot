FROM n8nio/n8n:latest

# Switch to root to install tzdata
USER root

# Install tzdata + set PH time
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Manila /etc/localtime && \
    echo "Asia/Manila" > /etc/timezone

# Switch back to node user (security)
USER node

EXPOSE 5678

CMD ["n8n", "start"]
