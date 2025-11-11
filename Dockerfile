FROM n8nio/n8n:latest

# Switch to root to install tzdata
USER root

# Install tzdata + set PH time
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Manila /etc/localtime && \
    echo "Asia/Manila" > /etc/timezone

# Fix n8n command by using full path
CMD ["/usr/local/bin/n8n", "start"]

EXPOSE 5678
