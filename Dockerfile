# Use official Node image, not n8nio/n8n
FROM node:18-alpine

# Set timezone to Manila
ENV TZ=Asia/Manila
RUN apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Manila /etc/localtime \
    && echo "Asia/Manila" > /etc/timezone

# Create app directory
WORKDIR /app

# Install n8n globally
RUN npm install -g n8n

# Create n8n data directory
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node

# Switch to non-root user
USER node

# Expose n8n default port
EXPOSE 5678

# Enforce permissions and start n8n
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

CMD ["n8n", "start"]
